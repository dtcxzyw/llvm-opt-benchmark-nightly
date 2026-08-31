Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_aggregate?download=true
inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ADIOI_Calc_file_domains:bb.a
  store i64 -1, ptr %i.bw, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph138
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv151 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !29
  %i.cc = icmp sgt i64 %i.cb, %.0113.lcssa
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %.0113.lcssa, ptr %i.ca, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge139, label %.lr.ph138, !llvm.loop !41

._crit_edge139:                                   ; preds = %bb.g, %.loopexit
  store i64 %spec.select, ptr %8, align 8, !tbaa !29
  store i64 %.0114.lcssa, ptr %4, align 8, !tbaa !29
  ret void
}

declare ptr @ADIOI_Malloc_fn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ADIOI_Calc_my_req(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i64 noundef %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(none) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %8 to i64                       ; 3 uses
  %i.b = tail call ptr @ADIOI_Calloc_fn(i64 noundef %i.a, i64 noundef 4, i32 noundef 269, ptr noundef nonnull @.str.1) #7 ; 8 uses
  store ptr %i.b, ptr %10, align 8, !tbaa !42
  %i.c = shl nsw i64 %i.a, 3
  %i.d = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.c, i32 noundef 276, ptr noundef nonnull @.str.1) #7 ; 4 uses
  %i.e = icmp sgt i32 %8, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %.preheader205

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %8 to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 -1, i64 %i.g, i1 false), !tbaa !43
  br label %.preheader205

.preheader205:                                    ; preds = %.lr.ph.preheader, %bb.a
  %i.h = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.h, label %.lr.ph213, label %._crit_edge

.lr.ph213:                                        ; preds = %.preheader205
  %i.i = sub i64 %7, %4                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph213, %.loopexit204
  %indvars.iv = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next, %.loopexit204 ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.loopexit204, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29   ; 5 uses
  %i.p = add i64 %i.i, %i.o
  %i.q = sdiv i64 %i.p, %7
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, -1
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !8    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !26
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %i.z = icmp sgt i64 %i.o, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %.preheader.i, label %.loopexit.loopexit.i, !llvm.loop !30

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.c
  %.1.i = phi i32 [ %i.s, %bb.c ], [ %i.aa, %.loopexit.loopexit.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32 ; 2 uses
  %i.ad = icmp sge i32 %.1.i, %i.ac
  %i.ae = icmp slt i32 %.1.i, 0
  %or.cond.i = or i1 %i.ae, %i.ad
  br i1 %or.cond.i, label %bb.d, label %ADIOI_Calc_aggregator.exit

bb.d:                                             ; preds = %.loopexit.i
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef %.1.i, i32 noundef %i.ac, i64 noundef %7, i64 noundef %i.o) #6 ; 0 uses
  %i.ah = tail call i32 @PMPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef 1) #7 ; 0 uses
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !8
  %.pre258 = load i64, ptr %i.k, align 8, !tbaa !29
  br label %ADIOI_Calc_aggregator.exit

ADIOI_Calc_aggregator.exit:                       ; preds = %bb.d, %.loopexit.i
  %i.ai = phi i64 [ %.pre258, %bb.d ], [ %i.l, %.loopexit.i ]
  %i.aj = phi ptr [ %.pre, %bb.d ], [ %i.t, %.loopexit.i ] ; 2 uses
  %i.ak = sext i32 %.1.i to i64                   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29
  %reass.sub = sub i64 %i.am, %i.o
  %i.an = add i64 %reass.sub, 1
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.an, i64 %i.l) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !35
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ak
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !36
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !36
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !36
  %i.aw = sub nsw i64 %i.ai, %spec.select         ; 2 uses
  %.not153207 = icmp eq i64 %i.aw, 0
  br i1 %.not153207, label %.loopexit204, label %.lr.ph211

