Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/group?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_group_setup_mouse_actions:bb.a
}

; Function Attrs: nounwind uwtable
define internal void @_group_duplicate_points(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %.017 = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not18 = icmp eq ptr %.017, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi ptr [ %.017, %.lr.ph ], [ %.0, %bb.b ] ; 2 uses
  %i.b = load ptr, ptr %.019, align 8, !tbaa !16  ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #12 ; 5 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !64
  %i.e = tail call i32 @dt_masks_form_duplicate(ptr noundef %0, i32 noundef %i.d) #11
  store i32 %i.e, ptr %i.c, align 4, !tbaa !64
  %i.f = load i32, ptr %i.a, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.i, ptr %i.j, align 4, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float %i.l, ptr %i.m, align 4, !tbaa !77
  %i.n = load ptr, ptr %2, align 8, !tbaa !69
  %i.o = tail call ptr @g_list_append(ptr noundef %i.n, ptr noundef nonnull %i.c) #11
  store ptr %i.o, ptr %2, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %.0 = load ptr, ptr %i.p, align 8, !tbaa !14    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_group_get_mask(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 16          ; 4 uses
  %11 = alloca %struct.timeval, align 16          ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  %i.b = tail call i32 @g_list_length(ptr noundef %i.a) #11 ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %i.b to i64                     ; 11 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 8) #13 ; 9 uses
  %i.f = shl nuw nsw i64 %i.d, 2                  ; 6 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 11 uses
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 4 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.f) #12 ; 8 uses
  %.0434504 = load ptr, ptr %2, align 8, !tbaa !14 ; 2 uses
  %.not505 = icmp eq ptr %.0434504, null
  br i1 %.not505, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr i8, ptr %1, i64 108
  %i.o = getelementptr i8, ptr %1, i64 112
  br label %bb.c

._crit_edge:                                      ; preds = %bb.j
  %i.p = icmp eq i32 %.1, 0
  br i1 %i.p, label %._crit_edge.thread, label %iter.check975

iter.check975:                                    ; preds = %._crit_edge
  %min.iters.check919 = icmp ult i32 %i.b, 4
  br i1 %min.iters.check919, label %.preheader500.preheader, label %vector.main.loop.iter.check920

vector.main.loop.iter.check920:                   ; preds = %iter.check975
  %min.iters.check921 = icmp ult i32 %i.b, 32
  br i1 %min.iters.check921, label %vec.epilog.ph979, label %vector.ph922

vector.ph922:                                     ; preds = %vector.main.loop.iter.check920
  %i.q = and i64 %i.d, 28
  %n.vec923 = and i64 %i.d, 4294967264            ; 4 uses
  br label %vector.body924

vector.body924:                                   ; preds = %vector.ph922, %vector.body924
  %index925 = phi i64 [ 0, %vector.ph922 ], [ %index.next957, %vector.body924 ] ; 5 uses
  %vec.phi = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.bb, %vector.body924 ]
  %vec.phi926.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.bc, %vector.body924 ]
  %vec.phi927.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.bd, %vector.body924 ]
  %vec.phi928.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.be, %vector.body924 ]
  %vec.phi929.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.ad, %vector.body924 ]
  %vec.phi930.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.ae, %vector.body924 ]
  %vec.phi931.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.af, %vector.body924 ]
  %vec.phi932.a = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.ag, %vector.body924 ]
  %vec.phi933.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.ap, %vector.body924 ]
  %vec.phi934.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.aq, %vector.body924 ]
  %vec.phi935.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.ar, %vector.body924 ]
  %vec.phi936.a = phi <8 x i32> [ splat (i32 -2147483648), %vector.ph922 ], [ %i.as, %vector.body924 ]
  %vec.phi937 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.v, %vector.body924 ]
  %vec.phi938 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.w, %vector.body924 ]
  %vec.phi939 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.x, %vector.body924 ]
  %vec.phi940 = phi <8 x i32> [ splat (i32 2147483647), %vector.ph922 ], [ %i.y, %vector.body924 ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index925 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %wide.load941.a = load <8 x i32>, ptr %i.r, align 4, !tbaa !78 ; 2 uses
  %wide.load942.a = load <8 x i32>, ptr %i.s, align 4, !tbaa !78 ; 2 uses
  %wide.load943.a = load <8 x i32>, ptr %i.t, align 4, !tbaa !78 ; 2 uses
  %wide.load944.a = load <8 x i32>, ptr %i.u, align 4, !tbaa !78 ; 2 uses
  %i.v = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi937, <8 x i32> %wide.load941.a) ; 2 uses
  %i.w = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi938, <8 x i32> %wide.load942.a) ; 2 uses
  %i.x = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi939, <8 x i32> %wide.load943.a) ; 2 uses
  %i.y = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi940, <8 x i32> %wide.load944.a) ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index925 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load945.a = load <8 x i32>, ptr %i.z, align 4, !tbaa !78 ; 2 uses
  %wide.load946.a = load <8 x i32>, ptr %i.aa, align 4, !tbaa !78 ; 2 uses
  %wide.load947.a = load <8 x i32>, ptr %i.ab, align 4, !tbaa !78 ; 2 uses
  %wide.load948.a = load <8 x i32>, ptr %i.ac, align 4, !tbaa !78 ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi929.a, <8 x i32> %wide.load945.a) ; 2 uses
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi930.a, <8 x i32> %wide.load946.a) ; 2 uses
  %i.af = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi931.a, <8 x i32> %wide.load947.a) ; 2 uses
  %i.ag = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %vec.phi932.a, <8 x i32> %wide.load948.a) ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index925 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %wide.load949.a = load <8 x i32>, ptr %i.ah, align 4, !tbaa !78
  %wide.load950.a = load <8 x i32>, ptr %i.ai, align 4, !tbaa !78
  %wide.load951.a = load <8 x i32>, ptr %i.aj, align 4, !tbaa !78
  %wide.load952.a = load <8 x i32>, ptr %i.ak, align 4, !tbaa !78
  %i.al = add nsw <8 x i32> %wide.load949.a, %wide.load941.a
  %i.am = add nsw <8 x i32> %wide.load950.a, %wide.load942.a
  %i.an = add nsw <8 x i32> %wide.load951.a, %wide.load943.a
  %i.ao = add nsw <8 x i32> %wide.load952.a, %wide.load944.a
  %i.ap = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi933.a, <8 x i32> %i.al) ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi934.a, <8 x i32> %i.am) ; 2 uses
  %i.ar = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi935.a, <8 x i32> %i.an) ; 2 uses
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi936.a, <8 x i32> %i.ao) ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index925 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %wide.load953 = load <8 x i32>, ptr %i.at, align 4, !tbaa !78
  %wide.load954 = load <8 x i32>, ptr %i.au, align 4, !tbaa !78
  %wide.load955 = load <8 x i32>, ptr %i.av, align 4, !tbaa !78
  %wide.load956 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !78
  %i.ax = add nsw <8 x i32> %wide.load953, %wide.load945.a
  %i.ay = add nsw <8 x i32> %wide.load954, %wide.load946.a
  %i.az = add nsw <8 x i32> %wide.load955, %wide.load947.a
  %i.ba = add nsw <8 x i32> %wide.load956, %wide.load948.a
  %i.bb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.ax) ; 2 uses
  %i.bc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi926.a, <8 x i32> %i.ay) ; 2 uses
  %i.bd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi927.a, <8 x i32> %i.az) ; 2 uses
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi928.a, <8 x i32> %i.ba) ; 2 uses
  %index.next957 = add nuw i64 %index925, 32      ; 2 uses
  %i.bf = icmp eq i64 %index.next957, %n.vec923
  br i1 %i.bf, label %middle.block958, label %vector.body924, !llvm.loop !128

