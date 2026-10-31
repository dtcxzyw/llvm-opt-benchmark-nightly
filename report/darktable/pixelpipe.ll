Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/pixelpipe?download=true
inline.NumInlined: 235
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dt_dev_pixelpipe_cache_init:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !27
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %iter.check, label %.thread

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %1, 16
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store <4 x i64> zeroinitializer, ptr %i.w, align 8, !tbaa !28
  store <4 x i64> zeroinitializer, ptr %i.x, align 8, !tbaa !28
  store <4 x i64> zeroinitializer, ptr %i.y, align 8, !tbaa !28
  store <4 x i64> zeroinitializer, ptr %i.z, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 4 uses
  %i.ab = add <4 x i32> %vec.ind, splat (i32 64)
  %i.ac = add <4 x i32> %vec.ind, splat (i32 68)
  %i.ad = add <4 x i32> %vec.ind, splat (i32 72)
  %i.ae = add <4 x i32> %vec.ind, splat (i32 76)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store <4 x i32> %i.ab, ptr %i.aa, align 4, !tbaa !29
  store <4 x i32> %i.ac, ptr %i.af, align 4, !tbaa !29
  store <4 x i32> %i.ad, ptr %i.ag, align 4, !tbaa !29
  store <4 x i32> %i.ae, ptr %i.ah, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !255

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec87 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.aj = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind89 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index88
  store <4 x i64> zeroinitializer, ptr %i.ak, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index88
  %i.am = add <4 x i32> %vec.ind89, splat (i32 64)
  store <4 x i32> %i.am, ptr %i.al, align 4, !tbaa !29
  %index.next90 = add nuw i64 %index88, 4         ; 2 uses
  %vec.ind.next91 = add <4 x i32> %vec.ind89, splat (i32 4)
  %i.an = icmp eq i64 %index.next90, %n.vec87
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !253

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %n.vec87, %wide.trip.count
  br i1 %cmp.n92, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec87, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.not.not = icmp eq i64 %2, 0
  br i1 %.not.not, label %.thread, label %.lr.ph70.preheader

.lr.ph70.preheader:                               ; preds = %._crit_edge
  %wide.trip.count78 = zext nneg i32 %1 to i64
  br label %.lr.ph70

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store i64 0, ptr %i.ao, align 8, !tbaa !28
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.aq = trunc i64 %indvars.iv to i32
  %i.ar = add i32 %i.aq, 64
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %bb.b
  %indvars.iv75 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next76, %bb.b ] ; 4 uses
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv75
  store i64 %2, ptr %i.at, align 8, !tbaa !28
  %i.au = tail call ptr @dt_alloc_aligned(i64 noundef %2) #23
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv75
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !32
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv75
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32
  %.not65 = icmp eq ptr %i.az, null
  br i1 %.not65, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph70
  %i.ba = load i32, ptr %0, align 8, !tbaa !18
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph72, label %._crit_edge73

bb.b:                                             ; preds = %.lr.ph70
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !20
  %i.bd = add i64 %i.bc, %2
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !20
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.thread, label %.lr.ph70

._crit_edge73:                                    ; preds = %.lr.ph72, %.preheader
  store i64 0, ptr %i.c, align 8, !tbaa !20
  br label %.thread

.lr.ph72:                                         ; preds = %.preheader, %.lr.ph72
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph72 ], [ 0, %.preheader ] ; 4 uses
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.bg) #23
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv80
  store i64 0, ptr %i.bi, align 8, !tbaa !28
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv80
  store ptr null, ptr %i.bk, align 8, !tbaa !32
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.bl = load i32, ptr %0, align 8, !tbaa !18
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next81, %i.bm
  br i1 %i.bn, label %.lr.ph72, label %._crit_edge73

