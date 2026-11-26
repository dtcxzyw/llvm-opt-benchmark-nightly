Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_read_coll?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ADIOI_Fill_user_buffer:bb.a
bb.y:                                             ; preds = %.lr.ph494.1
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next507
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !8
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next507
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph494.1
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge495.loopexit.unr-lcssa, label %.lr.ph494, !llvm.loop !93

._crit_edge495.loopexit.unr-lcssa:                ; preds = %bb.z
  %lcmp.mod571.not = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571.not, label %._crit_edge495, label %.lr.ph494.epil.preheader

.lr.ph494.epil.preheader:                         ; preds = %._crit_edge495.loopexit.unr-lcssa, %.lr.ph494.preheader
  %indvars.iv506.epil.init = phi i64 [ 0, %.lr.ph494.preheader ], [ %indvars.iv.next507.1, %._crit_edge495.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod572 = trunc i32 %10 to i1
  call void @llvm.assume(i1 %lcmp.mod572)
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv506.epil.init
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !8
  %.not.epil = icmp eq i32 %i.jd, 0
  br i1 %.not.epil, label %._crit_edge495, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph494.epil.preheader
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv506.epil.init
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv506.epil.init
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !8
  br label %._crit_edge495

._crit_edge495:                                   ; preds = %._crit_edge495.loopexit.unr-lcssa, %bb.aa, %.lr.ph494.epil.preheader, %.preheader
  call void @ADIOI_Free_fn(ptr noundef %i.f, i32 noundef 1045, ptr noundef nonnull @.str) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret void
}

declare i32 @ADIOI_Calc_aggregator(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @PMPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Calloc_fn(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Get_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ADIOI_R_Exchange_data(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef captures(none) %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18, ptr nofree noundef readonly captures(none) %19, i32 noundef %20, i64 noundef %21, ptr nofree noundef captures(none) %22) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = tail call i32 @PMPI_Alltoall(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef %6, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef %i.c) #6 ; 0 uses
  %i.e = icmp sgt i32 %11, 0                      ; 4 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %11 to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %11, 4
  br i1 %min.iters.check, label %.lr.ph.preheader256, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi243 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi244 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi245 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi246 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi247 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %wide.load248 = load <2 x i32>, ptr %i.g, align 4, !tbaa !8 ; 2 uses
  %i.h = sext <2 x i32> %wide.load to <2 x i64>
  %i.i = sext <2 x i32> %wide.load248 to <2 x i64>
  %i.j = add <2 x i64> %vec.phi, %i.h             ; 2 uses
  %i.k = add <2 x i64> %vec.phi243, %i.i          ; 2 uses
  %i.l = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.m = icmp ne <2 x i32> %wide.load248, zeroinitializer
  %i.n = zext <2 x i1> %i.l to <2 x i32>
  %i.o = zext <2 x i1> %i.m to <2 x i32>
  %i.p = add <2 x i32> %vec.phi246, %i.n          ; 2 uses
  %i.q = add <2 x i32> %vec.phi247, %i.o          ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load249 = load <2 x i32>, ptr %i.r, align 4, !tbaa !8
  %wide.load250 = load <2 x i32>, ptr %i.s, align 4, !tbaa !8
  %i.t = icmp ne <2 x i32> %wide.load249, zeroinitializer
  %i.u = icmp ne <2 x i32> %wide.load250, zeroinitializer
  %i.v = zext <2 x i1> %i.t to <2 x i32>
  %i.w = zext <2 x i1> %i.u to <2 x i32>
  %i.x = add <2 x i32> %vec.phi244, %i.v          ; 2 uses
  %i.y = add <2 x i32> %vec.phi245, %i.w          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx251 = add <2 x i32> %i.y, %i.x
  %i.ab = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx251) ; 2 uses
  %bin.rdx252 = add <2 x i32> %i.q, %i.p
  %i.ac = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx252) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader256