.lr.ph211:                                        ; preds = %ADIOI_Calc_aggregator.exit, %ADIOI_Calc_aggregator.exit162
  %i.ax = phi ptr [ %i.br, %ADIOI_Calc_aggregator.exit162 ], [ %i.aj, %ADIOI_Calc_aggregator.exit ] ; 3 uses
  %.0136210 = phi i64 [ %i.ay, %ADIOI_Calc_aggregator.exit162 ], [ %i.o, %ADIOI_Calc_aggregator.exit ]
  %.0140209 = phi i64 [ %i.ce, %ADIOI_Calc_aggregator.exit162 ], [ %i.aw, %ADIOI_Calc_aggregator.exit ] ; 2 uses
  %.0192208 = phi i64 [ %spec.select197, %ADIOI_Calc_aggregator.exit162 ], [ %spec.select, %ADIOI_Calc_aggregator.exit ]
  %i.ay = add nsw i64 %.0136210, %.0192208        ; 5 uses
  %i.az = add i64 %i.i, %i.ay
  %i.ba = sdiv i64 %i.az, %7
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add i32 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !26
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.preheader.i158, label %.loopexit.i154

.preheader.i158:                                  ; preds = %.lr.ph211, %.preheader.i158
  %indvars.iv.i159 = phi i64 [ %indvars.iv.next.i160, %.preheader.i158 ], [ 0, %.lr.ph211 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i159
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !29
  %i.bi = icmp sgt i64 %i.ay, %i.bh
  %indvars.iv.next.i160 = add nuw nsw i64 %indvars.iv.i159, 1
  br i1 %i.bi, label %.preheader.i158, label %.loopexit.loopexit.i161, !llvm.loop !30

.loopexit.loopexit.i161:                          ; preds = %.preheader.i158
  %i.bj = trunc nuw nsw i64 %indvars.iv.i159 to i32
  br label %.loopexit.i154

.loopexit.i154:                                   ; preds = %.loopexit.loopexit.i161, %.lr.ph211
  %.1.i155 = phi i32 [ %i.bc, %.lr.ph211 ], [ %i.bj, %.loopexit.loopexit.i161 ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32 ; 2 uses
  %i.bm = icmp sge i32 %.1.i155, %i.bl
  %i.bn = icmp slt i32 %.1.i155, 0
  %or.cond.i156 = or i1 %i.bn, %i.bm
  br i1 %or.cond.i156, label %bb.e, label %ADIOI_Calc_aggregator.exit162

bb.e:                                             ; preds = %.loopexit.i154
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str, i32 noundef %.1.i155, i32 noundef %i.bl, i64 noundef %7, i64 noundef %i.ay) #6 ; 0 uses
  %i.bq = tail call i32 @PMPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef 1) #7 ; 0 uses
  %.pre259 = load ptr, ptr %i.j, align 8, !tbaa !8
  br label %ADIOI_Calc_aggregator.exit162

ADIOI_Calc_aggregator.exit162:                    ; preds = %bb.e, %.loopexit.i154
  %i.br = phi ptr [ %.pre259, %bb.e ], [ %i.ax, %.loopexit.i154 ] ; 2 uses
  %i.bs = sext i32 %.1.i155 to i64                ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %6, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !29
  %reass.sub237 = sub i64 %i.bu, %i.ay
  %i.bv = add i64 %reass.sub237, 1
  %spec.select197 = tail call i64 @llvm.smin.i64(i64 %i.bv, i64 %.0140209) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bs
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !36
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !36
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !36
  %i.ce = sub nsw i64 %.0140209, %spec.select197  ; 2 uses
  %.not153 = icmp eq i64 %i.ce, 0
  br i1 %.not153, label %.loopexit204, label %.lr.ph211, !llvm.loop !44

.loopexit204:                                     ; preds = %ADIOI_Calc_aggregator.exit162, %ADIOI_Calc_aggregator.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !45

._crit_edge:                                      ; preds = %.loopexit204, %.preheader205
  %i.cf = shl nsw i64 %i.a, 5
  %i.cg = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.cf, i32 noundef 323, ptr noundef nonnull @.str.1) #7 ; 11 uses
  store ptr %i.cg, ptr %11, align 8, !tbaa !46
  br i1 %i.e, label %.lr.ph217.preheader, label %._crit_edge218