.thread:                                          ; preds = %bb.b, %bb.a, %._crit_edge, %._crit_edge73
  %.062 = phi i32 [ 1, %._crit_edge ], [ 0, %._crit_edge73 ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.062
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #4

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_cache_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 644
  %.val = load i32, ptr %i.a, align 4, !tbaa !52
  %i.b = and i32 %.val, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.d = and i32 %i.c, 33554432
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93
  %i.g = uitofp reassoc nsz arcp contract afn i64 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 16, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !95
  %i.l = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %i.m = insertelement <2 x i64> %i.l, i64 %i.k, i64 1
  %i.n = uitofp <2 x i64> %i.m to <2 x double>
  %i.o = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.n, <2 x double> splat (double 1.000000e+00))
  %i.p = insertelement <2 x double> poison, double %i.g, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fdiv reassoc nsz arcp contract afn <2 x double> %i.q, %i.o ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = extractelement <2 x double> %i.r, i64 1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %i.s, double noundef %i.t) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.u = load i32, ptr %0, align 8, !tbaa !18
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.y) #23
  store ptr null, ptr %i.x, align 8, !tbaa !22
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.ab) #23
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr null, ptr %i.ad, align 8, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.e, label %._crit_edge
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i64 @dt_dev_pixelpipe_cache_hash(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.c = load i32, ptr %i.b, align 16, !tbaa !96
  store i32 %i.c, ptr %i.a, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 644 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52
  store i32 %i.f, ptr %i.d, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.i = load i32, ptr %i.h, align 8, !tbaa !97
  store i32 %i.i, ptr %i.g, align 4, !tbaa !29
  %i.j = icmp ne ptr %0, null                     ; 3 uses
  br i1 %i.j, label %.lr.ph.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bf, %.lr.ph.i.i ], [ 0, %bb.a ] ; 9 uses
  %.089.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ 5381, %bb.a ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = mul i64 %.089.i.i, 33
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.m = load i8, ptr %i.l, align 4, !tbaa !98
  %i.n = zext i8 %i.m to i64
  %i.o = xor i64 %i.k, %i.n
  %i.p = mul i64 %i.o, 33
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !98
  %i.t = zext i8 %i.s to i64
  %i.u = xor i64 %i.p, %i.t
  %i.v = mul i64 %i.u, 33
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = load i8, ptr %i.x, align 2, !tbaa !98
  %i.z = zext i8 %i.y to i64
  %i.aa = xor i64 %i.v, %i.z
  %i.ab = mul i64 %i.aa, 33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !98
  %i.af = zext i8 %i.ae to i64
  %i.ag = xor i64 %i.ab, %i.af
  %i.ah = mul i64 %i.ag, 33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !98
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ah, %i.al
  %i.an = mul i64 %i.am, 33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !98
  %i.ar = zext i8 %i.aq to i64
  %i.as = xor i64 %i.an, %i.ar
  %i.at = mul i64 %i.as, 33
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !98
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.at, %i.ax
  %i.az = mul i64 %i.ay, 33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !98
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.az, %i.bd                    ; 2 uses
  %i.bf = add nuw nsw i64 %.010.i.i, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i.i, %bb.a
  %.010.i.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.bf, %.lr.ph.i.i ]
  %.089.i.i.epil.init = phi i64 [ 5381, %bb.a ], [ %i.be, %.lr.ph.i.i ]
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.010.i.i.epil = phi i64 [ %i.bl, %.lr.ph.i.i.epil ], [ %.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.089.i.i.epil = phi i64 [ %i.bk, %.lr.ph.i.i.epil ], [ %.089.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bg = mul i64 %.089.i.i.epil, 33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.010.i.i.epil
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !98
  %i.bj = zext i8 %i.bi to i64
  %i.bk = xor i64 %i.bg, %i.bj                    ; 2 uses
  %i.bl = add nuw nsw i64 %.010.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 4
  br i1 %epil.iter.cmp.not, label %dt_hash.exit.i.epilog-lcssa, label %.lr.ph.i.i.epil, !llvm.loop !256

dt_hash.exit.i.epilog-lcssa:                      ; preds = %.lr.ph.i.i.epil
  %i.bm = mul i64 %i.bk, 33
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !98
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bm, %i.bp
  %i.br = mul i64 %i.bq, 33
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 313
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !98
  %i.bu = zext i8 %i.bt to i64
  %i.bv = xor i64 %i.br, %i.bu
  %i.bw = mul i64 %i.bv, 33
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 314
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !98
  %i.bz = zext i8 %i.by to i64
  %i.ca = xor i64 %i.bw, %i.bz
  %i.cb = mul i64 %i.ca, 33
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 315
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !98
  %i.ce = zext i8 %i.cd to i64
  %i.cf = xor i64 %i.cb, %i.ce
  %i.cg = mul i64 %i.cf, 33
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !98
  %i.cj = zext i8 %i.ci to i64
  %i.ck = xor i64 %i.cg, %i.cj
  %i.cl = mul i64 %i.ck, 33
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 317
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !98
  %i.co = zext i8 %i.cn to i64
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = mul i64 %i.cp, 33
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 318
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !98
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = mul i64 %i.cu, 33
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 319
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !98
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.db = mul i64 %i.cz, 33
  %i.dc = load i8, ptr %i.da, align 16, !tbaa !98
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.db, %i.dd
  %i.df = mul i64 %i.de, 33
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 305
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !98
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 33
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 306
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !98
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 33
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 307
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !98
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 33
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 308
end_hunk_0
begin_hunk_1_@dt_dev_pixelpipe_cache_hash:bb.a
  %i.vg = zext i8 %i.vf to i64
  %i.vh = xor i64 %i.vd, %i.vg
  %i.vi = mul i64 %i.vh, 33
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 589
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !98
  %i.vl = zext i8 %i.vk to i64
  %i.vm = xor i64 %i.vi, %i.vl
  %i.vn = mul i64 %i.vm, 33
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 590
  %i.vp = load i8, ptr %i.vo, align 2, !tbaa !98
  %i.vq = zext i8 %i.vp to i64
  %i.vr = xor i64 %i.vn, %i.vq
  %i.vs = mul i64 %i.vr, 33
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 591
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !98
  %i.vv = zext i8 %i.vu to i64
  %i.vw = xor i64 %i.vs, %i.vv
  br label %dt_hash.exit14

dt_hash.exit14:                                   ; preds = %.lr.ph.i9.preheader, %_dev_pixelpipe_cache_basichash.exit
  %.0 = phi i64 [ %.037.lcssa.i, %_dev_pixelpipe_cache_basichash.exit ], [ %i.vw, %.lr.ph.i9.preheader ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @dt_dev_pixelpipe_cache_available(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = load i32, ptr %i.c, align 8, !tbaa !138
  %i.e = icmp ne i32 %i.d, 0
  %i.f = icmp eq i64 %1, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !95
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !95
  %i.j = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %.not2023 = icmp sgt i32 %i.j, 2
  br i1 %.not2023, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = icmp eq i64 %i.o, %2
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !93
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !93
  br label %.loopexit

bb.g:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.c, %bb.a, %bb.b
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_dev_pixelpipe_cache_get(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %_get_by_hash.exit.thread.thread

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.h = icmp sgt i32 %i.m, 2
  %i.i = icmp ne i64 %1, 0
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %.lr.ph.i, label %_get_by_hash.exit.thread

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %i.t = phi i32 [ %i.m, %.lr.ph.i ], [ %i.ad, %bb.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 6 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i64 %i.w, %1
  br i1 %i.x, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28
  %.not.i = icmp eq i64 %i.aa, %2
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.v, align 8, !tbaa !28
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.132, ptr noundef nonnull readonly %0, ptr noundef %5, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !18
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.r, align 4, !tbaa !137
  %.not30.i = icmp eq i32 %i.ab, 0
  br i1 %.not30.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.s, align 8, !tbaa !138
  %.not31.i = icmp eq i32 %i.ac, 0
  br i1 %.not31.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 0, ptr %i.v, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.c
  %i.ad = phi i32 [ %i.t, %bb.c ], [ %.pre.i, %bb.e ], [ %i.t, %bb.h ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %.not32.i = icmp slt i64 %indvars.iv.next.i, %i.ae
  br i1 %.not32.i, label %bb.c, label %_get_by_hash.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  store ptr %i.ai, ptr %3, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %indvars.iv.i ; 4 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !139
  %i.am = sub nsw i32 0, %i.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !29
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.ar = and i32 %i.aq, 33554432
  %.not99 = icmp eq i32 %i.ar, 0
  br i1 %.not99, label %bb.am, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.at = load i32, ptr %i.as, align 16, !tbaa !140
  %i.au = tail call ptr @dt_iop_colorspace_to_name(i32 noundef %i.at) #23
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.aw = load float, ptr %i.av, align 16, !tbaa !141
  %i.ax = fpext reassoc nsz arcp contract afn float %i.aw to double
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 84
  %i.az = load <2 x float>, ptr %i.ay, align 4, !tbaa !141
  %i.ba = fpext <2 x float> %i.az to <2 x double> ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  %i.bc = extractelement <2 x double> %i.ba, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef %5, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %i.au, double noundef %i.ax, double noundef %i.bb, double noundef %i.bc, i64 noundef %1)
  br label %bb.am

_get_by_hash.exit.thread:                         ; preds = %bb.i, %._crit_edge
  %i.bd = phi i32 [ %i.m, %._crit_edge ], [ %i.ad, %bb.i ] ; 2 uses
  %i.be = icmp eq i32 %i.bd, 2
  br i1 %i.be, label %.split.thread, label %_get_by_hash.exit.thread.thread

_get_by_hash.exit.thread.thread:                  ; preds = %bb.a, %_get_by_hash.exit.thread
  %i.bf = phi i32 [ %i.bd, %_get_by_hash.exit.thread ], [ %i.d, %bb.a ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !137
  %.not.i101 = icmp eq i32 %i.bh, 0
  br i1 %.not.i101, label %bb.l, label %.split

bb.l:                                             ; preds = %_get_by_hash.exit.thread.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !138
  %.not8.i = icmp eq i32 %i.bj, 0
  br i1 %.not8.i, label %bb.m, label %.split

.split:                                           ; preds = %bb.l, %_get_by_hash.exit.thread.thread
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !19
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 1
  br label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp sgt i32 %i.bf, 2
  br i1 %i.bn, label %.lr.ph.i.i.i, label %_get_oldest_cacheline.exit20.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count91.i.i.i = zext nneg i32 %i.bf to i64 ; 4 uses
  %i.bs = add nsw i64 %wide.trip.count91.i.i.i, -2 ; 4 uses
  %i.bt = add nsw i64 %wide.trip.count91.i.i.i, -3 ; 3 uses
  %xtraiter = and i64 %wide.trip.count91.i.i.i, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.split.us45.i.i.i.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %i.bs, -2
  br label %.lr.ph.split.us45.i.i.i

.lr.ph.split.us45.i.i.i:                          ; preds = %.critedge.us51.i.i.i.1, %.lr.ph.i.i.i.new
  %indvars.iv78.i.i.i = phi i64 [ 2, %.lr.ph.i.i.i.new ], [ %indvars.iv.next79.i.i.i.1, %.critedge.us51.i.i.i.1 ] ; 6 uses
  %.02332.us47.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %.1.us53.i.i.i.1, %.critedge.us51.i.i.i.1 ] ; 3 uses
  %.02431.us48.i.i.i = phi i32 [ 1, %.lr.ph.i.i.i.new ], [ %.125.us52.i.i.i.1, %.critedge.us51.i.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %.critedge.us51.i.i.i.1 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv78.i.i.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, %.02431.us48.i.i.i
  br i1 %i.bx, label %bb.n, label %.critedge.us51.i.i.i

bb.n:                                             ; preds = %.lr.ph.split.us45.i.i.i
  %i.by = load i32, ptr %i.bq, align 8, !tbaa !142
  %i.bz = zext i32 %i.by to i64
  %.not.us49.i.i.i = icmp eq i64 %indvars.iv78.i.i.i, %i.bz
  br i1 %.not.us49.i.i.i, label %.critedge.us51.i.i.i, label %.split28.us.i.i.i

.split28.us.i.i.i:                                ; preds = %bb.n
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv78.i.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !28
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  %spec.select70.i.i.i = select i1 %i.cd, i32 %i.bw, i32 %.02431.us48.i.i.i
  %i.ce = trunc nuw nsw i64 %indvars.iv78.i.i.i to i32
  %spec.select71.i.i.i = select i1 %i.cd, i32 %i.ce, i32 %.02332.us47.i.i.i
  br label %.critedge.us51.i.i.i

.critedge.us51.i.i.i:                             ; preds = %.split28.us.i.i.i, %bb.n, %.lr.ph.split.us45.i.i.i
  %.125.us52.i.i.i = phi i32 [ %.02431.us48.i.i.i, %.lr.ph.split.us45.i.i.i ], [ %spec.select70.i.i.i, %.split28.us.i.i.i ], [ %.02431.us48.i.i.i, %bb.n ] ; 4 uses
  %.1.us53.i.i.i = phi i32 [ %.02332.us47.i.i.i, %.lr.ph.split.us45.i.i.i ], [ %spec.select71.i.i.i, %.split28.us.i.i.i ], [ %.02332.us47.i.i.i, %bb.n ] ; 3 uses
  %indvars.iv.next79.i.i.i = or disjoint i64 %indvars.iv78.i.i.i, 1 ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next79.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !29 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, %.125.us52.i.i.i
  br i1 %i.ch, label %bb.o, label %.critedge.us51.i.i.i.1

bb.o:                                             ; preds = %.critedge.us51.i.i.i
  %i.ci = load i32, ptr %i.bq, align 8, !tbaa !142
  %i.cj = zext i32 %i.ci to i64
  %.not.us49.i.i.i.1 = icmp eq i64 %indvars.iv.next79.i.i.i, %i.cj
  br i1 %.not.us49.i.i.i.1, label %.critedge.us51.i.i.i.1, label %.split28.us.i.i.i.1

.split28.us.i.i.i.1:                              ; preds = %bb.o
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.next79.i.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !28
  %i.cn = icmp eq i64 %i.cm, 0                    ; 2 uses
  %spec.select70.i.i.i.1 = select i1 %i.cn, i32 %i.cg, i32 %.125.us52.i.i.i
  %i.co = trunc nuw nsw i64 %indvars.iv.next79.i.i.i to i32
  %spec.select71.i.i.i.1 = select i1 %i.cn, i32 %i.co, i32 %.1.us53.i.i.i
  br label %.critedge.us51.i.i.i.1

.critedge.us51.i.i.i.1:                           ; preds = %.split28.us.i.i.i.1, %bb.o, %.critedge.us51.i.i.i
  %.125.us52.i.i.i.1 = phi i32 [ %.125.us52.i.i.i, %.critedge.us51.i.i.i ], [ %spec.select70.i.i.i.1, %.split28.us.i.i.i.1 ], [ %.125.us52.i.i.i, %bb.o ] ; 2 uses
  %.1.us53.i.i.i.1 = phi i32 [ %.1.us53.i.i.i, %.critedge.us51.i.i.i ], [ %spec.select71.i.i.i.1, %.split28.us.i.i.i.1 ], [ %.1.us53.i.i.i, %bb.o ] ; 3 uses
  %indvars.iv.next79.i.i.i.1 = add nuw nsw i64 %indvars.iv78.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_get_oldest_cacheline.exit.i.i.unr-lcssa, label %.lr.ph.split.us45.i.i.i

_get_oldest_cacheline.exit.i.i.unr-lcssa:         ; preds = %.critedge.us51.i.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_get_oldest_cacheline.exit.i.i, label %.lr.ph.split.us45.i.i.i.epil.preheader

.lr.ph.split.us45.i.i.i.epil.preheader:           ; preds = %_get_oldest_cacheline.exit.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv78.i.i.i.epil.init = phi i64 [ 2, %.lr.ph.i.i.i ], [ %indvars.iv.next79.i.i.i.1, %_get_oldest_cacheline.exit.i.i.unr-lcssa ] ; 4 uses
  %.02332.us47.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.us53.i.i.i.1, %_get_oldest_cacheline.exit.i.i.unr-lcssa ] ; 3 uses
  %.02431.us48.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.i.i.i ], [ %.125.us52.i.i.i.1, %_get_oldest_cacheline.exit.i.i.unr-lcssa ]
  %lcmp.mod138 = trunc i32 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod138)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv78.i.i.i.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !29
  %i.cr = icmp sgt i32 %i.cq, %.02431.us48.i.i.i.epil.init
  br i1 %i.cr, label %bb.p, label %_get_oldest_cacheline.exit.i.i

bb.p:                                             ; preds = %.lr.ph.split.us45.i.i.i.epil.preheader
  %i.cs = load i32, ptr %i.bq, align 8, !tbaa !142
  %i.ct = zext i32 %i.cs to i64
  %.not.us49.i.i.i.epil = icmp eq i64 %indvars.iv78.i.i.i.epil.init, %i.ct
  br i1 %.not.us49.i.i.i.epil, label %_get_oldest_cacheline.exit.i.i, label %.split28.us.i.i.i.epil

.split28.us.i.i.i.epil:                           ; preds = %bb.p
  %i.cu = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv78.i.i.i.epil.init
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = trunc nuw nsw i64 %indvars.iv78.i.i.i.epil.init to i32
  %spec.select71.i.i.i.epil = select i1 %i.cx, i32 %i.cy, i32 %.02332.us47.i.i.i.epil.init
  br label %_get_oldest_cacheline.exit.i.i

_get_oldest_cacheline.exit.i.i:                   ; preds = %.lr.ph.split.us45.i.i.i.epil.preheader, %bb.p, %.split28.us.i.i.i.epil, %_get_oldest_cacheline.exit.i.i.unr-lcssa
  %.1.us53.i.i.i.lcssa = phi i32 [ %.1.us53.i.i.i.1, %_get_oldest_cacheline.exit.i.i.unr-lcssa ], [ %.02332.us47.i.i.i.epil.init, %.lr.ph.split.us45.i.i.i.epil.preheader ], [ %spec.select71.i.i.i.epil, %.split28.us.i.i.i.epil ], [ %.02332.us47.i.i.i.epil.init, %bb.p ] ; 2 uses
  %i.cz = icmp sgt i32 %.1.us53.i.i.i.lcssa, 0
  br i1 %i.cz, label %_get_cacheline.exit, label %.lr.ph.i14.i.i

.lr.ph.i14.i.i:                                   ; preds = %_get_oldest_cacheline.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %xtraiter139 = and i64 %wide.trip.count91.i.i.i, 1
  %i.db = icmp eq i64 %i.bt, 0
  br i1 %i.db, label %.lr.ph.split.us34.i.i.i.epil.preheader, label %.lr.ph.i14.i.i.new

.lr.ph.i14.i.i.new:                               ; preds = %.lr.ph.i14.i.i
  %unroll_iter143 = and i64 %i.bs, -2
  br label %.lr.ph.split.us34.i.i.i

.lr.ph.split.us34.i.i.i:                          ; preds = %.critedge.us40.i.i.i.1, %.lr.ph.i14.i.i.new
  %indvars.iv83.i.i.i = phi i64 [ 2, %.lr.ph.i14.i.i.new ], [ %indvars.iv.next84.i.i.i.1, %.critedge.us40.i.i.i.1 ] ; 6 uses
  %.02332.us36.i.i.i = phi i32 [ 0, %.lr.ph.i14.i.i.new ], [ %.1.us42.i.i.i.1, %.critedge.us40.i.i.i.1 ] ; 3 uses
  %.02431.us37.i.i.i = phi i32 [ 1, %.lr.ph.i14.i.i.new ], [ %.125.us41.i.i.i.1, %.critedge.us40.i.i.i.1 ] ; 4 uses
  %niter144 = phi i64 [ 0, %.lr.ph.i14.i.i.new ], [ %niter144.next.1, %.critedge.us40.i.i.i.1 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv83.i.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !29 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, %.02431.us37.i.i.i
  br i1 %i.de, label %bb.q, label %.critedge.us40.i.i.i

bb.q:                                             ; preds = %.lr.ph.split.us34.i.i.i
  %i.df = load i32, ptr %i.bq, align 8, !tbaa !142
  %i.dg = zext i32 %i.df to i64
  %.not.us38.i.i.i = icmp eq i64 %indvars.iv83.i.i.i, %i.dg
  br i1 %.not.us38.i.i.i, label %.critedge.us40.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !22
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv83.i.i.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %spec.select68.i.i.i = select i1 %i.dk, i32 %i.dd, i32 %.02431.us37.i.i.i
  %i.dl = trunc nuw nsw i64 %indvars.iv83.i.i.i to i32
  %spec.select69.i.i.i = select i1 %i.dk, i32 %i.dl, i32 %.02332.us36.i.i.i
  br label %.critedge.us40.i.i.i

.critedge.us40.i.i.i:                             ; preds = %bb.r, %bb.q, %.lr.ph.split.us34.i.i.i
  %.125.us41.i.i.i = phi i32 [ %.02431.us37.i.i.i, %.lr.ph.split.us34.i.i.i ], [ %spec.select68.i.i.i, %bb.r ], [ %.02431.us37.i.i.i, %bb.q ] ; 4 uses
  %.1.us42.i.i.i = phi i32 [ %.02332.us36.i.i.i, %.lr.ph.split.us34.i.i.i ], [ %spec.select69.i.i.i, %bb.r ], [ %.02332.us36.i.i.i, %bb.q ] ; 3 uses
  %indvars.iv.next84.i.i.i = or disjoint i64 %indvars.iv83.i.i.i, 1 ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next84.i.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, %.125.us41.i.i.i
  br i1 %i.do, label %bb.s, label %.critedge.us40.i.i.i.1

bb.s:                                             ; preds = %.critedge.us40.i.i.i
  %i.dp = load i32, ptr %i.bq, align 8, !tbaa !142
  %i.dq = zext i32 %i.dp to i64
  %.not.us38.i.i.i.1 = icmp eq i64 %indvars.iv.next84.i.i.i, %i.dq
  br i1 %.not.us38.i.i.i.1, label %.critedge.us40.i.i.i.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = load ptr, ptr %i.da, align 8, !tbaa !22
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next84.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !32
  %i.du = icmp eq ptr %i.dt, null                 ; 2 uses
  %spec.select68.i.i.i.1 = select i1 %i.du, i32 %i.dn, i32 %.125.us41.i.i.i
end_hunk_1
begin_hunk_2_@dt_dev_pixelpipe_cache_checkmem:bb.a
  br i1 %.not34, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_cline_stats.exit
  %i.fj = add i64 %.02946, 524288
  %i.fk = lshr i64 %i.fj, 20
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !20
  %i.fo = add i64 %i.fn, 524288
  %i.fp = lshr i64 %i.fo, 20
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = add i64 %i.fd, 524288
  %i.fs = lshr i64 %i.fr, 20
  %i.ft = trunc i64 %i.fs to i32
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef %i.fg, i32 noundef %i.ff, i32 noundef %i.fe, i32 noundef %.028.lcssa, i32 noundef %i.fl, i32 noundef %i.fq, i32 noundef %i.ft)
  br label %bb.y

bb.y:                                             ; preds = %_cline_stats.exit, %bb.x, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_cache_report(ptr nofree noundef captures(address_is_null) initializes((104, 116)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !173
  %i.d = load i32, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.e = icmp sgt i32 %i.d, 2
  br i1 %i.e, label %.lr.ph.i, label %_cline_stats.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i32 %i.d, 3
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %i.l = and i64 %wide.trip.count.i, 2147483646
  %i.m = add nsw i64 %i.l, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i.new
  %i.n = phi i32 [ 0, %.lr.ph.i.new ], [ %i.at, %bb.j ] ; 2 uses
  %i.o = phi i32 [ 0, %.lr.ph.i.new ], [ %i.an, %bb.j ] ; 3 uses
  %i.p = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ao, %bb.j ] ; 2 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.j ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %i.p, 1                          ; 3 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !173
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !172
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.b
  %i.y = phi i32 [ %i.o, %bb.b ], [ %i.x, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.z = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i
  %i.ad = add i32 %i.n, 1                         ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !171
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i
  %i.ae = phi i32 [ %i.n, %.thread.i ], [ %i.ad, %bb.e ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %.not.i.1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.1, label %.thread.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.ah, ptr %i.c, align 8, !tbaa !173
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %.thread.i.1

bb.h:                                             ; preds = %bb.g
  %i.am = add i32 %i.y, 1                         ; 2 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !172
  br label %.thread.i.1

.thread.i.1:                                      ; preds = %bb.h, %bb.g, %bb.f
  %i.an = phi i32 [ %i.y, %bb.f ], [ %i.am, %bb.h ], [ %i.y, %bb.g ] ; 3 uses
  %i.ao = phi i32 [ %i.z, %bb.f ], [ %i.ah, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread.i.1
  %i.as = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.as, ptr %i.a, align 8, !tbaa !171
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i.1
  %i.at = phi i32 [ %i.ae, %.thread.i.1 ], [ %i.as, %bb.i ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.m
  br i1 %niter.ncmp.1, label %_cline_stats.exit.loopexit.unr-lcssa, label %bb.b

_cline_stats.exit.loopexit.unr-lcssa:             ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_cline_stats.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_cline_stats.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.at, %_cline_stats.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init20 = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %_cline_stats.exit.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init22 = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %_cline_stats.exit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_cline_stats.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod26 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %.not.i.epil = icmp eq ptr %i.av, null
  br i1 %.not.i.epil, label %.thread.i.epil, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.aw = add i32 %.epil.init22, 1                ; 3 uses
  store i32 %i.aw, ptr %i.c, align 8, !tbaa !173
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.epil.init
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.l, label %.thread.i.epil

bb.l:                                             ; preds = %bb.k
  %i.bb = add i32 %.epil.init20, 1                ; 2 uses
  store i32 %i.bb, ptr %i.b, align 4, !tbaa !172
  br label %.thread.i.epil

.thread.i.epil:                                   ; preds = %bb.l, %bb.k, %.epil.preheader
  %i.bc = phi i32 [ %.epil.init20, %.epil.preheader ], [ %i.bb, %bb.l ], [ %.epil.init20, %bb.k ] ; 2 uses
  %i.bd = phi i32 [ %.epil.init22, %.epil.preheader ], [ %i.aw, %bb.l ], [ %i.aw, %bb.k ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.epil.init
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %_cline_stats.exit

bb.m:                                             ; preds = %.thread.i.epil
  %i.bh = add i32 %.epil.init, 1                  ; 2 uses
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !171
  br label %_cline_stats.exit

_cline_stats.exit:                                ; preds = %_cline_stats.exit.loopexit.unr-lcssa, %bb.m, %.thread.i.epil, %bb.a
  %i.bi = phi i32 [ 0, %bb.a ], [ %i.an, %_cline_stats.exit.loopexit.unr-lcssa ], [ %i.bc, %bb.m ], [ %i.bc, %.thread.i.epil ]
  %i.bj = phi i32 [ 0, %bb.a ], [ %i.ao, %_cline_stats.exit.loopexit.unr-lcssa ], [ %i.bd, %bb.m ], [ %i.bd, %.thread.i.epil ]
  %i.bk = phi i32 [ 0, %bb.a ], [ %i.at, %_cline_stats.exit.loopexit.unr-lcssa ], [ %.epil.init, %.thread.i.epil ], [ %i.bh, %bb.m ]
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.bm = and i32 %i.bl, 33554944
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_cline_stats.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !tbaa !28
  %i.bp = add <2 x i64> %i.bo, splat (i64 524288)
  %i.bq = lshr <2 x i64> %i.bp, splat (i64 20)    ; 2 uses
  %i.br = bitcast <2 x i64> %i.bq to <4 x i32>
  %i.bs = extractelement <4 x i32> %i.br, i64 0
  %i.bt = bitcast <2 x i64> %i.bq to <4 x i32>
  %i.bu = extractelement <4 x i32> %i.bt, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !93
  %i.bx = uitofp reassoc nsz arcp contract afn i64 %i.bw to double
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load i64, ptr %i.by, align 16, !tbaa !94
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !95
  %i.cc = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cd = insertelement <2 x i64> %i.cc, i64 %i.cb, i64 1
  %i.ce = uitofp <2 x i64> %i.cd to <2 x double>
  %i.cf = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ce, <2 x double> splat (double 1.000000e+00))
  %i.cg = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv reassoc nsz arcp contract afn <2 x double> %i.ch, %i.cf ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef %i.d, i32 noundef %i.bk, i32 noundef %i.bj, i32 noundef %i.bi, i32 noundef %i.bs, i32 noundef %i.bu, double noundef %i.cj, double noundef %i.ck)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_cline_stats.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 256                          ; 2 uses
  %i.b = and i32 %0, 512                          ; 2 uses
  %i.c = and i32 %0, 31                           ; 2 uses
  %i.d = tail call range(i32 0, 6) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %bb.g

.split:                                           ; preds = %bb.a
  %i.f = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true)
  %.not35 = icmp eq i32 %i.a, 0                   ; 5 uses
  %.not37 = icmp eq i32 %i.b, 0                   ; 10 uses
  switch i32 %i.f, label %default.unreachable38 [
    i32 2, label %bb.b
    i32 4, label %bb.c
    i32 1, label %bb.d
    i32 3, label %bb.e
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %.split
  %i.g = select i1 %.not37, ptr @.str.18, ptr @.str.17
  %i.h = select i1 %.not37, ptr @.str.20, ptr @.str.19
  %i.i = select i1 %.not35, ptr %i.h, ptr %i.g
  br label %bb.h

bb.c:                                             ; preds = %.split
  %i.j = select i1 %.not37, ptr @.str.22, ptr @.str.21
  %i.k = select i1 %.not37, ptr @.str.24, ptr @.str.23
  %i.l = select i1 %.not35, ptr %i.k, ptr %i.j
  br label %bb.h

bb.d:                                             ; preds = %.split
  %i.m = select i1 %.not37, ptr @.str.26, ptr @.str.25
  %i.n = select i1 %.not37, ptr @.str.28, ptr @.str.27
  %i.o = select i1 %.not35, ptr %i.n, ptr %i.m
  br label %bb.h

bb.e:                                             ; preds = %.split
  %i.p = select i1 %.not37, ptr @.str.30, ptr @.str.29
  %i.q = select i1 %.not37, ptr @.str.32, ptr @.str.31
  %i.r = select i1 %.not35, ptr %i.q, ptr %i.p
  br label %bb.h

bb.f:                                             ; preds = %.split
  %i.s = select i1 %.not37, ptr @.str.34, ptr @.str.33
  %i.t = select i1 %.not37, ptr @.str.36, ptr @.str.35
  %i.u = select i1 %.not35, ptr %i.t, ptr %i.s
  br label %bb.h

default.unreachable38:                            ; preds = %.split
  unreachable

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  %.not22 = icmp eq i32 %i.b, 0                   ; 2 uses
  %i.v = select i1 %.not22, ptr @.str.38, ptr @.str.37
  %i.w = select i1 %.not22, ptr @.str.40, ptr @.str.39
  %i.x = select i1 %.not, ptr %i.w, ptr %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.x, %bb.g ], [ %i.i, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.r, %bb.e ], [ %i.u, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @dt_dev_pixelpipe_shutdown_to_str(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_dev_pixelpipe_set_shutdown, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.45, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare ptr @dt_iop_get_instance_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_dev_pixelpipe_init_export(ptr noundef initializes((120, 124), (144, 152), (156, 164), (336, 412), (544, 556), (560, 600), (604, 612), (652, 656)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 4
  %i.c = sext i32 %2 to i64
  %i.d = mul i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 -1, ptr %i.e, align 4, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.f, align 16, !tbaa !175
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.g, align 16, !tbaa !176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.h, align 8, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.i, align 4, !tbaa !178
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 0, ptr %i.j, align 4, !tbaa !179
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 0, ptr %i.k, align 4, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.l, align 4, !tbaa !181
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.m, align 16, !tbaa !182
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store i64 %i.d, ptr %i.o, align 16, !tbaa !183
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr null, ptr %i.q, align 8, !tbaa !185
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.s, align 4, !tbaa !186
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.t, i8 0, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.u, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.v, align 16, !tbaa !187
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 612
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  store atomic i32 0, ptr %i.w seq_cst, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.x, i8 0, i64 20, i1 false)
  store i32 256, ptr %i.y, align 8, !tbaa !188
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aa = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.z, ptr noundef null) #23 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ac = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ab, ptr noundef null) #23 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ae = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ad, ptr noundef null) #23 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i32 -1, ptr %i.af, align 16, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store ptr null, ptr %i.ag, align 8, !tbaa !190
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i32 4, ptr %i.ah, align 16, !tbaa !191
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.ak, align 16, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false)
  %i.am = tail call range(i32 0, 2) i32 @dt_dev_pixelpipe_cache_init(ptr noundef %0, i32 noundef 2, i64 noundef %i.d, i64 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 1, ptr %i.an, align 4, !tbaa !52
  store i32 %3, ptr %i.y, align 8, !tbaa !188
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i32 %4, ptr %i.ao, align 16, !tbaa !260
  ret i32 %i.am
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_dev_pixelpipe_init_cached(ptr noundef initializes((120, 124), (144, 152), (156, 164), (336, 412), (544, 556), (560, 600), (604, 612), (652, 656)) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 -1, ptr %i.a, align 4, !tbaa !174
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.b, align 16, !tbaa !175
end_hunk_2
begin_hunk_3_@dt_dev_pixelpipe_init:iter.check
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %i.al, align 16, !tbaa !21
  %i.am = zext nneg i32 %i.e to i64               ; 6 uses
  %i.an = tail call noalias ptr @calloc(i64 noundef %i.am, i64 noundef 160) #22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !22
  %i.ap = shl nuw nsw i64 %i.am, 3                ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = shl nuw nsw i64 %i.am, 7
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.av, ptr %i.aw, align 16, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !26
  %i.az = shl nuw nsw i64 %i.am, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ba, ptr %i.bb, align 16, !tbaa !27
  br i1 %.not, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %n.vec = and i64 %i.am, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <4 x i64> zeroinitializer, ptr %i.bc, align 8, !tbaa !28
  store <4 x i64> zeroinitializer, ptr %i.bd, align 8, !tbaa !28
  store <4 x i64> zeroinitializer, ptr %i.be, align 8, !tbaa !28
  store <4 x i64> zeroinitializer, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index ; 4 uses
  %i.bh = add <4 x i32> %vec.ind, splat (i32 64)
  %i.bi = add <4 x i32> %vec.ind, splat (i32 68)
  %i.bj = add <4 x i32> %vec.ind, splat (i32 72)
  %i.bk = add <4 x i32> %vec.ind, splat (i32 76)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store <4 x i32> %i.bh, ptr %i.bg, align 4, !tbaa !29
  store <4 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !29
  store <4 x i32> %i.bj, ptr %i.bm, align 4, !tbaa !29
  store <4 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %dt_dev_pixelpipe_cache_init.exit, label %vector.body, !llvm.loop !265

.lr.ph.i:                                         ; preds = %iter.check, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %iter.check ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  store i64 0, ptr %i.bp, align 8, !tbaa !28
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.br = trunc i64 %indvars.iv.i to i32
  %i.bs = add i32 %i.br, 64
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.am
  br i1 %exitcond.not.i, label %dt_dev_pixelpipe_cache_init.exit, label %.lr.ph.i, !llvm.loop !266

dt_dev_pixelpipe_cache_init.exit:                 ; preds = %vector.body, %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 2, ptr %i.bt, align 4, !tbaa !52
  ret i32 1
}

; Function Attrs: nounwind uwtable
define range(i64 1048576, 0) i64 @dt_get_available_pipe_mem(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 (...) @dt_get_available_mem() #23 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 644
  %.val4 = load i32, ptr %i.b, align 4, !tbaa !52
  %i.c = and i32 %.val4, 8
  %.not = icmp eq i32 %i.c, 0
  %i.d = udiv i64 %i.a, 3
  %i.e = select i1 %.not, i64 %i.a, i64 %i.d
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1048576)
  ret i64 %spec.select
}

declare i64 @dt_get_available_mem(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_set_input(ptr noundef initializes((136, 156), (176, 304), (656, 2544)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %3, ptr %i.a, align 16, !tbaa !176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %4, ptr %i.b, align 4, !tbaa !180
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %5, ptr %i.c, align 8, !tbaa !194
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %2, ptr %i.d, align 8, !tbaa !195
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1888) %i.e, ptr noundef nonnull align 16 dereferenceable(1888) %i.f, i64 1888, i1 false), !tbaa.struct !271
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1600
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.g, ptr noundef nonnull align 16 dereferenceable(128) %i.h, i64 128, i1 false)
  %i.i = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.e) #23
  %.not13.i = icmp eq i32 %i.i, 0
  br i1 %.not13.i, label %.preheader.i, label %get_output_format.exit

.preheader.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <4 x float> splat (float 1.000000e+00), ptr %i.j, align 16, !tbaa !141
  br label %get_output_format.exit

get_output_format.exit:                           ; preds = %bb.a, %.preheader.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_set_icc(ptr nofree noundef captures(none) initializes((2544, 2548), (2560, 2564)) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
g_strdup_inline.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i32 %1, ptr %i.a, align 16, !tbaa !189
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190
  tail call void @g_free(ptr noundef %i.c) #23
  %.not = icmp eq ptr %2, null
  %i.d = select i1 %.not, ptr @.str.6, ptr %2
  %i.e = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.d) #23
  store ptr %i.e, ptr %i.b, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i32 %3, ptr %i.f, align 16, !tbaa !191
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_set_shutdown(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 612
  store atomic i32 %1, ptr %i.a seq_cst, align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.c = and i32 %i.b, 50331648
  %or.cond.not = icmp eq i32 %i.c, 50331648
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  %i.f = icmp ult i32 %1, 4
  br i1 %i.f, label %switch.lookup, label %dt_dev_pixelpipe_shutdown_to_str.exit

switch.lookup:                                    ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dt_dev_pixelpipe_set_shutdown, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dt_dev_pixelpipe_shutdown_to_str.exit

dt_dev_pixelpipe_shutdown_to_str.exit:            ; preds = %bb.b, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.45, %bb.b ]
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.67, ptr noundef nonnull %0, ptr noundef null, i32 noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull %.0.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %dt_dev_pixelpipe_shutdown_to_str.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #23 ; 0 uses
  tail call void @dt_dev_pixelpipe_cleanup_nodes(ptr noundef %0)
  %i.c = getelementptr i8, ptr %0, i64 644        ; 2 uses
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !52
  %i.d = and i32 %.val.i, 2
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.f = and i32 %i.e, 33554432
  %.not14.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93
  %i.i = uitofp reassoc nsz arcp contract afn i64 %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 16, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95
  %i.n = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.o = insertelement <2 x i64> %i.n, i64 %i.m, i64 1
  %i.p = uitofp <2 x i64> %i.o to <2 x double>
  %i.q = tail call reassoc nsz arcp contract afn <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.p, <2 x double> splat (double 1.000000e+00))
  %i.r = insertelement <2 x double> poison, double %i.i, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fdiv reassoc nsz arcp contract afn <2 x double> %i.s, %i.q ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  %i.v = extractelement <2 x double> %i.t, i64 1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, double noundef %i.u, double noundef %i.v) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.w = load i32, ptr %0, align 8, !tbaa !18
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %dt_dev_pixelpipe_cache_cleanup.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.ab) #23
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store ptr null, ptr %i.ad, align 8, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !18
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next.i, %i.af
  br i1 %i.ag, label %bb.e, label %dt_dev_pixelpipe_cache_cleanup.exit

dt_dev_pixelpipe_cache_cleanup.exit:              ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.ai) #23
  store ptr null, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.ak) #23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2616 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !196
  tail call void @free(ptr noundef %i.an) #23
  store ptr null, ptr %i.al, align 8, !tbaa !196
  store i64 0, ptr %i.am, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2624 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !196
  tail call void @free(ptr noundef %i.ap) #23
  store ptr null, ptr %i.ao, align 8, !tbaa !196
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2640
  store i64 0, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i32 -1, ptr %i.ar, align 16, !tbaa !189
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2552 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !190
  tail call void @g_free(ptr noundef %i.at) #23
  store ptr null, ptr %i.as, align 8, !tbaa !190
  %.val = load i32, ptr %i.c, align 4, !tbaa !52
  %i.au = and i32 %.val, 22
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %dt_dev_pixelpipe_cache_cleanup.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !185
  tail call void @g_free(ptr noundef %i.aw) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %dt_dev_pixelpipe_cache_cleanup.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr null, ptr %i.ax, align 8, !tbaa !185
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.ay, align 8, !tbaa !177
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.az, align 4, !tbaa !181
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.bb = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.bc, align 4, !tbaa !186
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !197 ; 2 uses
  %.not21 = icmp eq ptr %i.be, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @g_list_free_full(ptr noundef nonnull %i.be, ptr noundef nonnull @dt_masks_free_form) #23
  store ptr null, ptr %i.bd, align 8, !tbaa !197
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bg = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.bf) #23 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bi = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.bh) #23 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_cleanup_nodes(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 612
  store atomic i32 1, ptr %i.a seq_cst, align 4
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.c = and i32 %i.b, 50331648
  %or.cond.not.i = icmp eq i32 %i.c, 50331648
  br i1 %or.cond.not.i, label %bb.b, label %dt_dev_pixelpipe_set_shutdown.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.e = load i32, ptr %i.d, align 4, !tbaa !174
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.67, ptr noundef nonnull %0, ptr noundef null, i32 noundef %i.e, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.42)
  br label %dt_dev_pixelpipe_set_shutdown.exit

