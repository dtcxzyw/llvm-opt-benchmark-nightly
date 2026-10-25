Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/group?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_group_get_mask:bb.a
  %vec.phi929.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph918 ], [ %i.ap, %vector.body920 ]
  %vec.phi930.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph918 ], [ %i.aq, %vector.body920 ]
  %vec.phi931.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph918 ], [ %i.ar, %vector.body920 ]
  %vec.phi932.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph918 ], [ %i.as, %vector.body920 ]
  %vec.phi933.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph918 ], [ %i.v, %vector.body920 ]
  %vec.phi934.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph918 ], [ %i.w, %vector.body920 ]
  %vec.phi935.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph918 ], [ %i.x, %vector.body920 ]
  %vec.phi936 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph918 ], [ %i.y, %vector.body920 ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index921 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load937.a = load <8 x i32>, ptr %i.r, align 4, !tbaa !78 ; 2 uses
  %wide.load938.a = load <8 x i32>, ptr %i.s, align 4, !tbaa !78 ; 2 uses
  %wide.load939.a = load <8 x i32>, ptr %i.t, align 4, !tbaa !78 ; 2 uses
  %wide.load940.a = load <8 x i32>, ptr %i.u, align 4, !tbaa !78 ; 2 uses
  %i.v = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi933.a, <8 x i32> %wide.load937.a) ; 2 uses
  %i.w = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi934.a, <8 x i32> %wide.load938.a) ; 2 uses
  %i.x = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi935.a, <8 x i32> %wide.load939.a) ; 2 uses
  %i.y = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi936, <8 x i32> %wide.load940.a) ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index921 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load941.a = load <8 x i32>, ptr %i.z, align 4, !tbaa !78 ; 2 uses
  %wide.load942.a = load <8 x i32>, ptr %i.aa, align 4, !tbaa !78 ; 2 uses
  %wide.load943.a = load <8 x i32>, ptr %i.ab, align 4, !tbaa !78 ; 2 uses
  %wide.load944.a = load <8 x i32>, ptr %i.ac, align 4, !tbaa !78 ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi925.a, <8 x i32> %wide.load941.a) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi926.a, <8 x i32> %wide.load942.a) ; 2 uses
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi927.a, <8 x i32> %wide.load943.a) ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi928.a, <8 x i32> %wide.load944.a) ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index921 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %wide.load945.a = load <8 x i32>, ptr %i.ah, align 4, !tbaa !78
  %wide.load946.a = load <8 x i32>, ptr %i.ai, align 4, !tbaa !78
  %wide.load947.a = load <8 x i32>, ptr %i.aj, align 4, !tbaa !78
  %wide.load948.a = load <8 x i32>, ptr %i.ak, align 4, !tbaa !78
  %i.al = add nsw <8 x i32> %wide.load945.a, %wide.load937.a
  %i.am = add nsw <8 x i32> %wide.load946.a, %wide.load938.a
  %i.an = add nsw <8 x i32> %wide.load947.a, %wide.load939.a
  %i.ao = add nsw <8 x i32> %wide.load948.a, %wide.load940.a
  %i.ap = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi929.a, <8 x i32> %i.al) ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi930.a, <8 x i32> %i.am) ; 2 uses
  %i.ar = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi931.a, <8 x i32> %i.an) ; 2 uses
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi932.a, <8 x i32> %i.ao) ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index921 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %wide.load949.a = load <8 x i32>, ptr %i.at, align 4, !tbaa !78
  %wide.load950.a = load <8 x i32>, ptr %i.au, align 4, !tbaa !78
  %wide.load951.a = load <8 x i32>, ptr %i.av, align 4, !tbaa !78
  %wide.load952 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !78
  %i.ax = add nsw <8 x i32> %wide.load949.a, %wide.load941.a
  %i.ay = add nsw <8 x i32> %wide.load950.a, %wide.load942.a
  %i.az = add nsw <8 x i32> %wide.load951.a, %wide.load943.a
  %i.ba = add nsw <8 x i32> %wide.load952, %wide.load944.a
  %i.bb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.ax) ; 2 uses
  %i.bc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi922.a, <8 x i32> %i.ay) ; 2 uses
  %i.bd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi923.a, <8 x i32> %i.az) ; 2 uses
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi924.a, <8 x i32> %i.ba) ; 2 uses
  %index.next953 = add nuw i64 %index921, 32      ; 2 uses
  %i.bf = icmp eq i64 %index.next953, %n.vec919
  br i1 %i.bf, label %middle.block954, label %vector.body920, !llvm.loop !128

