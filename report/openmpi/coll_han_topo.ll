Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_han_topo?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mca_coll_han_topo_init:bb.a
.lr.ph129.preheader:                              ; preds = %._crit_edge
  %i.af = load i32, ptr %i.y, align 4, !tbaa !61
  %wide.trip.count144 = zext nneg i32 %.0110.val.val to i64
  br label %.lr.ph129

.lr.ph:                                           ; preds = %.lr.ph.preheader172, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader172 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

bb.g:                                             ; preds = %.lr.ph129
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge130, label %.lr.ph129, !llvm.loop !10

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %bb.g
  %indvars.iv141 = phi i64 [ 1, %.lr.ph129.preheader ], [ %indvars.iv.next142, %bb.g ] ; 2 uses
  %.0103127.in = phi i32 [ %i.af, %.lr.ph129.preheader ], [ %.0103127, %bb.g ]
  %.0103127 = add nsw i32 %.0103127.in, 1         ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv141
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !61
  %.not118 = icmp eq i32 %i.aj, %.0103127
  br i1 %.not118, label %bb.g, label %._crit_edge130

._crit_edge130:                                   ; preds = %bb.g, %.lr.ph129, %._crit_edge.thread, %._crit_edge
  %.0105 = phi i32 [ 0, %._crit_edge ], [ 0, %._crit_edge.thread ], [ 1, %.lr.ph129 ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %.0105, ptr %i.b, align 4, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %.0110.val.val, ptr %i.ak, align 4, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.am = sub nsw i32 0, %.0110.val.val
  store i32 %i.am, ptr %i.al, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %.0111, i64 344 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69
  %i.at = call i32 %i.aq(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull @ompi_mpi_op_max, ptr noundef %.0111, ptr noundef %i.as) #6 ; 0 uses
  %i.au = load i32, ptr %i.ak, align 4, !tbaa !61
  %i.av = load i32, ptr %i.al, align 4, !tbaa !61
  %i.aw = sub nsw i32 0, %i.av
  %i.ax = icmp ne i32 %i.au, %i.aw                ; 2 uses
  %i.ay = zext i1 %i.ax to i32
  %i.az = load i32, ptr %i.b, align 4, !tbaa !61  ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  %or.cond = select i1 %i.ba, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge130
  %i.bb = call noalias ptr @malloc(i64 noundef %i.r) #7 ; 2 uses
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !65 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 272
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 280
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.bh = call i32 %i.be(ptr noundef nonnull %i.y, i32 noundef %.0110.val.val, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.bb, i32 noundef %.0110.val.val, ptr noundef nonnull @ompi_mpi_int, ptr noundef nonnull %.0111, ptr noundef nonnull %i.a, ptr noundef %i.bg) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge130
  %.0107 = phi ptr [ null, %._crit_edge130 ], [ %i.bb, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.0109 = phi ptr [ %i.y, %bb.i ], [ null, %bb.e ] ; 3 uses
  %.1108 = phi ptr [ %.0107, %bb.i ], [ null, %bb.e ] ; 9 uses
  %.0106 = phi i32 [ %i.ay, %bb.i ], [ 1, %bb.e ]
  %.1 = phi i32 [ %i.az, %bb.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 %.0106, ptr %i.c, align 4, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %.1, ptr %i.bi, align 4, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %.0110, i64 344 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !73
  %i.bp = call i32 %i.bm(ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %.0110, ptr noundef %i.bo) #6 ; 0 uses
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !61
  %.not119 = icmp eq i32 %i.bq, 0
  br i1 %.not119, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 649
  store i8 1, ptr %i.br, align 1, !tbaa !74
  call void @free(ptr noundef %i.u) #6
  %.not121 = icmp eq ptr %.0109, null
  br i1 %.not121, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %.0109) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not122 = icmp eq ptr %.1108, null
  br i1 %.not122, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %.1108) #6
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.bi, align 4, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 649
  store i8 0, ptr %i.bt, align 1, !tbaa !74
  %.not120 = icmp eq i32 %i.bs, 0
  br i1 %.not120, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o
  %i.bu = icmp sgt i32 %.val.val, 0
  br i1 %i.bu, label %.lr.ph138.preheader, label %._crit_edge139

.lr.ph138.preheader:                              ; preds = %.preheader
  %wide.trip.count154 = zext nneg i32 %.val.val to i64 ; 3 uses
  %min.iters.check160 = icmp ult i32 %.val.val, 4
  br i1 %min.iters.check160, label %.lr.ph138.preheader171, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph138.preheader
  %n.vec162 = and i64 %wide.trip.count154, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0110.val.val, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next166, %vector.body163 ] ; 2 uses
  %vec.ind165 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next167, %vector.body163 ] ; 3 uses
  %i.bv = sdiv <4 x i32> %vec.ind165, %broadcast.splat
  %i.bw = shl nuw nsw i64 %index164, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bw
  %interleaved.vec = shufflevector <4 x i32> %i.bv, <4 x i32> %vec.ind165, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec, ptr %i.bx, align 4, !tbaa !61
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %vec.ind.next167 = add <4 x i32> %vec.ind165, splat (i32 4)
  %i.by = icmp eq i64 %index.next166, %n.vec162
  br i1 %i.by, label %middle.block168, label %vector.body163, !llvm.loop !11

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count154
  br i1 %cmp.n169, label %._crit_edge139, label %.lr.ph138.preheader171