dt_dev_pixelpipe_set_shutdown.exit:               ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #23 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %.033 = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.not34 = icmp eq ptr %.033, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.h, align 16, !tbaa !198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %dt_dev_pixelpipe_set_shutdown.exit
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %dt_dev_pixelpipe_set_shutdown.exit ]
  tail call void @g_list_free(ptr noundef %i.i) #23
  store ptr null, ptr %i.h, align 16, !tbaa !198
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !199 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  br label %dt_dev_clear_scharr_mask.exit

bb.c:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.l) #23
  %.011.i.pr = load ptr, ptr %i.h, align 16, !tbaa !100 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  %.not1012.i = icmp eq ptr %.011.i.pr, null
  br i1 %.not1012.i, label %dt_dev_clear_scharr_mask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.013.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.011.i.pr, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.013.i, align 8, !tbaa !102 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 528 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !200
  tail call void @free(ptr noundef %i.o) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 576 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !201
  tail call void @free(ptr noundef %i.q) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !100 ; 2 uses
  %.not10.i = icmp eq ptr %.0.i, null
  br i1 %.not10.i, label %dt_dev_clear_scharr_mask.exit, label %.lr.ph.i

dt_dev_clear_scharr_mask.exit:                    ; preds = %.lr.ph.i, %.thread, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.s, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 2 uses
  %.not30 = icmp eq ptr %i.u, null
  br i1 %.not30, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %dt_dev_pixelpipe_set_shutdown.exit, %.lr.ph
  %.035 = phi ptr [ %.0, %.lr.ph ], [ %.033, %dt_dev_pixelpipe_set_shutdown.exit ] ; 2 uses
  %i.v = load ptr, ptr %.035, align 8, !tbaa !102 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !111 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !272
  tail call void %i.y(ptr noundef %i.w, ptr noundef nonnull %0, ptr noundef nonnull %i.v) #23
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !203
  tail call void @free(ptr noundef %i.aa) #23
  store ptr null, ptr %i.z, align 8, !tbaa !203
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !204
  tail call void @free(ptr noundef %i.ac) #23
  store ptr null, ptr %i.ab, align 8, !tbaa !204
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 520 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !205
  tail call void @g_hash_table_destroy(ptr noundef %i.ae) #23
  store ptr null, ptr %i.ad, align 8, !tbaa !205
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 528 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !200
  tail call void @free(ptr noundef %i.ag) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 576
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !201
  tail call void @free(ptr noundef %i.ai) #23
  tail call void @free(ptr noundef %i.v) #23
  %i.aj = getelementptr inbounds nuw i8, ptr %.035, i64 8