middle.block954:                                  ; preds = %vector.body920
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bb, <8 x i32> %i.bc)
  %rdx.minmax955.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.bd)
  %rdx.minmax956.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax955.a, <8 x i32> %i.be)
  %i.bg = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax956.a) ; 3 uses
  %rdx.minmax957.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ae)
  %rdx.minmax958.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax957.a, <8 x i32> %i.af)
  %rdx.minmax959.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax958.a, <8 x i32> %i.ag)
  %i.bh = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax959.a) ; 3 uses
  %rdx.minmax960.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ap, <8 x i32> %i.aq)
  %rdx.minmax961.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax960.a, <8 x i32> %i.ar)
  %rdx.minmax962.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax961.a, <8 x i32> %i.as)
  %i.bi = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax962.a) ; 3 uses
  %rdx.minmax963.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.v, <8 x i32> %i.w)
  %rdx.minmax964.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax963.a, <8 x i32> %i.x)
  %rdx.minmax965 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax964.a, <8 x i32> %i.y)
  %i.bj = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax965) ; 3 uses
  %cmp.n966 = icmp eq i64 %n.vec919, %i.d
  br i1 %cmp.n966, label %.loopexit1170, label %vec.epilog.iter.check968

vec.epilog.iter.check968:                         ; preds = %middle.block954
  %min.epilog.iters.check970 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check970, label %.preheader500.preheader, label %vec.epilog.ph971, !prof !81

vec.epilog.ph971:                                 ; preds = %vector.main.loop.iter.check916, %vec.epilog.iter.check968
  %vec.epilog.resume.val972 = phi i64 [ %n.vec919, %vec.epilog.iter.check968 ], [ 0, %vector.main.loop.iter.check916 ]
  %bc.merge.rdx = phi i32 [ %i.bg, %vec.epilog.iter.check968 ], [ -2147483648, %vector.main.loop.iter.check916 ]
  %bc.merge.rdx973.a = phi i32 [ %i.bh, %vec.epilog.iter.check968 ], [ 2147483647, %vector.main.loop.iter.check916 ]
  %bc.merge.rdx974.a = phi i32 [ %i.bi, %vec.epilog.iter.check968 ], [ -2147483648, %vector.main.loop.iter.check916 ]
  %bc.merge.rdx975 = phi i32 [ %i.bj, %vec.epilog.iter.check968 ], [ 2147483647, %vector.main.loop.iter.check916 ]
  %broadcast.splatinsert986 = insertelement <4 x i32> poison, i32 %bc.merge.rdx975, i64 0
  %broadcast.splat987 = shufflevector <4 x i32> %broadcast.splatinsert986, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %bc.merge.rdx974.a, i64 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %bc.merge.rdx973.a, i64 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec976 = and i64 %i.d, 4294967292            ; 3 uses
  br label %vec.epilog.vector.body977

vec.epilog.vector.body977:                        ; preds = %vec.epilog.vector.body977, %vec.epilog.ph971
  %index978 = phi i64 [ %vec.epilog.resume.val972, %vec.epilog.ph971 ], [ %index.next993, %vec.epilog.vector.body977 ] ; 5 uses
  %vec.phi979 = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph971 ], [ %i.bt, %vec.epilog.vector.body977 ]
  %vec.phi982 = phi <4 x i32> [ %broadcast.splat981, %vec.epilog.ph971 ], [ %i.bn, %vec.epilog.vector.body977 ]
  %vec.phi985 = phi <4 x i32> [ %broadcast.splat984, %vec.epilog.ph971 ], [ %i.bq, %vec.epilog.vector.body977 ]
  %vec.phi988 = phi <4 x i32> [ %broadcast.splat987, %vec.epilog.ph971 ], [ %i.bl, %vec.epilog.vector.body977 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index978
  %wide.load989.a = load <4 x i32>, ptr %i.bk, align 4, !tbaa !78 ; 2 uses
  %i.bl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi988, <4 x i32> %wide.load989.a) ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index978
  %wide.load990.a = load <4 x i32>, ptr %i.bm, align 4, !tbaa !78 ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi982, <4 x i32> %wide.load990.a) ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index978
  %wide.load991.a = load <4 x i32>, ptr %i.bo, align 4, !tbaa !78
  %i.bp = add nsw <4 x i32> %wide.load991.a, %wide.load989.a
  %i.bq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi985, <4 x i32> %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index978
  %wide.load992 = load <4 x i32>, ptr %i.br, align 4, !tbaa !78
  %i.bs = add nsw <4 x i32> %wide.load992, %wide.load990.a
  %i.bt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi979, <4 x i32> %i.bs) ; 2 uses
  %index.next993 = add nuw i64 %index978, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next993, %n.vec976
  br i1 %i.bu, label %vec.epilog.middle.block994, label %vec.epilog.vector.body977, !llvm.loop !129