.lr.ph.preheader256:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0175.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.0142174.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.0143173.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader256, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader256 ] ; 3 uses
  %.0175 = phi i64 [ %i.ag, %.lr.ph ], [ %.0175.ph, %.lr.ph.preheader256 ]
  %.0142174 = phi i32 [ %.1, %.lr.ph ], [ %.0142174.ph, %.lr.ph.preheader256 ]
  %.0143173 = phi i32 [ %spec.select, %.lr.ph ], [ %.0143173.ph, %.lr.ph.preheader256 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = add i64 %.0175, %i.af                   ; 2 uses
  %.not168 = icmp ne i32 %i.ae, 0
  %i.ah = zext i1 %.not168 to i32
  %spec.select = add nuw nsw i32 %.0143173, %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %.not169 = icmp ne i32 %i.aj, 0
  %i.ak = zext i1 %.not169 to i32
  %.1 = add nuw nsw i32 %.0142174, %i.ak          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0143.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %middle.block ], [ %spec.select, %.lr.ph ] ; 10 uses
  %.0142.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %middle.block ], [ %.1, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %middle.block ], [ %i.ag, %.lr.ph ]
  %i.al = add nuw nsw i32 %.0143.lcssa, 1
  %i.am = add nuw nsw i32 %i.al, %.0142.lcssa
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.ao, i32 noundef 790, ptr noundef nonnull @.str) #6 ; 10 uses
  %.not = icmp eq i32 %13, 0                      ; 3 uses
  br i1 %.not, label %bb.e, label %.preheader170

.preheader170:                                    ; preds = %._crit_edge
  br i1 %i.e, label %.lr.ph180, label %._crit_edge193.thread

.lr.ph180:                                        ; preds = %.preheader170
  %i.aq = mul nsw i32 %20, 100
  %i.ar = add i32 %i.aq, %12
  %wide.trip.count199 = zext nneg i32 %11 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph180, %bb.d
  %indvars.iv196 = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next197, %bb.d ] ; 4 uses
  %.0150179 = phi i32 [ 0, %.lr.ph180 ], [ %.1151, %bb.d ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv196 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8  ; 2 uses
  %.not167 = icmp eq i32 %i.at, 0
  br i1 %.not167, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %indvars.iv196 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !40
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv196 to i32 ; 2 uses
  %i.ay = add i32 %i.ar, %i.ax
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.ba = sext i32 %.0150179 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = tail call i32 @PMPI_Irecv(ptr noundef %i.aw, i32 noundef %i.at, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef %i.az, ptr noundef %i.bb) #6 ; 0 uses
  %i.bd = add nsw i32 %.0150179, 1
  %i.be = load i32, ptr %i.as, align 4, !tbaa !8
  %i.bf = sext i32 %i.be to i64
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !40
  %i.bh = add nsw i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.au, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1151 = phi i32 [ %i.bd, %bb.c ], [ %.0150179, %bb.b ]
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit, label %bb.b, !llvm.loop !96

bb.e:                                             ; preds = %._crit_edge
  %i.bi = sext i32 %11 to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.bj, i32 noundef 812, ptr noundef nonnull @.str) #6 ; 10 uses
  %i.bl = tail call ptr @ADIOI_Malloc_fn(i64 noundef %.0.lcssa, i32 noundef 813, ptr noundef nonnull @.str) #6 ; 3 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !45
  %i.bm = icmp sgt i32 %11, 1
  br i1 %i.bm, label %.lr.ph183.preheader, label %.preheader

.lr.ph183.preheader:                              ; preds = %bb.e
  %wide.trip.count204 = zext nneg i32 %11 to i64
  %i.bn = add nsw i64 %wide.trip.count204, -1     ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = add nsw i32 %11, -2
  %i.bp = icmp ult i32 %i.bo, 3
  br i1 %i.bp, label %.lr.ph183.epil.preheader, label %.lr.ph183.preheader.new

.lr.ph183.preheader.new:                          ; preds = %.lr.ph183.preheader
  %unroll_iter = and i64 %i.bn, -4
  br label %.lr.ph183

.preheader:                                       ; preds = %bb.e
  br i1 %i.e, label %.lr.ph186, label %._crit_edge193.thread235

.lr.ph186.loopexit.unr-lcssa:                     ; preds = %.lr.ph183
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph186, label %.lr.ph183.epil.preheader

.lr.ph183.epil.preheader:                         ; preds = %.lr.ph186.loopexit.unr-lcssa, %.lr.ph183.preheader
  %.epil.init = phi ptr [ %i.bl, %.lr.ph183.preheader ], [ %i.cw, %.lr.ph186.loopexit.unr-lcssa ]
  %indvars.iv201.epil.init = phi i64 [ 1, %.lr.ph183.preheader ], [ %indvars.iv.next202.3, %.lr.ph186.loopexit.unr-lcssa ]
  %lcmp.mod263 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod263)
  br label %.lr.ph183.epil