end_hunk_3
begin_hunk_4_@dt_dev_clear_scharr_mask:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 576 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !201
  tail call void @free(ptr noundef %i.i) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %.0 = load ptr, ptr %i.j, align 8, !tbaa !100   ; 2 uses
  %.not10 = icmp eq ptr %.0, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_rebuild(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !207
  %i.e = or i32 %i.d, 2
  store i32 %i.e, ptr %i.c, align 8, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !208 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 344 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !207
  %i.j = or i32 %i.i, 2
  store i32 %i.j, ptr %i.h, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !274 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 344 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !207
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 8, !tbaa !207
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 1, ptr %i.p, align 8, !tbaa !184
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i32 1, ptr %i.q, align 8, !tbaa !184
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store i32 1, ptr %i.r, align 8, !tbaa !184
  tail call void @dt_dev_invalidate_all(ptr noundef %0) #23
  ret void
}

declare void @dt_dev_invalidate_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_create_nodes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 612
  store atomic i32 0, ptr %i.c seq_cst, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !198
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !275

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 484, ptr noundef nonnull @__func__.dt_dev_pixelpipe_create_nodes, ptr noundef nonnull @.str.70) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2568 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202
  %.not58 = icmp eq ptr %i.g, null
  br i1 %.not58, label %bb.e, label %bb.d, !prof !275

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 485, ptr noundef nonnull @__func__.dt_dev_pixelpipe_create_nodes, ptr noundef nonnull @.str.71) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2576 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !206
  %.not60 = icmp eq ptr %i.i, null
  br i1 %.not60, label %bb.g, label %bb.f, !prof !275

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.69, i32 noundef 486, ptr noundef nonnull @__func__.dt_dev_pixelpipe_create_nodes, ptr noundef nonnull @.str.72) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2112
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !276
  %i.l = tail call ptr @dt_ioppr_iop_order_copy_deep(ptr noundef %i.k) #23
  store ptr %i.l, ptr %i.h, align 16, !tbaa !206
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2088
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !277
  %i.o = tail call ptr @g_list_copy(ptr noundef %i.n) #23 ; 3 uses
  store ptr %i.o, ptr %i.f, align 8, !tbaa !202
  %.not6162 = icmp eq ptr %i.o, null
  br i1 %.not6162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #23 ; 0 uses
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.05563 = phi ptr [ %i.o, %.lr.ph ], [ %i.ay, %bb.h ] ; 2 uses
  %i.s = load ptr, ptr %.05563, align 8, !tbaa !102 ; 4 uses
  %i.t = tail call noalias dereferenceable_or_null(624) ptr @calloc(i64 noundef 1, i64 noundef 624) #22 ; 20 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 672
  %i.v = load i32, ptr %i.u, align 16, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %i.v, ptr %i.w, align 16, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  store i32 2, ptr %i.x, align 4, !tbaa !209
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr null, ptr %i.y, align 8, !tbaa !278
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store i32 256, ptr %i.z, align 16, !tbaa !279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store i32 0, ptr %i.aa, align 16, !tbaa !210
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  store i32 0, ptr %i.ab, align 16, !tbaa !280
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !211
  %i.ae = tail call i32 %i.ad(ptr noundef %i.s, ptr noundef nonnull %0, ptr noundef null) #23
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = select i1 %i.af, i32 1, i32 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 132
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !281
  %i.ai = load float, ptr %i.p, align 8, !tbaa !194
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  store float %i.ai, ptr %i.aj, align 8, !tbaa !282
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 108
  %i.al = load <2 x i32>, ptr %i.q, align 16, !tbaa !29
  store <2 x i32> %i.al, ptr %i.ak, align 4, !tbaa !29
  store ptr %i.s, ptr %i.t, align 16, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %0, ptr %i.am, align 8, !tbaa !212
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr null, ptr %i.an, align 16, !tbaa !283
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store i64 0, ptr %i.ao, align 8, !tbaa !213
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  store i32 0, ptr %i.ap, align 8, !tbaa !284
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 220
  store i32 0, ptr %i.aq, align 4, !tbaa !214
  %i.ar = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_direct_hash, ptr noundef nonnull @g_direct_equal, ptr noundef null, ptr noundef nonnull @free) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !205
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.at, i8 0, i64 40, i1 false)
  %i.au = load ptr, ptr %i.t, align 16, !tbaa !111
  tail call void @dt_iop_init_pipe(ptr noundef %i.au, ptr noundef nonnull %0, ptr noundef nonnull %i.t) #23
  %i.av = load ptr, ptr %i.d, align 16, !tbaa !198
  %i.aw = tail call ptr @g_list_append(ptr noundef %i.av, ptr noundef nonnull %i.t) #23
  store ptr %i.aw, ptr %i.d, align 16, !tbaa !198
  %i.ax = getelementptr inbounds nuw i8, ptr %.05563, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !215 ; 2 uses
  %.not61 = icmp eq ptr %i.ay, null
  br i1 %.not61, label %._crit_edge, label %bb.h
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare ptr @dt_ioppr_iop_order_copy_deep(ptr noundef) local_unnamed_addr #3