vec.epilog.middle.block994:                       ; preds = %vec.epilog.vector.body977
  %i.bv = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bt) ; 2 uses
  %i.bw = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bn) ; 2 uses
  %i.bx = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bq) ; 2 uses
  %i.by = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bl) ; 2 uses
  %cmp.n995 = icmp eq i64 %n.vec976, %i.d
  br i1 %cmp.n995, label %.loopexit1170, label %.preheader500.preheader

.preheader500.preheader:                          ; preds = %iter.check967, %vec.epilog.iter.check968, %vec.epilog.middle.block994
  %indvars.iv580.ph = phi i64 [ 0, %iter.check967 ], [ %n.vec919, %vec.epilog.iter.check968 ], [ %n.vec976, %vec.epilog.middle.block994 ]
  %.0430514.ph = phi i32 [ -2147483648, %iter.check967 ], [ %i.bg, %vec.epilog.iter.check968 ], [ %i.bv, %vec.epilog.middle.block994 ]
  %.0431513.ph = phi i32 [ 2147483647, %iter.check967 ], [ %i.bh, %vec.epilog.iter.check968 ], [ %i.bw, %vec.epilog.middle.block994 ]
  %.0432512.ph = phi i32 [ -2147483648, %iter.check967 ], [ %i.bi, %vec.epilog.iter.check968 ], [ %i.bx, %vec.epilog.middle.block994 ]
  %.0433511.ph = phi i32 [ 2147483647, %iter.check967 ], [ %i.bj, %vec.epilog.iter.check968 ], [ %i.by, %vec.epilog.middle.block994 ]
  br label %.preheader500

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 8 uses
  %.0434508 = phi ptr [ %.0434504, %.lr.ph ], [ %.0434, %bb.j ] ; 2 uses
  %.0435507 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.bz = load ptr, ptr %.0434508, align 8, !tbaa !16 ; 3 uses
  %i.ca = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2584
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !109
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !64
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
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !67 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %dt_masks_get_mask.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !187 ; 2 uses
  %.not12.i = icmp eq ptr %i.cn, null
  br i1 %.not12.i, label %dt_masks_get_mask.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = tail call i32 %i.cn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ce, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj) #11, !inline_history !130
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.d, %bb.e, %bb.f
  %.not471 = phi i32 [ %i.cq, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !76
  %i.ct = and i32 %i.cs, 4
  %.not468 = icmp eq i32 %i.ct, 0
  br i1 %.not468, label %bb.i, label %bb.g

bb.g:                                             ; preds = %dt_masks_get_mask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.cu = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #11 ; 0 uses
  %i.cv = load <2 x i64>, ptr %11, align 16, !tbaa !188
  %i.cw = add nsw <2 x i64> %i.cv, <i64 -1290608000, i64 0>
  %i.cx = sitofp <2 x i64> %i.cw to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %.val = load i32, ptr %i.n, align 4, !tbaa !189 ; 15 uses
  %.val474 = load i32, ptr %i.o, align 16, !tbaa !190 ; 6 uses
  %i.cy = sext i32 %.val474 to i64
  %i.cz = sext i32 %.val to i64                   ; 10 uses
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = mul i64 %i.da, %i.cy
  %i.dc = tail call ptr @dt_alloc_aligned(i64 noundef %i.db) #11 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dc, i64 64) ]
  %i.dd = load i32, ptr %i.cj, align 4, !tbaa !78 ; 4 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %.val474) ; 2 uses
  %i.de = icmp sgt i32 %..i, 0
  %i.df = icmp sgt i32 %.val, 0                   ; 2 uses
  %or.cond.i = and i1 %i.df, %i.de
  br i1 %or.cond.i, label %.preheader2.preheader.i, label %._crit_edge8.split.i

.preheader2.preheader.i:                          ; preds = %bb.g
  %wide.trip.count47.i = zext nneg i32 %..i to i64
  %wide.trip.count.i = zext nneg i32 %.val to i64 ; 6 uses
  %min.iters.check892 = icmp ult i32 %.val, 4
  %min.iters.check894 = icmp ult i32 %.val, 32
  %i.dg = and i64 %wide.trip.count.i, 28
  %n.vec896 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %cmp.n901 = icmp eq i64 %n.vec896, %wide.trip.count.i
  %min.epilog.iters.check905 = icmp eq i64 %i.dg, 0
  %n.vec908 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n913 = icmp eq i64 %n.vec908, %wide.trip.count.i
  br label %iter.check902