.lr.ph183.epil:                                   ; preds = %.lr.ph183.epil, %.lr.ph183.epil.preheader
  %i.bq = phi ptr [ %.epil.init, %.lr.ph183.epil.preheader ], [ %i.bv, %.lr.ph183.epil ]
  %indvars.iv201.epil = phi i64 [ %indvars.iv201.epil.init, %.lr.ph183.epil.preheader ], [ %indvars.iv.next202.epil, %.lr.ph183.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph183.epil.preheader ], [ %epil.iter.next, %.lr.ph183.epil ]
  %i.br = getelementptr [4 x i8], ptr %6, i64 %indvars.iv201.epil
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv201.epil
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !45
  %indvars.iv.next202.epil = add nuw nsw i64 %indvars.iv201.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph186, label %.lr.ph183.epil, !llvm.loop !97

.lr.ph186:                                        ; preds = %.lr.ph186.loopexit.unr-lcssa, %.lr.ph183.epil, %.preheader
  %i.bx = mul nsw i32 %20, 100
  %i.by = add i32 %i.bx, %12
  %wide.trip.count209 = zext nneg i32 %11 to i64
  br label %bb.f

.lr.ph183:                                        ; preds = %.lr.ph183, %.lr.ph183.preheader.new
  %i.bz = phi ptr [ %i.bl, %.lr.ph183.preheader.new ], [ %i.cw, %.lr.ph183 ]
  %indvars.iv201 = phi i64 [ 1, %.lr.ph183.preheader.new ], [ %indvars.iv.next202.3, %.lr.ph183 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph183.preheader.new ], [ %niter.next.3, %.lr.ph183 ]
  %i.ca = getelementptr [4 x i8], ptr %6, i64 %indvars.iv201
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv201
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !45
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next202
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next202
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !45
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next202.1
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next202.1
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !45
  %indvars.iv.next202.2 = add nuw nsw i64 %indvars.iv201, 3 ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next202.2
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cq, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next202.2
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !45
  %indvars.iv.next202.3 = add nuw nsw i64 %indvars.iv201, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph186.loopexit.unr-lcssa, label %.lr.ph183, !llvm.loop !98