declare ptr @g_list_copy(ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #13

declare void @dt_iop_init_pipe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @dt_dev_pixelpipe_synch_all(ptr noundef %0, ptr nofree noundef captures(none) initializes((2496, 2504)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.timeval, align 16           ; 4 uses
  %4 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit.thread, label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit.thread:                   ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store ptr null, ptr %i.d, align 16, !tbaa !216
  br label %bb.c

dt_get_debug_wtime.exit:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #23 ; 0 uses
  %i.f = load <2 x i64>, ptr %4, align 16, !tbaa !28
  %i.g = add nsw <2 x i64> %i.f, <i64 -1290608000, i64 0>
  %i.h = sitofp <2 x i64> %i.g to <2 x double>    ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 1
  %i.j = fmul reassoc nnan nsz arcp contract afn double %i.i, f0x3EB0C6F7A0B5ED8D
  %i.k = extractelement <2 x double> %i.h, i64 0
  %i.l = fadd reassoc nsz arcp contract afn double %i.j, %i.k ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.m = and i32 %.pre, 2097152
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store ptr null, ptr %i.o, align 16, !tbaa !216
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %dt_get_debug_wtime.exit
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.73, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74)
  br label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit.thread, %bb.b, %dt_get_debug_wtime.exit
  %i.p = phi double [ 0.000000e+00, %dt_get_debug_wtime.exit.thread ], [ %i.l, %bb.b ], [ %i.l, %dt_get_debug_wtime.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.03441 = load ptr, ptr %i.q, align 8, !tbaa !100 ; 2 uses
  %.not3542 = icmp eq ptr %.03441, null
  br i1 %.not3542, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %.not.i38 = icmp eq i32 %i.r, 0
  br i1 %.not.i38, label %dt_get_debug_wtime.exit39.thread, label %dt_get_debug_wtime.exit39

dt_get_debug_wtime.exit39:                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.s = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #23 ; 0 uses
  %i.t = load <2 x i64>, ptr %3, align 16, !tbaa !28
  %i.u = add nsw <2 x i64> %i.t, <i64 -1290608000, i64 0>
  %i.v = sitofp <2 x i64> %i.u to <2 x double>    ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 1
  %i.x = fmul reassoc nnan nsz arcp contract afn double %i.w, f0x3EB0C6F7A0B5ED8D
  %i.y = extractelement <2 x double> %i.v, i64 0
  %i.z = fadd reassoc nsz arcp contract afn double %i.x, %i.y ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre49 = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.aa = and i32 %.pre49, 2097152
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %dt_get_debug_wtime.exit39.thread, label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03443 = phi ptr [ %.034, %.lr.ph ], [ %.03441, %bb.c ] ; 2 uses
  %i.ac = load ptr, ptr %.03443, align 8, !tbaa !102 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store i64 0, ptr %i.ad, align 8, !tbaa !213
  %i.ae = load ptr, ptr %i.ac, align 16, !tbaa !111 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 676
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !285
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i32 %i.ag, ptr %i.ah, align 16, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 688
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !286
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 776
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !287
  tail call void @dt_iop_commit_params(ptr noundef %i.ae, ptr noundef %i.aj, ptr noundef %i.al, ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #23
  %i.am = getelementptr inbounds nuw i8, ptr %.03443, i64 8
  %.034 = load ptr, ptr %i.am, align 8, !tbaa !100 ; 2 uses
  %.not35 = icmp eq ptr %.034, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %dt_get_debug_wtime.exit39
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.75, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74)
  br label %dt_get_debug_wtime.exit39.thread

dt_get_debug_wtime.exit39.thread:                 ; preds = %._crit_edge, %bb.d, %dt_get_debug_wtime.exit39
  %i.an = phi double [ %i.z, %dt_get_debug_wtime.exit39 ], [ %i.z, %bb.d ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !199 ; 2 uses
  %.not.i40 = icmp eq ptr %i.aq, null
  br i1 %.not.i40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %dt_get_debug_wtime.exit39.thread
  tail call void @free(ptr noundef nonnull %i.aq) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %dt_get_debug_wtime.exit39.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ao, i8 0, i64 40, i1 false)
  %.011.i = load ptr, ptr %i.q, align 16, !tbaa !100 ; 2 uses
  %.not1012.i = icmp eq ptr %.011.i, null
  br i1 %.not1012.i, label %dt_dev_clear_scharr_mask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.013.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.011.i, %bb.f ] ; 2 uses
  %i.ar = load ptr, ptr %.013.i, align 8, !tbaa !102 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 528 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !200
  tail call void @free(ptr noundef %i.at) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 576 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !201
  tail call void @free(ptr noundef %i.av) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.au, i8 0, i64 48, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %.0.i = load ptr, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %.not10.i = icmp eq ptr %.0.i, null
  br i1 %.not10.i, label %dt_dev_clear_scharr_mask.exit, label %.lr.ph.i

dt_dev_clear_scharr_mask.exit:                    ; preds = %.lr.ph.i, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.ax, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 2 uses
  %.03344 = load ptr, ptr %i.ay, align 8, !tbaa !100 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !217
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = icmp ne ptr %.03344, null
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph47, label %._crit_edge48

._crit_edge48:                                    ; preds = %.lr.ph47, %dt_dev_clear_scharr_mask.exit
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.bf = and i32 %i.be, 2097152
  %.not37 = icmp eq i32 %i.bf, 0
  br i1 %.not37, label %bb.h, label %bb.g

.lr.ph47:                                         ; preds = %dt_dev_clear_scharr_mask.exit, %.lr.ph47
  %.03346 = phi ptr [ %.033, %.lr.ph47 ], [ %.03344, %dt_dev_clear_scharr_mask.exit ] ; 2 uses
  %.045 = phi i32 [ %i.bh, %.lr.ph47 ], [ 0, %dt_dev_clear_scharr_mask.exit ]
  %.033.val = load ptr, ptr %.03346, align 8, !tbaa !102
  tail call fastcc void @_dev_pixelpipe_synch(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.033.val)
  %i.bg = getelementptr inbounds nuw i8, ptr %.03346, i64 8
  %i.bh = add nuw nsw i32 %.045, 1                ; 2 uses
  %.033 = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 2 uses
  %i.bi = load i32, ptr %i.az, align 16, !tbaa !217
  %i.bj = icmp slt i32 %i.bh, %i.bi
  %i.bk = icmp ne ptr %.033, null
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph47, label %._crit_edge48

bb.g:                                             ; preds = %._crit_edge48
  %i.bm = fsub reassoc nsz arcp contract afn double %i.an, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bn = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #23 ; 0 uses
  %i.bo = load i64, ptr %2, align 8, !tbaa !219
  %i.bp = add nsw i64 %i.bo, -1290608000
  %i.bq = sitofp reassoc nsz arcp contract afn i64 %i.bp to double
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !220
  %i.bt = sitofp reassoc nsz arcp contract afn i64 %i.bs to double
  %i.bu = fmul reassoc nnan nsz arcp contract afn double %i.bt, f0x3EB0C6F7A0B5ED8D
  %i.bv = fadd reassoc nsz arcp contract afn double %i.bu, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bw = fsub reassoc nsz arcp contract afn double %i.bv, %i.an
  tail call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.76, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, double noundef %i.bm, double noundef %i.bw)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge48
  %i.bx = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #23 ; 0 uses
  ret void
}