.lr.ph217.preheader:                              ; preds = %._crit_edge
  %wide.trip.count246 = zext nneg i32 %8 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %8, 4
  br i1 %min.iters.check, label %.lr.ph217.preheader278, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph217.preheader
  %n.vec = and i64 %wide.trip.count246, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi276 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load = load <2 x i32>, ptr %i.ch, align 4, !tbaa !36
  %wide.load277 = load <2 x i32>, ptr %i.ci, align 4, !tbaa !36
  %i.cj = sext <2 x i32> %wide.load to <2 x i64>
  %i.ck = sext <2 x i32> %wide.load277 to <2 x i64>
  %i.cl = add <2 x i64> %vec.phi, %i.cj           ; 2 uses
  %i.cm = add <2 x i64> %vec.phi276, %i.ck        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cm, %i.cl
  %i.co = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count246
  br i1 %cmp.n, label %.lr.ph223.preheader, label %.lr.ph217.preheader278

.lr.ph217.preheader278:                           ; preds = %.lr.ph217.preheader, %middle.block
  %indvars.iv243.ph = phi i64 [ 0, %.lr.ph217.preheader ], [ %n.vec, %middle.block ]
  %.0142215.ph = phi i64 [ 0, %.lr.ph217.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader278, %.lr.ph217
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %.lr.ph217 ], [ %indvars.iv243.ph, %.lr.ph217.preheader278 ] ; 2 uses
  %.0142215 = phi i64 [ %i.cs, %.lr.ph217 ], [ %.0142215.ph, %.lr.ph217.preheader278 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv243
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !36
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add i64 %.0142215, %i.cr                ; 2 uses
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.lr.ph223.preheader, label %.lr.ph217, !llvm.loop !50

._crit_edge218:                                   ; preds = %._crit_edge
  %i.ct = tail call ptr @ADIOI_Malloc_fn(i64 noundef 0, i32 noundef 333, ptr noundef nonnull @.str.1) #7
  store ptr %i.ct, ptr %i.cg, align 8, !tbaa !51
  br label %.preheader

.lr.ph223.preheader:                              ; preds = %.lr.ph217, %middle.block
  %.lcssa275 = phi i64 [ %i.co, %middle.block ], [ %i.cs, %.lr.ph217 ]
  %i.cu = shl i64 %.lcssa275, 4
  %i.cv = tail call ptr @ADIOI_Malloc_fn(i64 noundef %i.cu, i32 noundef 333, ptr noundef nonnull @.str.1) #7 ; 3 uses
  store ptr %i.cv, ptr %i.cg, align 8, !tbaa !51
  %wide.trip.count251 = zext nneg i32 %8 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count251, 1
  %i.cw = icmp eq i32 %8, 1
  br i1 %i.cw, label %.lr.ph223.epil.preheader, label %.lr.ph223.preheader.new

.lr.ph223.preheader.new:                          ; preds = %.lr.ph223.preheader
  %unroll_iter = and i64 %wide.trip.count251, 2147483646
  br label %.lr.ph223

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph223.epil.preheader

.lr.ph223.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph223.preheader
  %indvars.iv248.epil.init = phi i64 [ 0, %.lr.ph223.preheader ], [ %indvars.iv.next249.1, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.0221.epil.init = phi ptr [ %i.cv, %.lr.ph223.preheader ], [ %.1.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.0146219.epil.init = phi i32 [ 0, %.lr.ph223.preheader ], [ %.1147.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i32 %8 to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv248.epil.init
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !36 ; 2 uses
  %.not152.epil = icmp eq i32 %i.cy, 0
  br i1 %.not152.epil, label %.preheader.loopexit.epilog-lcssa, label %bb.f

bb.f:                                             ; preds = %.lr.ph223.epil.preheader
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv248.epil.init ; 2 uses
  store ptr %.0221.epil.init, ptr %i.cz, align 8, !tbaa !51
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %.0221.epil.init, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !54
  %i.dd = add nsw i32 %.0146219.epil.init, 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.f, %.lr.ph223.epil.preheader
  %.1147.epil = phi i32 [ %i.dd, %bb.f ], [ %.0146219.epil.init, %.lr.ph223.epil.preheader ]
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv248.epil.init
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i32 0, ptr %i.df, align 8, !tbaa !55
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %._crit_edge218
  %.0146.lcssa = phi i32 [ 0, %._crit_edge218 ], [ %.1147.1, %.preheader.loopexit.unr-lcssa ], [ %.1147.epil, %.preheader.loopexit.epilog-lcssa ]
  br i1 %i.h, label %.lr.ph235, label %._crit_edge236

.lr.ph235:                                        ; preds = %.preheader
  %i.dg = sub i64 %7, %4                          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %wide.trip.count256 = zext nneg i32 %3 to i64
  br label %bb.j

.lr.ph223:                                        ; preds = %bb.i, %.lr.ph223.preheader.new
  %indvars.iv248 = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %indvars.iv.next249.1, %bb.i ] ; 5 uses
  %.0221 = phi ptr [ %i.cv, %.lr.ph223.preheader.new ], [ %.1.1, %bb.i ] ; 3 uses
  %.0146219 = phi i32 [ 0, %.lr.ph223.preheader.new ], [ %.1147.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph223.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv248
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36 ; 2 uses
  %.not152 = icmp eq i32 %i.dj, 0
  br i1 %.not152, label %.lr.ph223.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph223
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv248 ; 2 uses
  store ptr %.0221, ptr %i.dk, align 8, !tbaa !51
  %i.dl = sext i32 %i.dj to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0221, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !54
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dl
  %i.dp = add nsw i32 %.0146219, 1
  br label %.lr.ph223.1

.lr.ph223.1:                                      ; preds = %bb.g, %.lr.ph223
  %.1147 = phi i32 [ %i.dp, %bb.g ], [ %.0146219, %.lr.ph223 ] ; 2 uses
  %.1 = phi ptr [ %i.do, %bb.g ], [ %.0221, %.lr.ph223 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv248
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store i32 0, ptr %i.dr, align 8, !tbaa !55
  %indvars.iv.next249 = or disjoint i64 %indvars.iv248, 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next249
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !36 ; 2 uses
  %.not152.1 = icmp eq i32 %i.dt, 0
  br i1 %.not152.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph223.1
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv.next249 ; 2 uses
  store ptr %.1, ptr %i.du, align 8, !tbaa !51
  %i.dv = sext i32 %i.dt to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !54
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dz = add nsw i32 %.1147, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph223.1
  %.1147.1 = phi i32 [ %i.dz, %bb.h ], [ %.1147, %.lr.ph223.1 ] ; 3 uses
  %.1.1 = phi ptr [ %i.dy, %bb.h ], [ %.1, %.lr.ph223.1 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %indvars.iv.next249
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i32 0, ptr %i.eb, align 8, !tbaa !55
  %indvars.iv.next249.1 = add nuw nsw i64 %indvars.iv248, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph223, !llvm.loop !56

bb.j:                                             ; preds = %.lr.ph235, %.loopexit
  %indvars.iv253 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next254, %.loopexit ] ; 3 uses
  %.0138234 = phi i64 [ 0, %.lr.ph235 ], [ %.2, %.loopexit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv253 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !29 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv253
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !29 ; 6 uses
  %i.eh = add i64 %i.dg, %i.eg
  %i.ei = sdiv i64 %i.eh, %7
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = add i32 %i.ej, -1
  %i.el = load ptr, ptr %i.dh, align 8, !tbaa !8  ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !26
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.preheader.i167, label %.loopexit.i163

.preheader.i167:                                  ; preds = %bb.k, %.preheader.i167
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i169, %.preheader.i167 ], [ 0, %bb.k ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i168
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !29
  %i.er = icmp sgt i64 %i.eg, %i.eq
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i168, 1
  br i1 %i.er, label %.preheader.i167, label %.loopexit.loopexit.i170, !llvm.loop !30

.loopexit.loopexit.i170:                          ; preds = %.preheader.i167
  %i.es = trunc nuw nsw i64 %indvars.iv.i168 to i32
  br label %.loopexit.i163

.loopexit.i163:                                   ; preds = %.loopexit.loopexit.i170, %bb.k
  %.1.i164 = phi i32 [ %i.ek, %bb.k ], [ %i.es, %.loopexit.loopexit.i170 ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !32 ; 2 uses
  %i.ev = icmp sge i32 %.1.i164, %i.eu
  %i.ew = icmp slt i32 %.1.i164, 0
  %or.cond.i165 = or i1 %i.ew, %i.ev
  br i1 %or.cond.i165, label %bb.l, label %ADIOI_Calc_aggregator.exit171

bb.l:                                             ; preds = %.loopexit.i163
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ey = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str, i32 noundef %.1.i164, i32 noundef %i.eu, i64 noundef %7, i64 noundef %i.eg) #6 ; 0 uses
  %i.ez = tail call i32 @PMPI_Abort(ptr noundef nonnull @ompi_mpi_comm_world, i32 noundef 1) #7 ; 0 uses
  %.pre260 = load ptr, ptr %i.dh, align 8, !tbaa !8
  br label %ADIOI_Calc_aggregator.exit171

ADIOI_Calc_aggregator.exit171:                    ; preds = %bb.l, %.loopexit.i163
  %i.fa = phi ptr [ %.pre260, %bb.l ], [ %i.el, %.loopexit.i163 ] ; 2 uses
  %i.fb = sext i32 %.1.i164 to i64                ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %6, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !29
  %reass.sub238 = sub i64 %i.fd, %i.eg
  %i.fe = add i64 %reass.sub238, 1
  %spec.select198 = tail call i64 @llvm.smin.i64(i64 %i.fe, i64 %i.ed) ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fb
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !36
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.fj ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !43
  %i.fm = icmp eq i64 %i.fl, -1
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ADIOI_Calc_aggregator.exit171
  store i64 %.0138234, ptr %i.fk, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ADIOI_Calc_aggregator.exit171
  %i.fn = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.fj ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %i.fq = add nsw i64 %spec.select198, %.0138234  ; 2 uses
  %i.fr = load i64, ptr %i.ec, align 8, !tbaa !29
  %i.fs = sub nsw i64 %i.fr, %spec.select198      ; 2 uses
  %i.ft = load ptr, ptr %i.fn, align 8, !tbaa !51
  %i.fu = sext i32 %i.fp to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fu
  store i64 %i.eg, ptr %i.fv, align 8, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !54
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fu
  store i64 %spec.select198, ptr %i.fy, align 8, !tbaa !29
  %i.fz = add nsw i32 %i.fp, 1
  store i32 %i.fz, ptr %i.fo, align 8, !tbaa !55
  %.not225 = icmp eq i64 %i.fs, 0
  br i1 %.not225, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.n, %bb.q
  %i.ga = phi ptr [ %i.gu, %bb.q ], [ %i.fa, %bb.n ] ; 3 uses
  %.1137229 = phi i64 [ %i.gb, %bb.q ], [ %i.eg, %bb.n ]
  %.1139228 = phi i64 [ %i.hk, %bb.q ], [ %i.fq, %bb.n ] ; 2 uses
  %.1141227 = phi i64 [ %i.hl, %bb.q ], [ %i.fs, %bb.n ] ; 2 uses
  %.1193226 = phi i64 [ %spec.select199, %bb.q ], [ %spec.select198, %bb.n ]
  %i.gb = add nsw i64 %.1137229, %.1193226        ; 6 uses
  %i.gc = add i64 %i.dg, %i.gb
  %i.gd = sdiv i64 %i.gc, %7
  %i.ge = trunc i64 %i.gd to i32
end_hunk_0