middle.block958:                                  ; preds = %vector.body924
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bb, <8 x i32> %i.bc)
  %rdx.minmax959.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.bd)
  %rdx.minmax960.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax959.a, <8 x i32> %i.be)
  %i.bg = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax960.a) ; 3 uses
  %rdx.minmax961.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ad, <8 x i32> %i.ae)
  %rdx.minmax962.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax961.a, <8 x i32> %i.af)
  %rdx.minmax963.a = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax962.a, <8 x i32> %i.ag)
  %i.bh = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax963.a) ; 3 uses
  %rdx.minmax964.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ap, <8 x i32> %i.aq)
  %rdx.minmax965.a = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax964.a, <8 x i32> %i.ar)
  %rdx.minmax966 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax965.a, <8 x i32> %i.as)
  %i.bi = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax966) ; 3 uses
  %rdx.minmax967 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.v, <8 x i32> %i.w)
  %rdx.minmax968 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax967, <8 x i32> %i.x)
  %rdx.minmax969 = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax968, <8 x i32> %i.y)
  %i.bj = tail call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax969) ; 3 uses
  %cmp.n970 = icmp eq i64 %n.vec923, %i.d
  br i1 %cmp.n970, label %.loopexit1174, label %vec.epilog.iter.check977