iter.check902:                                    ; preds = %._crit_edge.i, %.preheader2.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next45.i, %._crit_edge.i ] ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv44.i, %i.cz
  %i.di = getelementptr [4 x i8], ptr %i.dc, i64 %i.dh ; 3 uses
  br i1 %min.iters.check892, label %vec.epilog.scalar.ph904.preheader, label %vector.main.loop.iter.check893

vector.main.loop.iter.check893:                   ; preds = %iter.check902
  br i1 %min.iters.check894, label %vec.epilog.ph906, label %vector.body897

vector.body897:                                   ; preds = %vector.main.loop.iter.check893, %vector.body897
  %index898 = phi i64 [ %index.next899, %vector.body897 ], [ 0, %vector.main.loop.iter.check893 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %index898 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.dj, align 4, !tbaa !110
  store <8 x float> splat (float 1.000000e+00), ptr %i.dk, align 4, !tbaa !110
  store <8 x float> splat (float 1.000000e+00), ptr %i.dl, align 4, !tbaa !110
  store <8 x float> splat (float 1.000000e+00), ptr %i.dm, align 4, !tbaa !110
  %index.next899 = add nuw i64 %index898, 32      ; 2 uses
  %i.dn = icmp eq i64 %index.next899, %n.vec896
  br i1 %i.dn, label %middle.block900, label %vector.body897, !llvm.loop !131

middle.block900:                                  ; preds = %vector.body897
  br i1 %cmp.n901, label %._crit_edge.i, label %vec.epilog.iter.check903

vec.epilog.iter.check903:                         ; preds = %middle.block900
  br i1 %min.epilog.iters.check905, label %vec.epilog.scalar.ph904.preheader, label %vec.epilog.ph906, !prof !81

vec.epilog.ph906:                                 ; preds = %vector.main.loop.iter.check893, %vec.epilog.iter.check903
  %vec.epilog.resume.val907 = phi i64 [ %n.vec896, %vec.epilog.iter.check903 ], [ 0, %vector.main.loop.iter.check893 ]
  br label %vec.epilog.vector.body909

vec.epilog.vector.body909:                        ; preds = %vec.epilog.vector.body909, %vec.epilog.ph906
  %index910 = phi i64 [ %vec.epilog.resume.val907, %vec.epilog.ph906 ], [ %index.next911, %vec.epilog.vector.body909 ] ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.di, i64 %index910
  store <4 x float> splat (float 1.000000e+00), ptr %i.do, align 4, !tbaa !110
  %index.next911 = add nuw i64 %index910, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next911, %n.vec908
  br i1 %i.dp, label %vec.epilog.middle.block912, label %vec.epilog.vector.body909, !llvm.loop !132

vec.epilog.middle.block912:                       ; preds = %vec.epilog.vector.body909
  br i1 %cmp.n913, label %._crit_edge.i, label %vec.epilog.scalar.ph904.preheader

vec.epilog.scalar.ph904.preheader:                ; preds = %iter.check902, %vec.epilog.iter.check903, %vec.epilog.middle.block912
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check902 ], [ %n.vec896, %vec.epilog.iter.check903 ], [ %n.vec908, %vec.epilog.middle.block912 ]
  br label %vec.epilog.scalar.ph904

._crit_edge8.split.i:                             ; preds = %._crit_edge.i, %bb.g
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0) ; 5 uses
  %i.dq = load i32, ptr %i.ch, align 4, !tbaa !78
  %i.dr = add nsw i32 %i.dq, %i.dd                ; 2 uses
  %.108.i = tail call i32 @llvm.smin.i32(i32 %.val474, i32 %i.dr) ; 5 uses
  %i.ds = icmp slt i32 %spec.select.i, %.108.i
  br i1 %i.ds, label %.preheader1.lr.ph.i, label %._crit_edge22.i