.lr.ph138.preheader171:                           ; preds = %.lr.ph138.preheader, %middle.block168
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph138.preheader ], [ %n.vec162, %middle.block168 ]
  br label %.lr.ph138

._crit_edge139:                                   ; preds = %.lr.ph138, %middle.block168, %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 648
  store i8 1, ptr %i.bz, align 8, !tbaa !75
  br label %bb.r

.lr.ph138:                                        ; preds = %.lr.ph138.preheader171, %.lr.ph138
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %.lr.ph138 ], [ %indvars.iv151.ph, %.lr.ph138.preheader171 ] ; 3 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv151 to i32 ; 2 uses
  %i.cb = sdiv i32 %i.ca, %.0110.val.val
  %.idx157 = shl nuw nsw i64 %indvars.iv151, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx157 ; 2 uses
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !61
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge139, label %.lr.ph138, !llvm.loop !12

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 648
  store i8 0, ptr %i.ce, align 8, !tbaa !75
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !77
  %i.cg = call i32 %i.cf(ptr noundef nonnull %i.a, ptr noundef null) #6 ; 0 uses
  %i.ch = icmp sgt i32 %.val.val, 0
  br i1 %i.ch, label %.lr.ph135.preheader, label %._crit_edge136

.lr.ph135.preheader:                              ; preds = %bb.q
  %wide.trip.count149 = zext nneg i32 %.val.val to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count149, 1
  %i.ci = icmp eq i32 %.val.val, 1
  br i1 %i.ci, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter = and i64 %wide.trip.count149, 2147483646
  br label %.lr.ph135

._crit_edge136.loopexit.unr-lcssa:                ; preds = %.lr.ph135
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge136, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge136.loopexit.unr-lcssa, %.lr.ph135.preheader
  %indvars.iv146.epil.init = phi i64 [ 0, %.lr.ph135.preheader ], [ %indvars.iv.next147.1, %._crit_edge136.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod173 = trunc i32 %.val.val to i1
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.cj = trunc nuw nsw i64 %indvars.iv146.epil.init to i32
  %i.ck = srem i32 %i.cj, %.0110.val.val
  %i.cl = zext i32 %i.ck to i64
  %i.cm = sub nuw nsw i64 %indvars.iv146.epil.init, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.1108, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !61
  %.idx.epil = shl nuw nsw i64 %indvars.iv146.epil.init, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.epil ; 2 uses
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !61
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.1108, i64 %indvars.iv146.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !61
  %i.cs = getelementptr i8, ptr %i.cp, i64 4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !61
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %.lr.ph135.epil.preheader, %._crit_edge136.loopexit.unr-lcssa, %bb.q
  call void @free(ptr noundef %.1108) #6
  br label %bb.r

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %indvars.iv146 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %indvars.iv.next147.1, %.lr.ph135 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter.next.1, %.lr.ph135 ]
  %i.ct = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.cu = srem i32 %i.ct, %.0110.val.val
  %i.cv = zext i32 %i.cu to i64
  %i.cw = sub nuw nsw i64 %indvars.iv146, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.1108, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !61
  %.idx = shl nuw nsw i64 %indvars.iv146, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx ; 2 uses
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !61
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.1108, i64 %indvars.iv146
  %i.db = load i32, ptr %i.da, align 4, !tbaa !61
  %i.dc = getelementptr i8, ptr %i.cz, i64 4
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !61
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146, 1 ; 4 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.next147 to i32
  %i.de = srem i32 %i.dd, %.0110.val.val
  %i.df = zext i32 %i.de to i64
  %i.dg = sub nuw nsw i64 %indvars.iv.next147, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.1108, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !61
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next147, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.1 ; 2 uses
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !61
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.1108, i64 %indvars.iv.next147
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !61
  %i.dm = getelementptr i8, ptr %i.dj, i64 4
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !61
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge136.loopexit.unr-lcssa, label %.lr.ph135, !llvm.loop !13