vec.epilog.iter.check977:                         ; preds = %middle.block958
  %min.epilog.iters.check978 = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check978, label %.preheader500.preheader, label %vec.epilog.ph979, !prof !81

vec.epilog.ph979:                                 ; preds = %vector.main.loop.iter.check920, %vec.epilog.iter.check977
  %vec.epilog.resume.val971 = phi i64 [ %n.vec923, %vec.epilog.iter.check977 ], [ 0, %vector.main.loop.iter.check920 ]
  %bc.merge.rdx = phi i32 [ %i.bg, %vec.epilog.iter.check977 ], [ -2147483648, %vector.main.loop.iter.check920 ]
  %bc.merge.rdx972 = phi i32 [ %i.bh, %vec.epilog.iter.check977 ], [ 2147483647, %vector.main.loop.iter.check920 ]
  %bc.merge.rdx973 = phi i32 [ %i.bi, %vec.epilog.iter.check977 ], [ -2147483648, %vector.main.loop.iter.check920 ]
  %bc.merge.rdx974 = phi i32 [ %i.bj, %vec.epilog.iter.check977 ], [ 2147483647, %vector.main.loop.iter.check920 ]
  %n.vec980 = and i64 %i.d, 4294967292            ; 3 uses
  %broadcast.splatinsert.a = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat.a = shufflevector <4 x i32> %broadcast.splatinsert.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert981 = insertelement <4 x i32> poison, i32 %bc.merge.rdx972, i64 0
  %broadcast.splat982 = shufflevector <4 x i32> %broadcast.splatinsert981, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert983 = insertelement <4 x i32> poison, i32 %bc.merge.rdx973, i64 0
  %broadcast.splat984 = shufflevector <4 x i32> %broadcast.splatinsert983, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert985 = insertelement <4 x i32> poison, i32 %bc.merge.rdx974, i64 0
  %broadcast.splat986 = shufflevector <4 x i32> %broadcast.splatinsert985, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body987