.preheader1.lr.ph.i:                              ; preds = %._crit_edge8.split.i
  %i.dt = load i32, ptr %i.ci, align 4, !tbaa !78 ; 4 uses
  %.110.i = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %.val) ; 10 uses
  %i.du = icmp sgt i32 %.110.i, 0                 ; 2 uses
  %spec.select111.i = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0) ; 2 uses
  %i.dv = load i32, ptr %i.cg, align 4, !tbaa !78 ; 3 uses
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 2 uses
  %.112.i = tail call i32 @llvm.smin.i32(i32 %.val, i32 %i.dw) ; 2 uses
  %i.dx = icmp slt i32 %spec.select111.i, %.112.i
  %i.dy = sext i32 %i.dd to i64                   ; 3 uses
  %i.dz = sext i32 %i.dv to i64                   ; 3 uses
  %i.ea = sext i32 %i.dt to i64                   ; 2 uses
  %spec.select113.i = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0) ; 4 uses
  %i.eb = icmp slt i32 %spec.select113.i, %.val   ; 3 uses
  br i1 %i.dx, label %.preheader1.lr.ph.split.us.i, label %.preheader1.lr.ph.split.i

.preheader1.lr.ph.split.us.i:                     ; preds = %.preheader1.lr.ph.i
  %i.ec = load ptr, ptr %i.cf, align 8, !tbaa !191 ; 3 uses
  %i.ed = zext nneg i32 %spec.select111.i to i64  ; 7 uses
  %i.ee = zext nneg i32 %spec.select113.i to i64  ; 6 uses
  %i.ef = zext nneg i32 %spec.select.i to i64     ; 5 uses
  %wide.trip.count102.i = zext i32 %.108.i to i64 ; 3 uses
  %wide.trip.count87.i = zext i32 %.110.i to i64  ; 6 uses
  %wide.trip.count92.i = zext nneg i32 %.112.i to i64 ; 6 uses
  %wide.trip.count97.i = zext i32 %.val to i64    ; 2 uses
  %i.eg = sub nsw i64 %wide.trip.count97.i, %i.ee ; 7 uses
  %i.eh = shl nsw i64 %i.cz, 2
  %i.ei = mul i64 %i.eh, %i.ef
  %i.ej = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dc, i64 %i.ei
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.ej
  %i.el = xor i64 %i.ef, -1
  %i.em = add nsw i64 %i.el, %wide.trip.count102.i
  %i.en = shl nsw i64 %i.em, 2
  %i.eo = mul i64 %i.en, %i.cz
  %i.ep = mul nsw i64 %i.cz, %i.ef
  %i.eq = add i64 %i.ep, %wide.trip.count92.i
  %i.er = shl i64 %i.eq, 2
  %i.es = getelementptr i8, ptr %i.dc, i64 %i.eo
  %scevgep746 = getelementptr i8, ptr %i.es, i64 %i.er
  %i.et = sub nsw i64 %i.ef, %i.dy
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = mul i64 %i.eu, %i.dz
  %i.ew = add i64 %i.ev, %i.ej
  %i.ex = shl nsw i64 %i.ea, 2                    ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %scevgep747 = getelementptr i8, ptr %i.ec, i64 %i.ey
  %i.ez = shl nuw nsw i64 %wide.trip.count102.i, 2
  %i.fa = add nsw i64 %i.ez, -4
  %i.fb = shl nsw i64 %i.dy, 2
  %i.fc = sub nsw i64 %i.fa, %i.fb
  %i.fd = mul i64 %i.fc, %i.dz
  %i.fe = shl nuw nsw i64 %wide.trip.count92.i, 2
  %i.ff = add i64 %i.fd, %i.fe
  %i.fg = sub i64 %i.ff, %i.ex
  %scevgep748 = getelementptr i8, ptr %i.ec, i64 %i.fg
  %i.fh = sub nsw i64 %wide.trip.count92.i, %i.ed ; 7 uses
  %min.iters.check777 = icmp ult i32 %.110.i, 4
  %min.iters.check779 = icmp ult i32 %.110.i, 32
  %i.fi = and i64 %wide.trip.count87.i, 28
  %n.vec781 = and i64 %wide.trip.count87.i, 2147483616 ; 4 uses
  %cmp.n786 = icmp eq i64 %n.vec781, %wide.trip.count87.i
  %min.epilog.iters.check790 = icmp eq i64 %i.fi, 0
  %n.vec793 = and i64 %wide.trip.count87.i, 2147483644 ; 3 uses
  %cmp.n798 = icmp eq i64 %n.vec793, %wide.trip.count87.i
  %min.iters.check750 = icmp ult i64 %i.fh, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep748
  %bound1 = icmp ult ptr %scevgep747, %scevgep746
  %found.conflict = and i1 %bound0, %bound1
  %i.fj = icmp slt i32 %i.dv, 0
  %i.fk = or i1 %found.conflict, %i.fj
  %min.iters.check752 = icmp ult i64 %i.fh, 32
  %i.fl = and i64 %i.fh, 24
  %n.vec754 = and i64 %i.fh, -32                  ; 4 uses
  %i.fm = add nsw i64 %n.vec754, %i.ed
  %cmp.n762 = icmp eq i64 %i.fh, %n.vec754
  %min.epilog.iters.check766 = icmp eq i64 %i.fl, 0
  %n.vec769 = and i64 %i.fh, -8                   ; 3 uses
  %i.fn = add nsw i64 %n.vec769, %i.ed
  %cmp.n775 = icmp eq i64 %i.fh, %n.vec769
  %min.iters.check723 = icmp ult i64 %i.eg, 8
  %min.iters.check725 = icmp ult i64 %i.eg, 32
  %i.fo = and i64 %i.eg, 24
  %n.vec727 = and i64 %i.eg, -32                  ; 4 uses
  %i.fp = add nsw i64 %n.vec727, %i.ee
  %cmp.n732 = icmp eq i64 %i.eg, %n.vec727
  %min.epilog.iters.check736 = icmp eq i64 %i.fo, 0
  %n.vec739 = and i64 %i.eg, -8                   ; 3 uses
  %i.fq = add nsw i64 %n.vec739, %i.ee
  %cmp.n744 = icmp eq i64 %i.eg, %n.vec739
  br label %.preheader1.us.i