declare void @dt_iop_commit_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_dev_pixelpipe_synch(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.c = load i32, ptr %i.b, align 16, !tbaa !288
  %i.d = tail call i32 @dt_image_is_rawprepare_supported(ptr noundef nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.08013 = load ptr, ptr %i.e, align 16, !tbaa !100 ; 2 uses
  %.not14 = icmp eq ptr %.08013, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2496
  %i.h = icmp eq i32 %i.d, 0                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 52
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ag, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.08015 = phi ptr [ %.08013, %.lr.ph ], [ %.080, %bb.ag ] ; 2 uses
  %i.m = load ptr, ptr %.08015, align 8, !tbaa !102 ; 19 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !111 ; 2 uses
  %i.o = load ptr, ptr %.0.val, align 8, !tbaa !222
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.f, align 8, !tbaa !289  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 10 uses
  store i32 %i.q, ptr %i.r, align 16, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !223
  %i.u = tail call i32 %i.t() #23
  %i.v = and i32 %i.u, 65536
  %.not84 = icmp eq i32 %i.v, 0
  br i1 %.not84, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not85 = icmp eq i32 %i.q, 0
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 16, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ]
  store ptr %i.x, ptr %i.g, align 16, !tbaa !216
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.y = load ptr, ptr %i.m, align 16, !tbaa !111
  %i.z = getelementptr i8, ptr %i.y, i64 952
  %.val109 = load ptr, ptr %i.z, align 8, !tbaa !224
  %i.aa = getelementptr inbounds nuw i8, ptr %.val109, i64 496
  %i.ab = tail call i32 @g_strcmp0(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.125) #23
  %.not.i.not = icmp eq i32 %i.ab, 0
  br i1 %.not.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.m, align 16, !tbaa !111
  %i.ad = getelementptr i8, ptr %i.ac, i64 952
  %.val108 = load ptr, ptr %i.ad, align 8, !tbaa !224
  %i.ae = getelementptr inbounds nuw i8, ptr %.val108, i64 496
  %i.af = tail call i32 @g_strcmp0(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.126) #23
  %.not.i110.not = icmp eq i32 %i.af, 0
  br i1 %.not.i110.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_4
begin_hunk_5_@_dev_pixelpipe_process_rec:bb.a
  %.not19.i = icmp eq i32 %i.dg, 0
  br i1 %.not19.i, label %bb.z, label %_dev_pixelpipe_early_exit.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dh = and i32 %.val25.i, 4
  %.not20.i = icmp eq i32 %i.dh, 0
  br i1 %.not20.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dj = load i32, ptr %i.di, align 16, !tbaa !319
  %.not21.i = icmp eq i32 %i.dj, 0
  br i1 %.not21.i, label %bb.ab, label %_dev_pixelpipe_early_exit.exit.thread

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.not17.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dl = load i32, ptr %i.dk, align 16, !tbaa !319
  %.not23.i = icmp eq i32 %i.dl, 0
  br i1 %.not23.i, label %bb.ad, label %_dev_pixelpipe_early_exit.exit.thread

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !207
  switch i32 %i.dn, label %_dev_pixelpipe_early_exit.exit.thread [
    i32 0, label %_dev_pixelpipe_early_exit.exit.thread503
    i32 8, label %_dev_pixelpipe_early_exit.exit.thread503
  ]

_dev_pixelpipe_early_exit.exit.thread503:         ; preds = %bb.ad, %bb.ad
  %i.do = load atomic i32, ptr %i.i seq_cst, align 4
  %.not521 = icmp eq i32 %i.do, 0                 ; 2 uses
  br i1 %.not382, label %bb.ae, label %bb.bf

bb.ae:                                            ; preds = %_dev_pixelpipe_early_exit.exit.thread503
  br i1 %.not521, label %bb.af, label %_dev_pixelpipe_early_exit.exit.thread

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call fastcc void @dt_get_perf_times(ptr noundef %10)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !195 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, 63
  %i.dt = icmp eq i64 %i.ds, 0                    ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !150
  %i.dw = fcmp reassoc nsz arcp contract afn oeq float %i.dv, 1.000000e+00
  br i1 %i.dw, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.dx = load i32, ptr %5, align 4, !tbaa !146
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !147
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ed = load i32, ptr %i.ec, align 16, !tbaa !176
  %i.ee = load i32, ptr %i.bi, align 4, !tbaa !148
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !180
  %i.ei = load i32, ptr %i.bm, align 4, !tbaa !149
  %i.ej = icmp eq i32 %i.eh, %i.ei
  %or.cond3 = select i1 %i.ej, i1 %i.dt, i1 false
  br i1 %or.cond3, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.dq, ptr %2, align 8, !tbaa !32
  %i.ek = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.el = and i32 %i.ek, 33554432
  %.not395 = icmp eq i32 %i.el, 0
  br i1 %.not395, label %bb.be, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.151, ptr noundef nonnull %0, ptr noundef %.0364497, i32 noundef -2, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull @.str.74)
  br label %bb.be

bb.am:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.em = call i32 @dt_dev_pixelpipe_cache_get(ptr noundef nonnull %0, i64 noundef %i.bq, i64 noundef %i.bp, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0)
  %.not388 = icmp eq i32 %i.em, 0
  br i1 %.not388, label %bb.be, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eo = load float, ptr %i.en, align 8, !tbaa !150
  %i.ep = fcmp reassoc nsz arcp contract afn oeq float %i.eo, 1.000000e+00
  br i1 %i.ep, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.eq = load i32, ptr %9, align 8, !tbaa !146
  %i.er = call i32 @llvm.smax.i32(i32 %i.eq, i32 0) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !147
  %i.eu = call i32 @llvm.smax.i32(i32 %i.et, i32 0) ; 2 uses
  %i.ev = load i32, ptr %i.bi, align 4, !tbaa !148 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 16, !tbaa !176 ; 2 uses
  %i.ey = sub nsw i32 %i.ex, %i.er                ; 2 uses
  %.not391 = icmp sgt i32 %i.ev, %i.ey            ; 2 uses
  %i.ez = load i32, ptr %i.bm, align 4, !tbaa !149 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !180 ; 2 uses
  %. = call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.ey)
  %spec.select507 = call i32 @llvm.smax.i32(i32 %., i32 0)
  %i.fc = zext nneg i32 %spec.select507 to i64
  %i.fd = mul i64 %i.bh, %i.fc                    ; 3 uses
  %i.fe = sext i32 %i.ev to i64
  %i.ff = mul i64 %i.bh, %i.fe                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %11, ptr noundef nonnull align 8 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !227
  %i.fg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %i.ex, ptr %i.fg, align 4, !tbaa !148
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.fb, ptr %i.fh, align 4, !tbaa !149
  %i.fi = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.fj = and i32 %i.fi, 33554432
  %.not393 = icmp eq i32 %i.fj, 0
  br i1 %.not393, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = sub nsw i32 %i.fb, %i.eu
  %.not392 = icmp sgt i32 %i.ez, %i.fk
  %i.fl = select i1 %.not391, ptr @.str.154, ptr @.str.6
  %i.fm = select i1 %.not392, ptr @.str.155, ptr @.str.6
  %i.fn = select i1 %i.dt, ptr @.str.6, ptr @.str.156
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.152, ptr noundef nonnull %0, ptr noundef %.0364497, i32 noundef -2, ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fm, ptr noundef nonnull %i.fn, i64 noundef %i.bh)
  %.pre535 = load i32, ptr %i.bm, align 4, !tbaa !149
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fo = phi i32 [ %.pre535, %bb.ap ], [ %i.ez, %bb.ao ]
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph528, label %._crit_edge529