vec.epilog.vector.body987:                        ; preds = %vec.epilog.vector.body987, %vec.epilog.ph979
  %index988 = phi i64 [ %vec.epilog.resume.val971, %vec.epilog.ph979 ], [ %index.next997, %vec.epilog.vector.body987 ] ; 5 uses
  %vec.phi989 = phi <4 x i32> [ %broadcast.splat.a, %vec.epilog.ph979 ], [ %i.bt, %vec.epilog.vector.body987 ]
  %vec.phi990 = phi <4 x i32> [ %broadcast.splat982, %vec.epilog.ph979 ], [ %i.bn, %vec.epilog.vector.body987 ]
  %vec.phi991 = phi <4 x i32> [ %broadcast.splat984, %vec.epilog.ph979 ], [ %i.bq, %vec.epilog.vector.body987 ]
  %vec.phi992 = phi <4 x i32> [ %broadcast.splat986, %vec.epilog.ph979 ], [ %i.bl, %vec.epilog.vector.body987 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index988
  %wide.load993 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !78 ; 2 uses
  %i.bl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi992, <4 x i32> %wide.load993) ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index988
  %wide.load994 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !78 ; 2 uses
  %i.bn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi990, <4 x i32> %wide.load994) ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index988
  %wide.load995 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !78
  %i.bp = add nsw <4 x i32> %wide.load995, %wide.load993
  %i.bq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi991, <4 x i32> %i.bp) ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index988
  %wide.load996 = load <4 x i32>, ptr %i.br, align 4, !tbaa !78
  %i.bs = add nsw <4 x i32> %wide.load996, %wide.load994
  %i.bt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi989, <4 x i32> %i.bs) ; 2 uses
  %index.next997 = add nuw i64 %index988, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next997, %n.vec980
  br i1 %i.bu, label %vec.epilog.middle.block998, label %vec.epilog.vector.body987, !llvm.loop !129

vec.epilog.middle.block998:                       ; preds = %vec.epilog.vector.body987
  %i.bv = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bt) ; 2 uses
  %i.bw = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bn) ; 2 uses
  %i.bx = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bq) ; 2 uses
  %i.by = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.bl) ; 2 uses
  %cmp.n999 = icmp eq i64 %n.vec980, %i.d
  br i1 %cmp.n999, label %.loopexit1174, label %.preheader500.preheader

.preheader500.preheader:                          ; preds = %iter.check975, %vec.epilog.iter.check977, %vec.epilog.middle.block998
  %indvars.iv580.ph = phi i64 [ 0, %iter.check975 ], [ %n.vec923, %vec.epilog.iter.check977 ], [ %n.vec980, %vec.epilog.middle.block998 ]
  %.0430514.ph = phi i32 [ -2147483648, %iter.check975 ], [ %i.bg, %vec.epilog.iter.check977 ], [ %i.bv, %vec.epilog.middle.block998 ]
  %.0431513.ph = phi i32 [ 2147483647, %iter.check975 ], [ %i.bh, %vec.epilog.iter.check977 ], [ %i.bw, %vec.epilog.middle.block998 ]
  %.0432512.ph = phi i32 [ -2147483648, %iter.check975 ], [ %i.bi, %vec.epilog.iter.check977 ], [ %i.bx, %vec.epilog.middle.block998 ]
  %.0433511.ph = phi i32 [ 2147483647, %iter.check975 ], [ %i.bj, %vec.epilog.iter.check977 ], [ %i.by, %vec.epilog.middle.block998 ]
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
  %.val = load i32, ptr %i.n, align 4, !tbaa !189 ; 16 uses
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
  %min.iters.check896 = icmp ult i32 %.val, 4
  %min.iters.check898 = icmp ult i32 %.val, 32
  %i.dg = and i64 %wide.trip.count.i, 28
  %n.vec900 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %cmp.n905 = icmp eq i64 %n.vec900, %wide.trip.count.i
  %min.epilog.iters.check910 = icmp eq i64 %i.dg, 0
  %n.vec912 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n917 = icmp eq i64 %n.vec912, %wide.trip.count.i
  br label %iter.check907

iter.check907:                                    ; preds = %._crit_edge.i, %.preheader2.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next45.i, %._crit_edge.i ] ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv44.i, %i.cz
  %i.di = getelementptr [4 x i8], ptr %i.dc, i64 %i.dh ; 3 uses
  br i1 %min.iters.check896, label %vec.epilog.scalar.ph908.preheader, label %vector.main.loop.iter.check897

vector.main.loop.iter.check897:                   ; preds = %iter.check907
  br i1 %min.iters.check898, label %vec.epilog.ph911, label %vector.body901