.preheader1.us.i:                                 ; preds = %._crit_edge20.us.i, %.preheader1.lr.ph.split.us.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %._crit_edge20.us.i ], [ %i.ef, %.preheader1.lr.ph.split.us.i ] ; 3 uses
  %i.fr = mul nuw nsw i64 %indvars.iv99.i, %i.cz  ; 2 uses
  br i1 %i.du, label %iter.check787, label %iter.check763

vec.epilog.scalar.ph789:                          ; preds = %vec.epilog.scalar.ph789.preheader, %vec.epilog.scalar.ph789
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %vec.epilog.scalar.ph789 ], [ %indvars.iv84.i.ph, %vec.epilog.scalar.ph789.preheader ] ; 2 uses
  %i.fs = getelementptr [4 x i8], ptr %i.ie, i64 %indvars.iv84.i
  store float 1.000000e+00, ptr %i.fs, align 4, !tbaa !110
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %iter.check763, label %vec.epilog.scalar.ph789, !llvm.loop !133

iter.check763:                                    ; preds = %vec.epilog.scalar.ph789, %middle.block785, %vec.epilog.middle.block797, %.preheader1.us.i
  %i.ft = sub nsw i64 %indvars.iv99.i, %i.dy
  %i.fu = mul nuw nsw i64 %i.ft, %i.dz
  %invariant.op.us.i = sub i64 %i.fu, %i.ea
  %i.fv = getelementptr [4 x i8], ptr %i.dc, i64 %i.fr ; 14 uses
  %i.fw = getelementptr [4 x i8], ptr %i.ec, i64 %invariant.op.us.i ; 11 uses
  %brmerge = select i1 %min.iters.check750, i1 true, i1 %i.fk
  br i1 %brmerge, label %vec.epilog.scalar.ph765.preheader, label %vector.main.loop.iter.check751

vector.main.loop.iter.check751:                   ; preds = %iter.check763
  br i1 %min.iters.check752, label %vec.epilog.ph767, label %vector.body755

vector.body755:                                   ; preds = %vector.main.loop.iter.check751, %vector.body755
  %index756 = phi i64 [ %index.next760, %vector.body755 ], [ 0, %vector.main.loop.iter.check751 ] ; 2 uses
  %i.fx = add nuw i64 %index756, %i.ed            ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %i.fw, i64 %i.fx ; 4 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 32
  %i.ga = getelementptr i8, ptr %i.fy, i64 64
  %i.gb = getelementptr i8, ptr %i.fy, i64 96
  %wide.load = load <8 x float>, ptr %i.fy, align 4, !tbaa !110, !alias.scope !192
  %wide.load757.a = load <8 x float>, ptr %i.fz, align 4, !tbaa !110, !alias.scope !192
  %wide.load758.a = load <8 x float>, ptr %i.ga, align 4, !tbaa !110, !alias.scope !192
  %wide.load759 = load <8 x float>, ptr %i.gb, align 4, !tbaa !110, !alias.scope !192
  %i.gc = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load
  %i.gd = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load757.a
  %i.ge = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load758.a
  %i.gf = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load759
  %i.gg = getelementptr [4 x i8], ptr %i.fv, i64 %i.fx ; 4 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 32
  %i.gi = getelementptr i8, ptr %i.gg, i64 64
  %i.gj = getelementptr i8, ptr %i.gg, i64 96
  store <8 x float> %i.gc, ptr %i.gg, align 4, !tbaa !110, !alias.scope !193, !noalias !192
  store <8 x float> %i.gd, ptr %i.gh, align 4, !tbaa !110, !alias.scope !193, !noalias !192
  store <8 x float> %i.ge, ptr %i.gi, align 4, !tbaa !110, !alias.scope !193, !noalias !192
  store <8 x float> %i.gf, ptr %i.gj, align 4, !tbaa !110, !alias.scope !193, !noalias !192
  %index.next760 = add nuw i64 %index756, 32      ; 2 uses
  %i.gk = icmp eq i64 %index.next760, %n.vec754
  br i1 %i.gk, label %middle.block761, label %vector.body755, !llvm.loop !137