.lr.ph528:                                        ; preds = %bb.aq
  %i.fq = sub i64 %i.ff, %i.fd
  %i.fr = zext nneg i32 %i.eu to i64
  br label %bb.ar

._crit_edge529:                                   ; preds = %bb.av, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.be

bb.ar:                                            ; preds = %.lr.ph528, %bb.av
  %indvars.iv531 = phi i64 [ 0, %.lr.ph528 ], [ %indvars.iv.next532, %bb.av ] ; 3 uses
  %i.fs = load ptr, ptr %2, align 8, !tbaa !32
  %i.ft = mul i64 %i.bh, %indvars.iv531
  %i.fu = load i32, ptr %i.bi, align 4, !tbaa !148
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fw ; 3 uses
  %i.fy = add nuw nsw i64 %indvars.iv531, %i.fr   ; 2 uses
  %i.fz = load i32, ptr %i.fa, align 4, !tbaa !180
  %i.ga = sext i32 %i.fz to i64
  %i.gb = icmp slt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.gc = load ptr, ptr %i.dp, align 8, !tbaa !195
  %i.gd = load i32, ptr %i.ew, align 16, !tbaa !176
  %i.ge = trunc nuw nsw i64 %i.fy to i32
  %i.gf = mul nsw i32 %i.gd, %i.ge
  %i.gg = add nsw i32 %i.gf, %i.er
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul i64 %i.bh, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr align 1 %i.gj, i64 %i.fd, i1 false)
  br i1 %.not391, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fd
  call void @llvm.memset.p0.i64(ptr align 1 %i.gk, i8 0, i64 %i.fq, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr align 1 %i.fx, i8 0, i64 %i.ff, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.gl = load i32, ptr %i.bm, align 4, !tbaa !149
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next532, %i.gm
  br i1 %i.gn, label %bb.ar, label %._crit_edge529

bb.aw:                                            ; preds = %bb.an
  %i.go = load float, ptr %i.du, align 4, !tbaa !150
  %i.gp = load <2 x i32>, ptr %9, align 8, !tbaa !29
  %i.gq = sitofp <2 x i32> %i.gp to <2 x float>
  %i.gr = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fdiv reassoc nsz arcp contract afn <2 x float> %i.gq, %i.gs
  %i.gu = fptosi <2 x float> %i.gt to <2 x i32>
  store <2 x i32> %i.gu, ptr %9, align 8, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gx = load <2 x i32>, ptr %i.gv, align 16, !tbaa !29
  store <2 x i32> %i.gx, ptr %i.gw, align 8, !tbaa !29
  store float 1.000000e+00, ptr %i.en, align 8, !tbaa !150
  %i.gy = icmp eq i64 %i.bh, 16                   ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 1780
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !320
  %i.hb = icmp ne i32 %i.ha, 0                    ; 2 uses
  %i.hc = zext i1 %i.hb to i32
  %i.hd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.he = and i32 %i.hd, 33554432
  %.not389 = icmp eq i32 %i.he, 0
  br i1 %.not389, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !174
  %i.hh = select i1 %i.gy, ptr @.str.6, ptr @.str.159
  %i.hi = select i1 %i.dt, ptr @.str.6, ptr @.str.160
  %i.hj = select i1 %i.hb, ptr @.str.161, ptr @.str.6
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.157, ptr noundef nonnull %0, ptr noundef %.0364497, i32 noundef %i.hg, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hi, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.hj)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %or.cond5 = select i1 %i.gy, i1 %i.dt, i1 false
  %i.hk = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  br i1 %or.cond5, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hl = load ptr, ptr %i.dp, align 8, !tbaa !195
  call void @dt_iop_clip_and_zoom(ptr noundef %i.hk, ptr noundef %i.hl, ptr noundef nonnull %5, ptr noundef nonnull %9, i32 noundef %i.hc) #23
  br label %bb.be

bb.ba:                                            ; preds = %bb.ay
  %i.hm = load i32, ptr %i.bi, align 4, !tbaa !148
  %i.hn = sext i32 %i.hm to i64
  %i.ho = load i32, ptr %i.bm, align 4, !tbaa !149
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul i64 %i.bh, %i.hn
  %i.hr = mul i64 %i.hq, %i.hp
  call void @llvm.memset.p0.i64(ptr align 1 %i.hk, i8 0, i64 %i.hr, i1 false)
  br i1 %i.dt, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hs = load ptr, ptr %i.dp, align 8, !tbaa !195
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.162, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull @.str.163, ptr noundef %i.hs)
  %i.ht = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.164, i32 noundef 5) #23
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ht) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %i.gy, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hu = trunc i64 %i.bh to i32
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.165, ptr noundef nonnull %0, ptr noundef null, i32 noundef -2, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull @.str.166, i32 noundef %i.hu)
  br label %bb.be

bb.be:                                            ; preds = %bb.az, %bb.bd, %bb.bc, %bb.am, %._crit_edge529, %bb.ak, %bb.al
  %i.hv = load i32, ptr %i.br, align 4, !tbaa !52
  %i.hw = call ptr @dt_dev_pixelpipe_type_to_str(i32 noundef %i.hv)
  call void (ptr, ptr, ptr, ...) @dt_show_times_f(ptr noundef nonnull %10, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, ptr noundef nonnull %i.hw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_dev_pixelpipe_early_exit.exit.thread

bb.bf:                                            ; preds = %_dev_pixelpipe_early_exit.exit.thread503
  br i1 %.not521, label %bb.bg, label %_dev_pixelpipe_early_exit.exit.thread

bb.bg:                                            ; preds = %bb.bf
  %i.hx = getelementptr inbounds nuw i8, ptr %.0364497, i64 328
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !321
  call void %i.hy(ptr noundef %.0364497, ptr noundef %.0363499, ptr noundef nonnull %5, ptr noundef nonnull %9) #23
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.ia = and i32 %i.hz, 33554432
  %.not397 = icmp eq i32 %i.ia, 0
  br i1 %.not397, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ib = load i128, ptr %5, align 1
  %i.ic = load i128, ptr %9, align 8
  %i.id = xor i128 %i.ib, %i.ic
  %i.ie = getelementptr i8, ptr %5, i64 16
  %i.if = getelementptr i8, ptr %9, i64 16
  %i.ig = load i32, ptr %i.ie, align 1
  %i.ih = load i32, ptr %i.if, align 8
  %i.ii = zext i32 %i.ig to i128
  %i.ij = zext i32 %i.ih to i128
  %i.ik = xor i128 %i.ii, %i.ij
  %i.il = or i128 %i.id, %i.ik
  %i.im = icmp ne i128 %i.il, 0
  %i.in = zext i1 %i.im to i32
  %.not398 = icmp eq i32 %i.in, 0
  br i1 %.not398, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.ip = load i32, ptr %i.io, align 16, !tbaa !96
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.169, ptr noundef nonnull %0, ptr noundef nonnull %.0364497, i32 noundef -2, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull @.str.96, i32 noundef %i.ip)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %12, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %12, ptr %i.d, align 8, !tbaa !139
  %i.iq = load ptr, ptr %7, align 8, !tbaa !102   ; 12 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.ir, ptr noundef nonnull align 8 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !227
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.is, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !227
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !229
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !229
  %i.ix = add nsw i32 %8, -1
  %i.iy = call fastcc i32 @_dev_pixelpipe_process_rec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %9, ptr noundef %i.iu, ptr noundef %i.iw, i32 noundef %i.ix)
  %.not399 = icmp eq i32 %i.iy, 0
  br i1 %.not399, label %bb.bk, label %bb.eh