vector.body901:                                   ; preds = %vector.main.loop.iter.check897, %vector.body901
  %index902 = phi i64 [ %index.next903, %vector.body901 ], [ 0, %vector.main.loop.iter.check897 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %index902 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.dj, align 4, !tbaa !110
  store <8 x float> splat (float 1.000000e+00), ptr %i.dk, align 4, !tbaa !110
  store <8 x float> splat (float 1.000000e+00), ptr %i.dl, align 4, !tbaa !110
  store <8 x float> splat (float 1.000000e+00), ptr %i.dm, align 4, !tbaa !110
  %index.next903 = add nuw i64 %index902, 32      ; 2 uses
  %i.dn = icmp eq i64 %index.next903, %n.vec900
  br i1 %i.dn, label %middle.block904, label %vector.body901, !llvm.loop !131

middle.block904:                                  ; preds = %vector.body901
  br i1 %cmp.n905, label %._crit_edge.i, label %vec.epilog.iter.check909

vec.epilog.iter.check909:                         ; preds = %middle.block904
  br i1 %min.epilog.iters.check910, label %vec.epilog.scalar.ph908.preheader, label %vec.epilog.ph911, !prof !81

vec.epilog.ph911:                                 ; preds = %vector.main.loop.iter.check897, %vec.epilog.iter.check909
  %vec.epilog.resume.val906 = phi i64 [ %n.vec900, %vec.epilog.iter.check909 ], [ 0, %vector.main.loop.iter.check897 ]
  br label %vec.epilog.vector.body913

vec.epilog.vector.body913:                        ; preds = %vec.epilog.vector.body913, %vec.epilog.ph911
  %index914 = phi i64 [ %vec.epilog.resume.val906, %vec.epilog.ph911 ], [ %index.next915, %vec.epilog.vector.body913 ] ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.di, i64 %index914
  store <4 x float> splat (float 1.000000e+00), ptr %i.do, align 4, !tbaa !110
  %index.next915 = add nuw i64 %index914, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next915, %n.vec912
  br i1 %i.dp, label %vec.epilog.middle.block916, label %vec.epilog.vector.body913, !llvm.loop !132

vec.epilog.middle.block916:                       ; preds = %vec.epilog.vector.body913
  br i1 %cmp.n917, label %._crit_edge.i, label %vec.epilog.scalar.ph908.preheader

vec.epilog.scalar.ph908.preheader:                ; preds = %iter.check907, %vec.epilog.iter.check909, %vec.epilog.middle.block916
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check907 ], [ %n.vec900, %vec.epilog.iter.check909 ], [ %n.vec912, %vec.epilog.middle.block916 ]
  br label %vec.epilog.scalar.ph908

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
  %scevgep747.a = getelementptr i8, ptr %i.es, i64 %i.er
  %i.et = sub nsw i64 %i.ef, %i.dy
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = mul i64 %i.eu, %i.dz
  %i.ew = add i64 %i.ev, %i.ej
  %i.ex = shl nsw i64 %i.ea, 2                    ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %scevgep748.a = getelementptr i8, ptr %i.ec, i64 %i.ey
  %i.ez = shl nuw nsw i64 %wide.trip.count102.i, 2
  %i.fa = add nsw i64 %i.ez, -4
  %i.fb = shl nsw i64 %i.dy, 2
  %i.fc = sub nsw i64 %i.fa, %i.fb
  %i.fd = mul i64 %i.fc, %i.dz
  %i.fe = shl nuw nsw i64 %wide.trip.count92.i, 2
  %i.ff = add i64 %i.fd, %i.fe
  %i.fg = sub i64 %i.ff, %i.ex
  %scevgep749 = getelementptr i8, ptr %i.ec, i64 %i.fg
  %i.fh = sub nsw i64 %wide.trip.count92.i, %i.ed ; 7 uses
  %min.iters.check779.a = icmp ult i32 %.110.i, 4
  %min.iters.check781 = icmp ult i32 %.110.i, 32
end_hunk_0