middle.block761:                                  ; preds = %vector.body755
  br i1 %cmp.n762, label %._crit_edge15.us.i, label %vec.epilog.iter.check764

vec.epilog.iter.check764:                         ; preds = %middle.block761
  br i1 %min.epilog.iters.check766, label %vec.epilog.scalar.ph765.preheader, label %vec.epilog.ph767, !prof !111

vec.epilog.ph767:                                 ; preds = %vector.main.loop.iter.check751, %vec.epilog.iter.check764
  %vec.epilog.resume.val768 = phi i64 [ %n.vec754, %vec.epilog.iter.check764 ], [ 0, %vector.main.loop.iter.check751 ]
  br label %vec.epilog.vector.body770

vec.epilog.vector.body770:                        ; preds = %vec.epilog.vector.body770, %vec.epilog.ph767
  %index771 = phi i64 [ %vec.epilog.resume.val768, %vec.epilog.ph767 ], [ %index.next773, %vec.epilog.vector.body770 ] ; 2 uses
  %i.gl = add nuw i64 %index771, %i.ed            ; 2 uses
  %i.gm = getelementptr [4 x i8], ptr %i.fw, i64 %i.gl
  %wide.load772 = load <8 x float>, ptr %i.gm, align 4, !tbaa !110, !alias.scope !192
  %i.gn = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load772
  %i.go = getelementptr [4 x i8], ptr %i.fv, i64 %i.gl
  store <8 x float> %i.gn, ptr %i.go, align 4, !tbaa !110, !alias.scope !193, !noalias !192
  %index.next773 = add nuw i64 %index771, 8       ; 2 uses
  %i.gp = icmp eq i64 %index.next773, %n.vec769
  br i1 %i.gp, label %vec.epilog.middle.block774, label %vec.epilog.vector.body770, !llvm.loop !138

vec.epilog.middle.block774:                       ; preds = %vec.epilog.vector.body770
  br i1 %cmp.n775, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph765.preheader

vec.epilog.scalar.ph765.preheader:                ; preds = %iter.check763, %vec.epilog.iter.check764, %vec.epilog.middle.block774
  %indvars.iv89.i.ph = phi i64 [ %i.ed, %iter.check763 ], [ %i.fn, %vec.epilog.middle.block774 ], [ %i.fm, %vec.epilog.iter.check764 ] ; 4 uses
  %i.gq = sub nsw i64 %wide.trip.count92.i, %indvars.iv89.i.ph
  %xtraiter = and i64 %i.gq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph765.prol.loopexit, label %vec.epilog.scalar.ph765.prol

vec.epilog.scalar.ph765.prol:                     ; preds = %vec.epilog.scalar.ph765.preheader, %vec.epilog.scalar.ph765.prol
  %indvars.iv89.i.prol = phi i64 [ %indvars.iv.next90.i.prol, %vec.epilog.scalar.ph765.prol ], [ %indvars.iv89.i.ph, %vec.epilog.scalar.ph765.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph765.prol ], [ 0, %vec.epilog.scalar.ph765.preheader ]
  %i.gr = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv89.i.prol
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !110
  %i.gt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gs
  %i.gu = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv89.i.prol
  store float %i.gt, ptr %i.gu, align 4, !tbaa !110
  %indvars.iv.next90.i.prol = add nuw nsw i64 %indvars.iv89.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph765.prol.loopexit, label %vec.epilog.scalar.ph765.prol, !llvm.loop !139