bb.bk:                                            ; preds = %bb.bj
  %i.iz = load ptr, ptr %i.d, align 8, !tbaa !139 ; 3 uses
  %i.ja = call i64 @dt_iop_buffer_dsc_to_bpp(ptr noundef %i.iz) #23 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 352 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 224 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jc, ptr noundef nonnull align 16 dereferenceable(128) %i.iz, i64 128, i1 false), !tbaa.struct !144
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jb, ptr noundef nonnull align 16 dereferenceable(128) %i.iz, i64 128, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %.0364497, i64 112
  %i.je = load ptr, ptr %i.jd, align 16, !tbaa !316
  call void %i.je(ptr noundef nonnull %.0364497, ptr noundef nonnull %0, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.jb) #23
  %i.jf = load ptr, ptr %4, align 8, !tbaa !139
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jg, ptr noundef nonnull align 16 dereferenceable(128) %i.jb, i64 128, i1 false), !tbaa.struct !144
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.jf, ptr noundef nonnull align 16 dereferenceable(128) %i.jb, i64 128, i1 false)
  %i.jh = load ptr, ptr %4, align 8, !tbaa !139
  %i.ji = call i64 @dt_iop_buffer_dsc_to_bpp(ptr noundef %i.jh) #23
  %i.jj = load atomic i32, ptr %i.i seq_cst, align 4
  %.not513 = icmp eq i32 %i.jj, 0
  br i1 %.not513, label %bb.bl, label %bb.eh

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.bf, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.jk = getelementptr i8, ptr %0, i64 628
  %.val462 = load i32, ptr %i.jk, align 4, !tbaa !137
  %.not514 = icmp eq i32 %.val462, 0
  br i1 %.not514, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %.val456 = load i32, ptr %i.br, align 4, !tbaa !52
  %i.jl = and i32 %.val456, 22
  %.not402 = icmp eq i32 %i.jl, 0
  br i1 %.not402, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jm = getelementptr inbounds nuw i8, ptr %.0364497, i64 64
  %i.jn = load ptr, ptr %i.jm, align 16, !tbaa !223
  %i.jo = call i32 %i.jn() #23
  %i.jp = lshr i32 %i.jo, 20
  %.lobit = and i32 %i.jp, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl
  %i.jq = phi i32 [ 0, %bb.bn ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ %.lobit, %bb.bo ]
  %i.jr = call i32 @dt_dev_pixelpipe_cache_get(ptr noundef nonnull %0, i64 noundef %i.bq, i64 noundef %i.bp, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %.0364497, i32 noundef %i.jq) ; 0 uses
  %i.js = load atomic i32, ptr %i.i seq_cst, align 4
  %.not515 = icmp eq i32 %i.js, 0
  br i1 %.not515, label %bb.bq, label %bb.eh

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call fastcc void @dt_get_perf_times(ptr noundef %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 1, ptr %i.e, align 4, !tbaa !29
  %i.jt = getelementptr i8, ptr %.0364497, i64 952 ; 3 uses
  %.0364.val458 = load ptr, ptr %i.jt, align 8, !tbaa !224
  %i.ju = getelementptr inbounds nuw i8, ptr %.0364.val458, i64 496
  %i.jv = call i32 @g_strcmp0(ptr noundef nonnull %i.ju, ptr noundef nonnull @.str.149) #23
  %.not.i.i473.not = icmp eq i32 %i.jv, 0
  br i1 %.not.i.i473.not, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = getelementptr i8, ptr %0, i64 628
  %.val465 = load i32, ptr %i.jw, align 4, !tbaa !137
  %.not516 = icmp eq i32 %.val465, 0
  br i1 %.not516, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jx = getelementptr inbounds nuw i8, ptr %.0364497, i64 88
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !322
  %i.jz = call i32 %i.jy() #23
  %i.ka = and i32 %i.jz, 1
  %.not406 = icmp eq i32 %i.ka, 0
  %i.kb = icmp eq i64 %i.ja, %i.ji
end_hunk_5
begin_hunk_6_@llvm.minnum.f32
declare float @llvm.minnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @_pixelpipe_pick_samples(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._GSList, align 8            ; 5 uses
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = tail call ptr @dt_ioppr_get_histogram_profile_info(ptr noundef %0) #23 ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !248 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.h = tail call ptr @dt_ioppr_add_profile_info_to_list(ptr noundef %0, i32 noundef %i.f, ptr noundef nonnull %i.g, i32 noundef 1) #23 ; 4 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !124 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !246
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  store ptr %i.o, ptr %5, align 8, !tbaa !374
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.k, ptr %i.p, align 8, !tbaa !375
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %.not3237 = icmp eq ptr %i.k, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.b
  %.044 = phi ptr [ %5, %.thread ], [ %i.k, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.t = icmp ne ptr %i.h, null
  %i.u = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %.138 = phi ptr [ %.044, %.lr.ph ], [ %i.ar, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.v = load ptr, ptr %.138, align 8, !tbaa !374 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.x = load i32, ptr %i.w, align 4, !tbaa !376
  %.not33 = icmp eq i32 %i.x, 0
  br i1 %.not33, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 @dt_color_picker_box(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.v, i32 noundef 0, ptr noundef nonnull %i.a) #23
  %.not34 = icmp eq i32 %i.y, 0
  br i1 %.not34, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.aa = and i32 %i.z, 167772160
  %.not35 = icmp eq i32 %i.aa, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !251
  %.not36 = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not36, ptr @.str.6, ptr @.str.206
  %i.ah = load i32, ptr %i.a, align 16, !tbaa !29
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !29
  %i.aj = load i32, ptr %i.r, align 8, !tbaa !29
  %i.ak = load i32, ptr %i.s, align 4, !tbaa !29
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef %1, i32 noundef -2, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull %i.ag, i32 noundef %i.ah, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !251
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 3 uses
  call void @dt_color_picker_helper(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef %i.am, ptr noundef nonnull %i.an, i32 noundef 2, i32 noundef 2, ptr noundef %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  call void @dt_ioppr_transform_image_colorspace(ptr noundef %1, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef %i.h) #23
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  call void @dt_ioppr_transform_image_colorspace_rgb(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ap, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.209) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.138, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !375 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not32 = icmp eq ptr %i.ar, null
  br i1 %.not32, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.j, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

declare ptr @dt_ioppr_add_profile_info_to_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_histogram_profile_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #14

declare ptr @dt_ioppr_get_pipe_work_profile_info(ptr noundef) local_unnamed_addr #3

declare ptr @dt_colorspaces_get_name(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_tiling_piece_fits_host_memory(ptr noundef, i64 noundef, i64 noundef, i32 noundef, float noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_dump_pipe_pfm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_get_fast_blendcache(i64 noundef range(i64 0, 4611686018427387904) %0, i64 noundef %1, ptr nofree noundef captures(none) initializes((2608, 2616)) %2) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2600 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.b) #23
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 %0, 2
  %i.d = tail call ptr @dt_alloc_aligned(i64 noundef %i.c) #23 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.d, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2608
  store i64 %1, ptr %i.f, align 16, !tbaa !170
  ret ptr %i.e
}

declare i32 @dt_str_commasubstring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_cpu_benchmark(i32 %.644.val, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.rusage, align 8             ; 3 uses
  %7 = alloca %struct.timeval, align 16           ; 4 uses
  %8 = alloca %struct.rusage, align 8             ; 3 uses
  %9 = alloca %struct.timeval, align 16           ; 4 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.b = and i32 %.644.val, 2
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = select i1 %.not, i32 50, i32 100         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.h = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #23 ; 0 uses
  %i.i = load <2 x i64>, ptr %9, align 16, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.j = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %8) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !377
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.05 = phi i32 [ %i.n, %.preheader ], [ 0, %bb.a ]
  %i.m = load ptr, ptr %i.k, align 16, !tbaa !377
  call void %i.m(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %i.n = add nuw nsw i32 %.05, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.o = mul nsw i32 %i.g, %i.e
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to double
  %i.q = fmul reassoc nnan nsz arcp contract afn double %i.p, f0x3EB0C6F7A0B5ED8D
  %i.r = fptrunc reassoc nsz arcp contract afn double %i.q to float ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.s = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #23 ; 0 uses
  %i.t = add nsw <2 x i64> %i.i, <i64 -1290608000, i64 0>
  %i.u = sitofp <2 x i64> %i.t to <2 x double>
  %i.v = load <2 x i64>, ptr %7, align 16, !tbaa !28
  %i.w = add nsw <2 x i64> %i.v, <i64 -1290608000, i64 0>
  %i.x = sitofp <2 x i64> %i.w to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.y = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %6) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.z = fsub reassoc nsz arcp contract afn <2 x double> %i.x, %i.u ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  %reass.mul = fmul reassoc nnan nsz arcp contract afn double %i.aa, f0x3EB0C6F7A0B5ED8D
  %i.ab = extractelement <2 x double> %i.z, i64 0
  %i.ac = fadd reassoc nsz arcp contract afn double %i.ab, %reass.mul
  %i.ad = uitofp nneg i32 %i.c to double
  %i.ae = fdiv reassoc nsz arcp contract afn double %i.ac, %i.ad
  %i.af = fptrunc reassoc nsz arcp contract afn double %i.ae to float ; 2 uses
  %i.ag = select i1 %.not, ptr @.str.36, ptr @.str.28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ai = fpext reassoc nsz arcp contract afn float %i.af to double
  %i.aj = fpext reassoc nsz arcp contract afn float %i.r to double
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.r, %i.af
  %i.al = fpext reassoc nsz arcp contract afn float %i.ak to double
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, double noundef %i.ai, double noundef %i.aj, double noundef %i.al) #23
  store i32 %i.a, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  ret void
}

declare i32 @dt_develop_blend_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_pixelpipe_picker(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %7, i32 noundef %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 9 uses
  %i.b = alloca [3 x [4 x float]], align 16       ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = call i32 @dt_color_picker_box(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.e, i32 noundef %9, ptr noundef nonnull %i.a) #23
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !92
  %i.h = and i32 %i.g, 167772160
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %.split.us.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %9, 0
  %i.j = select i1 %i.i, ptr @.str.203, ptr @.str.204
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.n = load i32, ptr %i.m, align 16, !tbaa !140
  %i.o = call ptr @dt_iop_colorspace_to_name(i32 noundef %i.n) #23
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.q = load float, ptr %i.p, align 16, !tbaa !141
  %i.r = fpext reassoc nsz arcp contract afn float %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !141
  %i.u = fpext <2 x float> %i.t to <2 x double>   ; 2 uses
  %i.v = call ptr @dt_iop_colorspace_to_name(i32 noundef %8) #23
  %i.w = call i32 @dt_iop_color_picker_get_active_cst(ptr noundef %0) #23
  %i.x = call ptr @dt_iop_colorspace_to_name(i32 noundef %i.w) #23
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !251
  %.not35 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not35, ptr @.str.6, ptr @.str.206
  %i.ae = load i32, ptr %i.a, align 16, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = extractelement <2 x double> %i.u, i64 0
  %i.am = extractelement <2 x double> %i.u, i64 1
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.j, ptr noundef %i.l, ptr noundef %0, i32 noundef -1, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef %i.o, double noundef %i.r, double noundef %i.al, double noundef %i.am, ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %i.ad, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ak)
  br label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.b, %bb.c
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !124
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !251
  %i.as = call i32 @dt_iop_color_picker_get_active_cst(ptr noundef %0) #23
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !212
  %i.av = call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %i.au) #23
  call void @dt_color_picker_helper(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef %i.ar, ptr noundef nonnull %i.b, i32 noundef %8, i32 noundef %i.as, ptr noundef %i.av) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = load float, ptr %i.ax, align 16, !tbaa !141
  store float %i.ay, ptr %6, align 4, !tbaa !141
  %i.az = load float, ptr %i.aw, align 16, !tbaa !141
  store float %i.az, ptr %7, align 4, !tbaa !141
  %i.ba = load float, ptr %i.b, align 16, !tbaa !141
  store float %i.ba, ptr %5, align 4, !tbaa !141
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !141
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bc, ptr %i.bd, align 4, !tbaa !141
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bf = load float, ptr %i.be, align 4, !tbaa !141
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bf, ptr %i.bg, align 4, !tbaa !141
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !141
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !141
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.bl, ptr %i.bm, align 4, !tbaa !141
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !141
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.bo, ptr %i.bp, align 4, !tbaa !141
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = load float, ptr %i.bq, align 8, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.br, ptr %i.bs, align 4, !tbaa !141
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.bu, ptr %i.bv, align 4, !tbaa !141
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !141
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !141
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !141
  br label %.split40.us

.split:                                           ; preds = %bb.a
  store float f0x7F7FFFFF, ptr %6, align 4, !tbaa !141
  store float f0xFF7FFFFF, ptr %7, align 4, !tbaa !141
  store float 0.000000e+00, ptr %5, align 4, !tbaa !141
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float f0x7F7FFFFF, ptr %i.cb, align 4, !tbaa !141
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float f0xFF7FFFFF, ptr %i.cc, align 4, !tbaa !141
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float 0.000000e+00, ptr %i.cd, align 4, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float f0x7F7FFFFF, ptr %i.ce, align 4, !tbaa !141
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float f0xFF7FFFFF, ptr %i.cf, align 4, !tbaa !141
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !141
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float f0x7F7FFFFF, ptr %i.ch, align 4, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float f0xFF7FFFFF, ptr %i.ci, align 4, !tbaa !141
  br label %.split40.us

.split40.us:                                      ; preds = %.split, %.split.us.preheader
  %.sink = phi float [ 0.000000e+00, %.split ], [ %i.ca, %.split.us.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %.sink, ptr %i.cj, align 4, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @dt_develop_blend_process(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #19

declare void @dt_control_queue_redraw_widget(ptr noundef) local_unnamed_addr #3

declare void @dt_histogram_helper(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

declare void @dt_dump_pfm_file(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dt_color_picker_box(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_iop_color_picker_get_active_cst(ptr noundef) local_unnamed_addr #3

declare void @dt_color_picker_helper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace_rgb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { memory(none) }
attributes #27 = { nounwind allocsize(1) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
end_hunk_6