bb.f:                                             ; preds = %.lr.ph186, %bb.h
  %indvars.iv206 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next207, %bb.h ] ; 4 uses
  %.2152185 = phi i32 [ 0, %.lr.ph186 ], [ %.3, %bb.h ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv206
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8  ; 2 uses
  %.not162 = icmp eq i32 %i.cz, 0
  br i1 %.not162, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv206
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !45
  %i.dc = trunc nuw nsw i64 %indvars.iv206 to i32 ; 2 uses
  %i.dd = add i32 %i.by, %i.dc
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.df = sext i32 %.2152185 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.df
  %i.dh = tail call i32 @PMPI_Irecv(ptr noundef %i.db, i32 noundef %i.cz, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.dc, i32 noundef %i.dd, ptr noundef %i.de, ptr noundef %i.dg) #6 ; 0 uses
  %i.di = add nsw i32 %.2152185, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.3 = phi i32 [ %i.di, %bb.g ], [ %.2152185, %bb.f ]
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.loopexit, label %bb.f, !llvm.loop !99

.loopexit:                                        ; preds = %bb.d, %bb.h
  %.0141 = phi ptr [ %i.bk, %bb.h ], [ null, %bb.d ] ; 2 uses
  br i1 %i.e, label %.lr.ph192, label %._crit_edge193

.lr.ph192:                                        ; preds = %.loopexit
  %i.dj = mul nsw i32 %20, 100
  %i.dk = add i32 %i.dj, %12
  %i.dl = zext nneg i32 %.0143.lcssa to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.dl
  %wide.trip.count214 = zext nneg i32 %11 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph192, %bb.o
  %indvars.iv211 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next212, %bb.o ] ; 11 uses
  %.0145190 = phi i32 [ 0, %.lr.ph192 ], [ %.2, %bb.o ] ; 2 uses
  %.0147189 = phi i32 [ 0, %.lr.ph192 ], [ %.2149, %bb.o ] ; 2 uses
  %.4188 = phi i32 [ 0, %.lr.ph192 ], [ %.5, %bb.o ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv211
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %.not164 = icmp eq i32 %i.do, 0
  br i1 %.not164, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv211 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8  ; 2 uses
  %.not165 = icmp eq i32 %i.dq, 0
  br i1 %.not165, label %._crit_edge216, label %bb.k

._crit_edge216:                                   ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv211
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  %.phi.trans.insert217 = getelementptr inbounds nuw [32 x i8], ptr %19, i64 %indvars.iv211
  %.phi.trans.insert218 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert217, i64 8
  %.pre219 = load ptr, ptr %.phi.trans.insert218, align 8, !tbaa !36
  %.phi.trans.insert220 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv211
  %.pre221 = load i32, ptr %.phi.trans.insert220, align 4, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv211
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8  ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv211
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8  ; 2 uses
  %i.dv = add i32 %i.ds, -1
  %i.dw = add i32 %i.dv, %i.du                    ; 2 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %19, i64 %indvars.iv211
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !36 ; 2 uses
  %i.ea = sext i32 %i.dw to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !30
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = sext i32 %i.dq to i64
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge216, %bb.k
  %i.ef = phi i32 [ %i.ds, %bb.k ], [ %.pre221, %._crit_edge216 ]
  %i.eg = phi ptr [ %i.dz, %bb.k ], [ %.pre219, %._crit_edge216 ]
  %i.eh = phi i32 [ %i.du, %bb.k ], [ %.pre, %._crit_edge216 ]
  %.1148 = phi i32 [ %i.dw, %bb.k ], [ %.0147189, %._crit_edge216 ] ; 2 uses
  %.1146 = phi i32 [ %i.ed, %bb.k ], [ %.0145190, %._crit_edge216 ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %19, i64 %indvars.iv211 ; 2 uses
  %i.ej = sext i32 %i.ef to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !37
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ej
  %i.eo = call i32 @ADIOI_Type_create_hindexed_x(i32 noundef %i.eh, ptr noundef %i.ek, ptr noundef %i.en, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ep = call i32 @PMPI_Type_commit(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.er = trunc nuw nsw i64 %indvars.iv211 to i32 ; 2 uses
  %i.es = add i32 %i.dk, %i.er
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.eu = sext i32 %.4188 to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.eu
  %i.ew = call i32 @PMPI_Isend(ptr noundef null, i32 noundef 1, ptr noundef %i.eq, i32 noundef %i.er, i32 noundef %i.es, ptr noundef %i.et, ptr noundef %i.ev) #6 ; 0 uses
  %i.ex = call i32 @PMPI_Type_free(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.ey = load i32, ptr %i.dp, align 4, !tbaa !8
  %.not166 = icmp eq i32 %i.ey, 0
  br i1 %.not166, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fa = sext i32 %.1146 to i64
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !36
  %i.fc = sext i32 %.1148 to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  store i64 %i.fa, ptr %i.fd, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fe = add nsw i32 %.4188, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %.5 = phi i32 [ %i.fe, %bb.n ], [ %.4188, %bb.i ]
  %.2149 = phi i32 [ %.1148, %bb.n ], [ %.0147189, %bb.i ]
  %.2 = phi i32 [ %.1146, %bb.n ], [ %.0145190, %bb.i ]
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge193, label %bb.i, !llvm.loop !100

._crit_edge193:                                   ; preds = %bb.o, %.loopexit
  %.not163 = icmp eq i32 %.0143.lcssa, 0
  br i1 %.not163, label %bb.r, label %bb.p

._crit_edge193.thread235:                         ; preds = %.preheader
  %.not163237 = icmp eq i32 %.0143.lcssa, 0
  br i1 %.not163237, label %bb.r, label %.thread238

.thread238:                                       ; preds = %._crit_edge193.thread235
  %i.ff = tail call i32 @PMPI_Waitall(i32 noundef %.0143.lcssa, ptr noundef %i.ap, ptr noundef null) #6 ; 0 uses
  br label %bb.q

._crit_edge193.thread:                            ; preds = %.preheader170
  %.not163231 = icmp eq i32 %.0143.lcssa, 0
  br i1 %.not163231, label %bb.r, label %.thread

.thread:                                          ; preds = %._crit_edge193.thread
  %i.fg = tail call i32 @PMPI_Waitall(i32 noundef %.0143.lcssa, ptr noundef %i.ap, ptr noundef null) #6 ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %._crit_edge193
  %i.fh = call i32 @PMPI_Waitall(i32 noundef %.0143.lcssa, ptr noundef %i.ap, ptr noundef null) #6 ; 0 uses
  br i1 %.not, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.thread238, %bb.p
  %.0141229232240 = phi ptr [ %i.bk, %.thread238 ], [ %.0141, %bb.p ] ; 2 uses
  call void @ADIOI_Fill_user_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %.0141229232240, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr poison, ptr poison, ptr noundef %10, i32 noundef %11, i32 noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %21)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge193.thread235, %._crit_edge193.thread, %bb.q, %._crit_edge193
  %.0141229233 = phi ptr [ null, %._crit_edge193.thread ], [ %.0141229232240, %bb.q ], [ %.0141, %._crit_edge193 ], [ %i.bk, %._crit_edge193.thread235 ] ; 2 uses
  %i.fi = zext nneg i32 %.0143.lcssa to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.fi
end_hunk_0