vec.epilog.scalar.ph765.prol.loopexit:            ; preds = %vec.epilog.scalar.ph765.prol, %vec.epilog.scalar.ph765.preheader
  %indvars.iv89.i.unr = phi i64 [ %indvars.iv89.i.ph, %vec.epilog.scalar.ph765.preheader ], [ %indvars.iv.next90.i.prol, %vec.epilog.scalar.ph765.prol ]
  %i.gv = sub nsw i64 %indvars.iv89.i.ph, %wide.trip.count92.i
  %i.gw = icmp ugt i64 %i.gv, -8
  br i1 %i.gw, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph765

vec.epilog.scalar.ph765:                          ; preds = %vec.epilog.scalar.ph765.prol.loopexit, %vec.epilog.scalar.ph765
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i.7, %vec.epilog.scalar.ph765 ], [ %indvars.iv89.i.unr, %vec.epilog.scalar.ph765.prol.loopexit ] ; 10 uses
  %i.gx = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv89.i
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !110
  %i.gz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gy
  %i.ha = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv89.i
  store float %i.gz, ptr %i.ha, align 4, !tbaa !110
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.hb = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !110
  %i.hd = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hc
  %i.he = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i
  store float %i.hd, ptr %i.he, align 4, !tbaa !110
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.1
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !110
  %i.hh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hg
  %i.hi = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.1
  store float %i.hh, ptr %i.hi, align 4, !tbaa !110
  %indvars.iv.next90.i.2 = add nuw nsw i64 %indvars.iv89.i, 3 ; 2 uses
  %i.hj = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.2
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !110
  %i.hl = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hk
  %i.hm = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.2
  store float %i.hl, ptr %i.hm, align 4, !tbaa !110
  %indvars.iv.next90.i.3 = add nuw nsw i64 %indvars.iv89.i, 4 ; 2 uses
  %i.hn = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.3
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !110
  %i.hp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ho
  %i.hq = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.3
  store float %i.hp, ptr %i.hq, align 4, !tbaa !110
  %indvars.iv.next90.i.4 = add nuw nsw i64 %indvars.iv89.i, 5 ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.4
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !110
  %i.ht = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  %i.hu = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.4
  store float %i.ht, ptr %i.hu, align 4, !tbaa !110
  %indvars.iv.next90.i.5 = add nuw nsw i64 %indvars.iv89.i, 6 ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.5
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !110
  %i.hx = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hw
  %i.hy = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.5
  store float %i.hx, ptr %i.hy, align 4, !tbaa !110
  %indvars.iv.next90.i.6 = add nuw nsw i64 %indvars.iv89.i, 7 ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.6
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !110
  %i.ib = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ia
  %i.ic = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv.next90.i.6
  store float %i.ib, ptr %i.ic, align 4, !tbaa !110
  %indvars.iv.next90.i.7 = add nuw nsw i64 %indvars.iv89.i, 8 ; 2 uses
  %exitcond93.not.i.7 = icmp eq i64 %indvars.iv.next90.i.7, %wide.trip.count92.i
  br i1 %exitcond93.not.i.7, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph765, !llvm.loop !140

.lr.ph19.us.i:                                    ; preds = %.lr.ph19.us.i.preheader, %.lr.ph19.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %.lr.ph19.us.i ], [ %indvars.iv94.i.ph, %.lr.ph19.us.i.preheader ] ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.fv, i64 %indvars.iv94.i
  store float 1.000000e+00, ptr %i.id, align 4, !tbaa !110
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge20.us.i, label %.lr.ph19.us.i, !llvm.loop !141

._crit_edge20.us.i:                               ; preds = %.lr.ph19.us.i, %middle.block731, %vec.epilog.middle.block743, %._crit_edge15.us.i
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next100.i, %wide.trip.count102.i
  br i1 %exitcond103.not.i, label %._crit_edge22.i, label %.preheader1.us.i

iter.check787:                                    ; preds = %.preheader1.us.i
  %i.ie = getelementptr [4 x i8], ptr %i.dc, i64 %i.fr ; 3 uses
  br i1 %min.iters.check777, label %vec.epilog.scalar.ph789.preheader, label %vector.main.loop.iter.check778

vector.main.loop.iter.check778:                   ; preds = %iter.check787
  br i1 %min.iters.check779, label %vec.epilog.ph791, label %vector.body782

vector.body782:                                   ; preds = %vector.main.loop.iter.check778, %vector.body782
  %index783 = phi i64 [ %index.next784, %vector.body782 ], [ 0, %vector.main.loop.iter.check778 ] ; 2 uses
end_hunk_0