bb.r:                                             ; preds = %bb.p, %._crit_edge136, %._crit_edge139
  %i.dn = load ptr, ptr %i.bj, align 8, !tbaa !65 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 112
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72
  %i.dq = mul nsw i32 %.val.val, %2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !73
  %i.dt = call i32 %i.dp(ptr noundef %i.u, i32 noundef %i.dq, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef nonnull %.0110, ptr noundef %i.ds) #6 ; 0 uses
  call void @free(ptr noundef %.0109) #6
  store ptr %i.u, ptr %i.d, align 8, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.n, %bb.r
  %.0112 = phi ptr [ %i.u, %bb.r ], [ null, %bb.n ], [ null, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s
  %.1113 = phi ptr [ %.0112, %bb.s ], [ %i.e, %bb.a ]
  ret ptr %.1113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ompi_group_translate_ranks(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !62, !63, !64}
!9 = distinct !{!9, !62, !64, !63}
!10 = distinct !{!10, !62}
!11 = distinct !{!11, !62, !63, !64}
!12 = distinct !{!12, !62, !64, !63}
!13 = distinct !{!13, !62}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !14, i64 0}
!16 = !{!"opal_object_t", !15, i64 0, !5, i64 8}
!17 = !{!"p1 _ZTS20mca_coll_base_comm_t", !14, i64 0}
!18 = !{!"mca_coll_base_module_2_4_0_t", !16, i64 0, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !14, i64 376, !14, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !14, i64 528, !14, i64 536, !14, i64 544, !14, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !14, i64 584, !17, i64 592}
!19 = !{!"_Bool", !4, i64 0}
!20 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!21 = !{!"any p2 pointer", !14, i64 0}
!22 = !{!"p2 _ZTS19ompi_communicator_t", !21, i64 0}
!23 = !{!"p1 int", !14, i64 0}
!24 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !14, i64 0}
!25 = !{!"mca_coll_han_single_collective_fallback_s", !4, i64 0, !24, i64 8}
!26 = !{!"mca_coll_han_collectives_fallback_s", !25, i64 0, !25, i64 16, !25, i64 32, !25, i64 48, !25, i64 64, !25, i64 80, !25, i64 96, !25, i64 112}
!27 = !{!"mca_coll_han_collective_modules_storage_s", !4, i64 0}
!28 = !{!"mca_coll_han_module_t", !18, i64 0, !19, i64 600, !5, i64 604, !20, i64 608, !22, i64 616, !22, i64 624, !23, i64 632, !23, i64 640, !19, i64 648, !19, i64 649, !26, i64 656, !14, i64 784, !24, i64 792, !14, i64 800, !24, i64 808, !5, i64 816, !27, i64 824, !19, i64 880, !5, i64 884, !4, i64 888}
!29 = !{!28, !23, i64 640}
!30 = !{!"p1 _ZTS14ompi_request_t", !14, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!33 = !{!"long", !4, i64 0}
!34 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!35 = !{!"opal_hash_table_t", !16, i64 0, !32, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !34, i64 64}
!36 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!37 = !{!"opal_infosubscriber_t", !16, i64 0, !35, i64 16, !36, i64 88}
!38 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!39 = !{!"p1 omnipotent char", !14, i64 0}
!40 = !{!"ompi_comm_extended_cid_t", !33, i64 0, !4, i64 8}
!41 = !{!"ompi_comm_extended_cid_block_t", !40, i64 0, !33, i64 16, !4, i64 24, !4, i64 25}
!42 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!43 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!44 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!45 = !{!"p2 _ZTS20ompi_peruse_handle_t", !21, i64 0}
!46 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!47 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!48 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!49 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!50 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!51 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!52 = !{!"ompi_communicator_t", !37, i64 0, !38, i64 96, !39, i64 160, !40, i64 168, !41, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !23, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !42, i64 264, !42, i64 272, !20, i64 280, !43, i64 288, !44, i64 296, !45, i64 304, !46, i64 312, !5, i64 320, !47, i64 328, !48, i64 336, !49, i64 344, !50, i64 352, !51, i64 360, !5, i64 368, !5, i64 372, !19, i64 376, !19, i64 377, !19, i64 378}
!53 = !{!52, !42, i64 264}
!54 = !{!"p2 _ZTS11ompi_proc_t", !21, i64 0}
!55 = !{!"ompi_group_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !54, i64 32, !5, i64 40, !42, i64 48, !4, i64 56, !50, i64 72}
!56 = !{!55, !5, i64 16}
!57 = !{!28, !22, i64 624}
!58 = !{!28, !22, i64 616}
!59 = !{!20, !20, i64 0}
!60 = !{!52, !5, i64 220}
!61 = !{!5, !5, i64 0}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!52, !49, i64 344}
!66 = !{!"p1 _ZTS11opal_list_t", !14, i64 0}
!67 = !{!"mca_coll_base_comm_coll_t", !14, i64 0, !24, i64 8, !14, i64 16, !24, i64 24, !14, i64 32, !24, i64 40, !14, i64 48, !24, i64 56, !14, i64 64, !24, i64 72, !14, i64 80, !24, i64 88, !14, i64 96, !24, i64 104, !14, i64 112, !24, i64 120, !14, i64 128, !24, i64 136, !14, i64 144, !24, i64 152, !14, i64 160, !24, i64 168, !14, i64 176, !24, i64 184, !14, i64 192, !24, i64 200, !14, i64 208, !24, i64 216, !14, i64 224, !24, i64 232, !14, i64 240, !24, i64 248, !14, i64 256, !24, i64 264, !14, i64 272, !24, i64 280, !14, i64 288, !24, i64 296, !14, i64 304, !24, i64 312, !14, i64 320, !24, i64 328, !14, i64 336, !24, i64 344, !14, i64 352, !24, i64 360, !14, i64 368, !24, i64 376, !14, i64 384, !24, i64 392, !14, i64 400, !24, i64 408, !14, i64 416, !24, i64 424, !14, i64 432, !24, i64 440, !14, i64 448, !24, i64 456, !14, i64 464, !24, i64 472, !14, i64 480, !24, i64 488, !14, i64 496, !24, i64 504, !14, i64 512, !24, i64 520, !14, i64 528, !24, i64 536, !14, i64 544, !24, i64 552, !14, i64 560, !24, i64 568, !14, i64 576, !24, i64 584, !14, i64 592, !24, i64 600, !14, i64 608, !24, i64 616, !14, i64 624, !24, i64 632, !14, i64 640, !24, i64 648, !14, i64 656, !24, i64 664, !14, i64 672, !24, i64 680, !14, i64 688, !24, i64 696, !14, i64 704, !24, i64 712, !14, i64 720, !24, i64 728, !14, i64 736, !24, i64 744, !14, i64 752, !24, i64 760, !14, i64 768, !24, i64 776, !14, i64 784, !24, i64 792, !14, i64 800, !24, i64 808, !14, i64 816, !24, i64 824, !14, i64 832, !24, i64 840, !14, i64 848, !24, i64 856, !14, i64 864, !24, i64 872, !14, i64 880, !24, i64 888, !14, i64 896, !24, i64 904, !14, i64 912, !24, i64 920, !14, i64 928, !24, i64 936, !14, i64 944, !24, i64 952, !14, i64 960, !24, i64 968, !14, i64 976, !24, i64 984, !14, i64 992, !24, i64 1000, !14, i64 1008, !24, i64 1016, !14, i64 1024, !24, i64 1032, !14, i64 1040, !24, i64 1048, !14, i64 1056, !24, i64 1064, !14, i64 1072, !24, i64 1080, !14, i64 1088, !24, i64 1096, !14, i64 1104, !66, i64 1112}
!68 = !{!67, !14, i64 32}
!69 = !{!67, !24, i64 40}
!70 = !{!67, !14, i64 272}
!71 = !{!67, !24, i64 280}
!72 = !{!67, !14, i64 112}
!73 = !{!67, !24, i64 120}
!74 = !{!28, !19, i64 649}
!75 = !{!28, !19, i64 648}
!76 = !{!"ompi_request_fns_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!77 = !{!76, !14, i64 32}
end_hunk_0
