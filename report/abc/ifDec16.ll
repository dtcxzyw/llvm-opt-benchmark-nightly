Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluInitTruthTables:.preheader18
  %.mask = and <2 x i64> %vec.ind68, splat (i64 2)
  %isnotneg = icmp eq <2 x i64> %.mask, zeroinitializer
  %i.ba = sext <2 x i1> %isnotneg to <2 x i64>
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 57344), i64 %index67 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %i.az, ptr %i.bb, align 16, !tbaa !18
  store <2 x i64> %i.ba, ptr %i.bc, align 16, !tbaa !18
  %index.next70 = add nuw i64 %index67, 4         ; 2 uses
  %vec.ind.next71 = add nuw <2 x i64> %vec.ind68, splat (i64 4)
  %i.bd = icmp eq i64 %index.next70, 1024
  br i1 %i.bd, label %vector.body74, label %vector.body66, !llvm.loop !183

vector.body74:                                    ; preds = %vector.body66, %vector.body74
  %index75 = phi i64 [ %index.next78, %vector.body74 ], [ 0, %vector.body66 ] ; 2 uses
  %vec.ind76 = phi <2 x i64> [ %vec.ind.next79, %vector.body74 ], [ <i64 0, i64 1>, %vector.body66 ] ; 3 uses
  %i.be = shl <2 x i64> %vec.ind76, splat (i64 61)
  %step.add77 = shl <2 x i64> %vec.ind76, splat (i64 61)
  %i.bf = add <2 x i64> %step.add77, splat (i64 4611686018427387904)
  %i.bg = ashr <2 x i64> %i.be, splat (i64 63)
  %i.bh = ashr <2 x i64> %i.bf, splat (i64 63)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 65536), i64 %index75 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x i64> %i.bg, ptr %i.bi, align 16, !tbaa !18
  store <2 x i64> %i.bh, ptr %i.bj, align 16, !tbaa !18
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %vec.ind.next79 = add nuw <2 x i64> %vec.ind76, splat (i64 4)
  %i.bk = icmp eq i64 %index.next78, 1024
  br i1 %i.bk, label %vector.body82, label %vector.body74, !llvm.loop !184

vector.body82:                                    ; preds = %vector.body74, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %vector.body74 ] ; 2 uses
  %vec.ind84 = phi <2 x i64> [ %vec.ind.next87, %vector.body82 ], [ <i64 0, i64 1>, %vector.body74 ] ; 3 uses
  %i.bl = shl <2 x i64> %vec.ind84, splat (i64 60)
  %step.add85 = shl <2 x i64> %vec.ind84, splat (i64 60)
  %i.bm = add <2 x i64> %step.add85, splat (i64 2305843009213693952)
  %i.bn = ashr <2 x i64> %i.bl, splat (i64 63)
  %i.bo = ashr <2 x i64> %i.bm, splat (i64 63)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 73728), i64 %index83 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x i64> %i.bn, ptr %i.bp, align 16, !tbaa !18
  store <2 x i64> %i.bo, ptr %i.bq, align 16, !tbaa !18
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %vec.ind.next87 = add nuw <2 x i64> %vec.ind84, splat (i64 4)
  %i.br = icmp eq i64 %index.next86, 1024
  br i1 %i.br, label %vector.body90, label %vector.body82, !llvm.loop !185

vector.body90:                                    ; preds = %vector.body82, %vector.body90
  %index91 = phi i64 [ %index.next94, %vector.body90 ], [ 0, %vector.body82 ] ; 2 uses
  %vec.ind92 = phi <2 x i64> [ %vec.ind.next95, %vector.body90 ], [ <i64 0, i64 1>, %vector.body82 ] ; 3 uses
  %i.bs = shl <2 x i64> %vec.ind92, splat (i64 59)
  %step.add93 = shl <2 x i64> %vec.ind92, splat (i64 59)
  %i.bt = add <2 x i64> %step.add93, splat (i64 1152921504606846976)
  %i.bu = ashr <2 x i64> %i.bs, splat (i64 63)
  %i.bv = ashr <2 x i64> %i.bt, splat (i64 63)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 81920), i64 %index91 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <2 x i64> %i.bu, ptr %i.bw, align 16, !tbaa !18
  store <2 x i64> %i.bv, ptr %i.bx, align 16, !tbaa !18
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %vec.ind.next95 = add nuw <2 x i64> %vec.ind92, splat (i64 4)
  %i.by = icmp eq i64 %index.next94, 1024
  br i1 %i.by, label %vector.body98, label %vector.body90, !llvm.loop !186

vector.body98:                                    ; preds = %vector.body90, %vector.body98
  %index99 = phi i64 [ %index.next102, %vector.body98 ], [ 0, %vector.body90 ] ; 2 uses
  %vec.ind100 = phi <2 x i64> [ %vec.ind.next103, %vector.body98 ], [ <i64 0, i64 1>, %vector.body90 ] ; 3 uses
  %i.bz = shl <2 x i64> %vec.ind100, splat (i64 58)
  %step.add101 = shl <2 x i64> %vec.ind100, splat (i64 58)
  %i.ca = add <2 x i64> %step.add101, splat (i64 576460752303423488)
  %i.cb = ashr <2 x i64> %i.bz, splat (i64 63)
  %i.cc = ashr <2 x i64> %i.ca, splat (i64 63)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 90112), i64 %index99 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x i64> %i.cb, ptr %i.cd, align 16, !tbaa !18
  store <2 x i64> %i.cc, ptr %i.ce, align 16, !tbaa !18
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %vec.ind.next103 = add nuw <2 x i64> %vec.ind100, splat (i64 4)
  %i.cf = icmp eq i64 %index.next102, 1024
  br i1 %i.cf, label %vector.body106, label %vector.body98, !llvm.loop !187

vector.body106:                                   ; preds = %vector.body98, %vector.body106
  %index107 = phi i64 [ %index.next110, %vector.body106 ], [ 0, %vector.body98 ] ; 2 uses
  %vec.ind108 = phi <2 x i64> [ %vec.ind.next111, %vector.body106 ], [ <i64 0, i64 1>, %vector.body98 ] ; 3 uses
  %i.cg = shl <2 x i64> %vec.ind108, splat (i64 57)
  %step.add109 = shl <2 x i64> %vec.ind108, splat (i64 57)
  %i.ch = add <2 x i64> %step.add109, splat (i64 288230376151711744)
  %i.ci = ashr <2 x i64> %i.cg, splat (i64 63)
  %i.cj = ashr <2 x i64> %i.ch, splat (i64 63)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 98304), i64 %index107 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %i.ci, ptr %i.ck, align 16, !tbaa !18
  store <2 x i64> %i.cj, ptr %i.cl, align 16, !tbaa !18
  %index.next110 = add nuw i64 %index107, 4       ; 2 uses
  %vec.ind.next111 = add nuw <2 x i64> %vec.ind108, splat (i64 4)
  %i.cm = icmp eq i64 %index.next110, 1024
  br i1 %i.cm, label %vector.body114, label %vector.body106, !llvm.loop !188

vector.body114:                                   ; preds = %vector.body106, %vector.body114
  %index115 = phi i64 [ %index.next118, %vector.body114 ], [ 0, %vector.body106 ] ; 2 uses
  %vec.ind116 = phi <2 x i64> [ %vec.ind.next119, %vector.body114 ], [ <i64 0, i64 1>, %vector.body106 ] ; 3 uses
  %i.cn = shl <2 x i64> %vec.ind116, splat (i64 56)
  %step.add117 = shl <2 x i64> %vec.ind116, splat (i64 56)
  %i.co = add <2 x i64> %step.add117, splat (i64 144115188075855872)
  %i.cp = ashr <2 x i64> %i.cn, splat (i64 63)
  %i.cq = ashr <2 x i64> %i.co, splat (i64 63)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 106496), i64 %index115 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x i64> %i.cp, ptr %i.cr, align 16, !tbaa !18
  store <2 x i64> %i.cq, ptr %i.cs, align 16, !tbaa !18
  %index.next118 = add nuw i64 %index115, 4       ; 2 uses
  %vec.ind.next119 = add nuw <2 x i64> %vec.ind116, splat (i64 4)
  %i.ct = icmp eq i64 %index.next118, 1024
  br i1 %i.ct, label %vector.body122, label %vector.body114, !llvm.loop !189

vector.body122:                                   ; preds = %vector.body114, %vector.body122
  %index123 = phi i64 [ %index.next126, %vector.body122 ], [ 0, %vector.body114 ] ; 2 uses
  %vec.ind124 = phi <2 x i64> [ %vec.ind.next127, %vector.body122 ], [ <i64 0, i64 1>, %vector.body114 ] ; 3 uses
  %i.cu = shl <2 x i64> %vec.ind124, splat (i64 55)
  %step.add125 = shl <2 x i64> %vec.ind124, splat (i64 55)
  %i.cv = add <2 x i64> %step.add125, splat (i64 72057594037927936)
  %i.cw = ashr <2 x i64> %i.cu, splat (i64 63)
  %i.cx = ashr <2 x i64> %i.cv, splat (i64 63)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 114688), i64 %index123 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <2 x i64> %i.cw, ptr %i.cy, align 16, !tbaa !18
  store <2 x i64> %i.cx, ptr %i.cz, align 16, !tbaa !18
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %vec.ind.next127 = add nuw <2 x i64> %vec.ind124, splat (i64 4)
  %i.da = icmp eq i64 %index.next126, 1024
  br i1 %i.da, label %vector.body130, label %vector.body122, !llvm.loop !190

vector.body130:                                   ; preds = %vector.body122, %vector.body130
  %index131 = phi i64 [ %index.next134, %vector.body130 ], [ 0, %vector.body122 ] ; 2 uses
  %vec.ind132 = phi <2 x i64> [ %vec.ind.next135, %vector.body130 ], [ <i64 0, i64 1>, %vector.body122 ] ; 3 uses
  %i.db = shl <2 x i64> %vec.ind132, splat (i64 54)
  %step.add133 = shl <2 x i64> %vec.ind132, splat (i64 54)
  %i.dc = add <2 x i64> %step.add133, splat (i64 36028797018963968)
  %i.dd = ashr <2 x i64> %i.db, splat (i64 63)
  %i.de = ashr <2 x i64> %i.dc, splat (i64 63)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @TruthAll, i64 122880), i64 %index131 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x i64> %i.dd, ptr %i.df, align 16, !tbaa !18
  store <2 x i64> %i.de, ptr %i.dg, align 16, !tbaa !18
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %vec.ind.next135 = add nuw <2 x i64> %vec.ind132, splat (i64 4)
  %i.dh = icmp eq i64 %index.next134, 1024
  br i1 %i.dh, label %middle.block136, label %vector.body130, !llvm.loop !191

middle.block136:                                  ; preds = %vector.body130
  ret void
}

; Function Attrs: nounwind uwtable
define void @If_CluVerify(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca [6 x [1024 x i64]], align 16      ; 10 uses
  %i.c = alloca [1024 x i64], align 16            ; 6 uses
  %i.d = alloca [1024 x i64], align 16            ; 5 uses
  store i64 %4, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.e = load i64, ptr @TruthAll, align 16, !tbaa !18
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @If_CluInitTruthTables()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i8, ptr %2, align 1, !tbaa !175     ; 4 uses
  %wide.trip.count = zext i8 %i.g to i64          ; 2 uses
  %i.h = icmp sgt i8 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.j = icmp slt i32 %1, 7
  %i.k = add nsw i32 %1, -6
  %i.l = shl nuw i32 1, %i.k
  %i.m = select i1 %i.j, i32 1, i32 %i.l          ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.preheader, label %._crit_edge.split

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %wide.trip.count.i = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i8 %i.g, 1
  br i1 %i.p, label %.lr.ph.preheader.i.epil.preheader, label %.lr.ph.preheader.i.preheader.new

.lr.ph.preheader.i.preheader.new:                 ; preds = %.lr.ph.preheader.i.preheader
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.preheader.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.new ], [ %niter.next.1, %.lr.ph.preheader.i ]
  %6 = shl nuw nsw i64 %indvars.iv, 13
  %scevgep = getelementptr nuw i8, ptr %i.b, i64 %6
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !80
  %i.s = sext i8 %i.r to i64
  %i.t = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.t, i64 %i.o, i1 false), !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %7 = shl nuw nsw i64 %indvars.iv.next, 13
  %scevgep.1 = getelementptr nuw i8, ptr %i.b, i64 %7
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80
  %i.w = sext i8 %i.v to i64
  %i.x = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 16 dereferenceable(1) %i.x, i64 %i.o, i1 false), !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.loopexit.unr-lcssa, label %.lr.ph.preheader.i, !llvm.loop !192

._crit_edge.split.loopexit.unr-lcssa:             ; preds = %.lr.ph.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.lr.ph.preheader.i.epil.preheader

.lr.ph.preheader.i.epil.preheader:                ; preds = %._crit_edge.split.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next.1, %._crit_edge.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod100 = trunc i8 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod100)
  %8 = shl nuw nsw i64 %indvars.iv.epil.init, 13
  %scevgep.epil = getelementptr nuw i8, ptr %i.b, i64 %8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.epil.init
  %i.z = load i8, ptr %i.y, align 1, !tbaa !80
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 16 dereferenceable(1) %i.ab, i64 %i.o, i1 false), !tbaa !18
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %.lr.ph.preheader.i.epil.preheader, %._crit_edge.split.loopexit.unr-lcssa, %.lr.ph, %bb.c
  call fastcc void @If_CluComposeLut(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.ac = load i8, ptr %3, align 1, !tbaa !175    ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph63, label %._crit_edge.split.._crit_edge64_crit_edge

._crit_edge.split.._crit_edge64_crit_edge:        ; preds = %._crit_edge.split
  %.pre = add nsw i32 %1, -6
  %.pre98 = shl nuw i32 1, %.pre
  br label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge.split
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  %i.af = icmp slt i32 %1, 7
  %i.ag = add nsw i32 %1, -6
  %i.ah = shl nuw i32 1, %i.ag
  %.fr = freeze i32 %i.ah                         ; 4 uses
  %i.ai = select i1 %i.af, i32 1, i32 %.fr        ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph63.split.us.split.us.preheader, label %._crit_edge64

.lr.ph63.split.us.split.us.preheader:             ; preds = %.lr.ph63
  %wide.trip.count.i45 = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %wide.trip.count.i45, 3 ; 3 uses
  %i.al = icmp eq i8 %i.ac, 1
  br i1 %i.al, label %.lr.ph63.split.us.split.us.epil.preheader, label %.lr.ph63.split.us.split.us.preheader.new

.lr.ph63.split.us.split.us.preheader.new:         ; preds = %.lr.ph63.split.us.split.us.preheader
  %i.am = and i8 %i.ac, 126
  %unroll_iter104 = zext nneg i8 %i.am to i64
  br label %.lr.ph63.split.us.split.us

.lr.ph63.split.us.split.us:                       ; preds = %.lr.ph63.split.us.split.us, %.lr.ph63.split.us.split.us.preheader.new
  %indvars.iv93 = phi i64 [ 0, %.lr.ph63.split.us.split.us.preheader.new ], [ %indvars.iv.next94.1, %.lr.ph63.split.us.split.us ] ; 4 uses
  %niter105 = phi i64 [ 0, %.lr.ph63.split.us.split.us.preheader.new ], [ %niter105.next.1, %.lr.ph63.split.us.split.us ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv93
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !80  ; 2 uses
  %i.ap = sext i8 %i.ao to i32
  %i.aq = icmp eq i32 %1, %i.ap
  %i.ar = getelementptr inbounds nuw [8192 x i8], ptr %i.b, i64 %indvars.iv93
  %i.as = sext i8 %i.ao to i64
  %i.at = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.as
  %.sink = select i1 %i.aq, ptr %i.c, ptr %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ar, ptr nonnull align 16 %.sink, i64 %i.ak, i1 false), !tbaa !18
  %indvars.iv.next94 = or disjoint i64 %indvars.iv93, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next94
  %i.av = load i8, ptr %i.au, align 1, !tbaa !80  ; 2 uses
  %i.aw = sext i8 %i.av to i32
  %i.ax = icmp eq i32 %1, %i.aw
  %i.ay = getelementptr inbounds nuw [8192 x i8], ptr %i.b, i64 %indvars.iv.next94
  %i.az = sext i8 %i.av to i64
  %i.ba = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.az
  %.sink.1 = select i1 %i.ax, ptr %i.c, ptr %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ay, ptr nonnull align 16 %.sink.1, i64 %i.ak, i1 false), !tbaa !18
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %niter105.next.1 = add i64 %niter105, 2         ; 2 uses
  %niter105.ncmp.1 = icmp eq i64 %niter105.next.1, %unroll_iter104
  br i1 %niter105.ncmp.1, label %._crit_edge64.loopexit.unr-lcssa, label %.lr.ph63.split.us.split.us, !llvm.loop !193

._crit_edge64.loopexit.unr-lcssa:                 ; preds = %.lr.ph63.split.us.split.us
  %i.bb = and i8 %i.ac, 1
  %lcmp.mod102.not = icmp eq i8 %i.bb, 0
  br i1 %lcmp.mod102.not, label %._crit_edge64, label %.lr.ph63.split.us.split.us.epil.preheader

.lr.ph63.split.us.split.us.epil.preheader:        ; preds = %._crit_edge64.loopexit.unr-lcssa, %.lr.ph63.split.us.split.us.preheader
  %indvars.iv93.epil.init = phi i64 [ 0, %.lr.ph63.split.us.split.us.preheader ], [ %indvars.iv.next94.1, %._crit_edge64.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod103 = trunc i8 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv93.epil.init
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !80  ; 2 uses
  %i.be = sext i8 %i.bd to i32
  %i.bf = icmp eq i32 %1, %i.be
  %i.bg = getelementptr inbounds nuw [8192 x i8], ptr %i.b, i64 %indvars.iv93.epil.init
  %i.bh = sext i8 %i.bd to i64
  %i.bi = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.bh
  %.sink.epil = select i1 %i.bf, ptr %i.c, ptr %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.bg, ptr nonnull align 16 %.sink.epil, i64 %i.ak, i1 false), !tbaa !18
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63.split.us.split.us.epil.preheader, %._crit_edge64.loopexit.unr-lcssa, %.lr.ph63, %._crit_edge.split.._crit_edge64_crit_edge
  %.pre-phi99 = phi i32 [ %.pre98, %._crit_edge.split.._crit_edge64_crit_edge ], [ %.fr, %.lr.ph63 ], [ %.fr, %._crit_edge64.loopexit.unr-lcssa ], [ %.fr, %.lr.ph63.split.us.split.us.epil.preheader ]
  call fastcc void @If_CluComposeLut(i32 noundef %1, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %i.b, ptr noundef %i.d)
  %i.bj = icmp slt i32 %1, 7
  %i.bk = select i1 %i.bj, i32 1, i32 %.pre-phi99 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.preheader.i51, label %If_CluEqual.exit.thread

.lr.ph.preheader.i51:                             ; preds = %._crit_edge64
  %wide.trip.count.i52 = zext nneg i32 %i.bk to i64
  br label %.lr.ph.i53

bb.d:                                             ; preds = %.lr.ph.i53
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, %wide.trip.count.i52
  br i1 %exitcond.not.i56, label %If_CluEqual.exit.thread, label %.lr.ph.i53, !llvm.loop !174

.lr.ph.i53:                                       ; preds = %bb.d, %.lr.ph.preheader.i51
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.preheader.i51 ], [ %indvars.iv.next.i55, %bb.d ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i54
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.bn, %i.bp
  br i1 %.not.i, label %bb.d, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i53
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  tail call void @If_CluPrintConfig(i32 poison, ptr noundef nonnull %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5)
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.d, i32 noundef %1) #24
  %putchar35 = call i32 @putchar(i32 10)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %0, i32 noundef %1) #24
  %putchar36 = call i32 @putchar(i32 10)          ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %If_CluEqual.exit.thread

If_CluEqual.exit.thread:                          ; preds = %bb.d, %._crit_edge64, %If_CluEqual.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @If_CluComposeLut(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #10 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp slt i32 %0, 7
  %i.c = add nsw i32 %0, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 14 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 3 uses
  br i1 %i.f, label %.lr.ph.preheader.i, label %If_CluClear.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %i.h, i1 false), !tbaa !18
  br label %If_CluClear.exit

If_CluClear.exit:                                 ; preds = %bb.a, %.lr.ph.preheader.i
  %i.i = load i8, ptr %1, align 1, !tbaa !175
  %.fr61 = freeze i8 %i.i                         ; 4 uses
  %i.j = zext nneg i8 %.fr61 to i32
  %i.k = shl nuw i32 1, %i.j                      ; 2 uses
  %.not = icmp eq i8 %.fr61, 31
  br i1 %.not, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %If_CluClear.exit
  %i.l = zext i32 %i.e to i64                     ; 5 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %wide.trip.count = sext i8 %.fr61 to i64
  %i.n = icmp sgt i8 %.fr61, 0
  br i1 %i.n, label %.lr.ph43.split.us, label %.lr.ph43.split

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  br i1 %i.f, label %.lr.ph43.split.us.split.us.preheader, label %._crit_edge44

.lr.ph43.split.us.split.us.preheader:             ; preds = %.lr.ph43.split.us
  %smax68 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %min.iters.check94 = icmp ult i32 %i.e, 4       ; 2 uses
  %n.vec110 = and i64 %i.l, 2147483644
  %exitcond.not.i.us.us.us = icmp eq i32 %i.e, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond.not.i.us.us.us.1 = icmp eq i32 %i.e, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %n.vec96 = and i64 %i.l, 2147483644
  %exitcond.not.i31.us.us.us = icmp eq i32 %i.e, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %exitcond.not.i31.us.us.us.1 = icmp eq i32 %i.e, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %min.iters.check80 = icmp ult i32 %i.e, 4
  %n.vec82 = and i64 %i.l, 2147483644
  %exitcond.not.i37.us.us = icmp eq i32 %i.e, 1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond.not.i37.us.us.1 = icmp eq i32 %i.e, 2
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph43.split.us.split.us

.lr.ph43.split.us.split.us:                       ; preds = %.lr.ph43.split.us.split.us.preheader, %If_CluOr.exit.us.us
  %.02240.us.us = phi i32 [ %i.ak, %If_CluOr.exit.us.us ], [ 0, %.lr.ph43.split.us.split.us.preheader ] ; 4 uses
  %i.w = lshr i32 %.02240.us.us, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18
  %i.aa = and i32 %.02240.us.us, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = and i64 %i.z, %i.ac
  %.not.us.us = icmp eq i64 %i.ad, 0
  br i1 %.not.us.us, label %If_CluOr.exit.us.us, label %.lr.ph.preheader.i24.us.us

.lr.ph.preheader.i24.us.us:                       ; preds = %.lr.ph43.split.us.split.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.m, i1 false), !tbaa !18
  br label %bb.b

end_hunk_0
begin_hunk_1_@If_CluComposeLut:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !18
  %i.bp = and i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.p, align 16, !tbaa !18
  br label %If_CluAnd.exit.us.us.us

.lr.ph.i28.us.us.us:                              ; preds = %.lr.ph.i28.us.us.us.preheader
  %i.bq = load i64, ptr %i.a, align 16, !tbaa !18
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.bs = xor i64 %i.br, -1
  %i.bt = and i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.a, align 16, !tbaa !18
  br i1 %exitcond.not.i31.us.us.us, label %If_CluAnd.exit.us.us.us, label %.lr.ph.i28.us.us.us.1

.lr.ph.i28.us.us.us.1:                            ; preds = %.lr.ph.i28.us.us.us
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !18
  %i.bx = xor i64 %i.bw, -1
  %i.by = and i64 %i.bu, %i.bx
  store i64 %i.by, ptr %i.q, align 8, !tbaa !18
  br i1 %exitcond.not.i31.us.us.us.1, label %If_CluAnd.exit.us.us.us, label %.lr.ph.i28.us.us.us.2

.lr.ph.i28.us.us.us.2:                            ; preds = %.lr.ph.i28.us.us.us.1
  %i.bz = load i64, ptr %i.r, align 16, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !18
  %i.cc = xor i64 %i.cb, -1
  %i.cd = and i64 %i.bz, %i.cc
  store i64 %i.cd, ptr %i.r, align 16, !tbaa !18
  br label %If_CluAnd.exit.us.us.us

If_CluAnd.exit.us.us.us:                          ; preds = %vector.body111, %.lr.ph.i.us.us.us, %.lr.ph.i.us.us.us.1, %.lr.ph.i.us.us.us.2, %vector.body97, %.lr.ph.i28.us.us.us, %.lr.ph.i28.us.us.us.1, %.lr.ph.i28.us.us.us.2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond67.not, label %.lr.ph.i34.us.us.preheader, label %bb.b, !llvm.loop !197

.lr.ph.i34.us.us.preheader:                       ; preds = %If_CluAnd.exit.us.us.us
  br i1 %min.iters.check80, label %.lr.ph.i34.us.us.preheader126, label %vector.body83

.lr.ph.i34.us.us.preheader126:                    ; preds = %.lr.ph.i34.us.us.preheader
  %i.ce = load i64, ptr %4, align 8, !tbaa !18
  %i.cf = load i64, ptr %i.a, align 16, !tbaa !18
  %i.cg = or i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %4, align 8, !tbaa !18
  br i1 %exitcond.not.i37.us.us, label %If_CluOr.exit.us.us, label %.lr.ph.i34.us.us.1

vector.body83:                                    ; preds = %.lr.ph.i34.us.us.preheader, %vector.body83
  %index84 = phi i64 [ %index.next89, %vector.body83 ], [ 0, %.lr.ph.i34.us.us.preheader ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index84 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load85 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !18
  %wide.load86 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index84 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load87 = load <2 x i64>, ptr %i.cj, align 16, !tbaa !18
  %wide.load88 = load <2 x i64>, ptr %i.ck, align 16, !tbaa !18
  %i.cl = or <2 x i64> %wide.load87, %wide.load85
  %i.cm = or <2 x i64> %wide.load88, %wide.load86
  store <2 x i64> %i.cl, ptr %i.ch, align 8, !tbaa !18
  store <2 x i64> %i.cm, ptr %i.ci, align 8, !tbaa !18
  %index.next89 = add nuw i64 %index84, 4         ; 2 uses
  %i.cn = icmp eq i64 %index.next89, %n.vec82
  br i1 %i.cn, label %If_CluOr.exit.us.us, label %vector.body83, !llvm.loop !198

.lr.ph43.split:                                   ; preds = %.lr.ph43
  br i1 %i.f, label %.lr.ph43.split.split.us.preheader, label %._crit_edge44

.lr.ph43.split.split.us.preheader:                ; preds = %.lr.ph43.split
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %i.l, 2147483644
  %exitcond.not.i37.us58 = icmp eq i32 %i.e, 1
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %exitcond.not.i37.us58.1 = icmp eq i32 %i.e, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.lr.ph43.split.split.us

.lr.ph43.split.split.us:                          ; preds = %.lr.ph43.split.split.us.preheader, %If_CluOr.exit.us59
  %.02240.us50 = phi i32 [ %i.dq, %If_CluOr.exit.us59 ], [ 0, %.lr.ph43.split.split.us.preheader ] ; 3 uses
  %i.cs = lshr i32 %.02240.us50, 6
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !18
  %i.cw = and i32 %.02240.us50, 63
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cv, %i.cy
  %.not.us51 = icmp eq i64 %i.cz, 0
  br i1 %.not.us51, label %If_CluOr.exit.us59, label %.lr.ph.preheader.i24.us52

.lr.ph.preheader.i24.us52:                        ; preds = %.lr.ph43.split.split.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.m, i1 false), !tbaa !18
  br i1 %min.iters.check, label %.lr.ph.i34.us55, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i24.us52, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i24.us52 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.da, align 8, !tbaa !18
  %wide.load76 = load <2 x i64>, ptr %i.db, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load77 = load <2 x i64>, ptr %i.dc, align 16, !tbaa !18
  %wide.load78 = load <2 x i64>, ptr %i.dd, align 16, !tbaa !18
  %i.de = or <2 x i64> %wide.load77, %wide.load
  %i.df = or <2 x i64> %wide.load78, %wide.load76
  store <2 x i64> %i.de, ptr %i.da, align 8, !tbaa !18
  store <2 x i64> %i.df, ptr %i.db, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %If_CluOr.exit.us59, label %vector.body, !llvm.loop !199

.lr.ph.i34.us55:                                  ; preds = %.lr.ph.preheader.i24.us52
  %i.dh = load i64, ptr %4, align 8, !tbaa !18
  %i.di = load i64, ptr %i.a, align 16, !tbaa !18
  %i.dj = or i64 %i.di, %i.dh
  store i64 %i.dj, ptr %4, align 8, !tbaa !18
  br i1 %exitcond.not.i37.us58, label %If_CluOr.exit.us59, label %.lr.ph.i34.us55.1

.lr.ph.i34.us55.1:                                ; preds = %.lr.ph.i34.us55
  %i.dk = load i64, ptr %i.co, align 8, !tbaa !18
  %i.dl = load i64, ptr %i.cp, align 8, !tbaa !18
  %i.dm = or i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.co, align 8, !tbaa !18
  br i1 %exitcond.not.i37.us58.1, label %If_CluOr.exit.us59, label %.lr.ph.i34.us55.2

.lr.ph.i34.us55.2:                                ; preds = %.lr.ph.i34.us55.1
  %i.dn = load i64, ptr %i.cq, align 8, !tbaa !18
  %i.do = load i64, ptr %i.cr, align 16, !tbaa !18
  %i.dp = or i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.cq, align 8, !tbaa !18
  br label %If_CluOr.exit.us59

If_CluOr.exit.us59:                               ; preds = %vector.body, %.lr.ph.i34.us55, %.lr.ph.i34.us55.1, %.lr.ph.i34.us55.2, %.lr.ph43.split.split.us
  %i.dq = add nuw nsw i32 %.02240.us50, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %smax
  br i1 %exitcond.not, label %._crit_edge44, label %.lr.ph43.split.split.us, !llvm.loop !194

._crit_edge44:                                    ; preds = %If_CluOr.exit.us59, %If_CluOr.exit.us.us, %.lr.ph43.split, %.lr.ph43.split.us, %If_CluClear.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @If_CluVerify3(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca [6 x [1024 x i64]], align 16      ; 12 uses
  %i.e = alloca [1024 x i64], align 16            ; 5 uses
  %i.f = alloca [1024 x i64], align 16            ; 5 uses
  %i.g = alloca [1024 x i64], align 16            ; 5 uses
  store i64 %5, ptr %i.a, align 8, !tbaa !18
  store i64 %6, ptr %i.b, align 8, !tbaa !18
  store i64 %7, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.h = load i64, ptr @TruthAll, align 16, !tbaa !18
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @If_CluInitTruthTables()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i8, ptr %2, align 1, !tbaa !175     ; 4 uses
  %wide.trip.count = zext i8 %i.j to i64          ; 2 uses
  %i.k = icmp sgt i8 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.m = icmp slt i32 %1, 7
  %i.n = add nsw i32 %1, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.preheader, label %._crit_edge.split

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i8 %i.j, 1
  br i1 %i.s, label %.lr.ph.preheader.i.epil.preheader, label %.lr.ph.preheader.i.preheader.new

.lr.ph.preheader.i.preheader.new:                 ; preds = %.lr.ph.preheader.i.preheader
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i, %.lr.ph.preheader.i.preheader.new
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.preheader.i.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.preheader.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.new ], [ %niter.next.1, %.lr.ph.preheader.i ]
  %8 = shl nuw nsw i64 %indvars.iv.a, 13
  %scevgep = getelementptr nuw i8, ptr %i.d, i64 %8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.a
  %i.u = load i8, ptr %i.t, align 1, !tbaa !80
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, ptr noundef nonnull align 16 dereferenceable(1) %i.w, i64 %i.r, i1 false), !tbaa !18
  %indvars.iv.next.a = or disjoint i64 %indvars.iv.a, 1 ; 2 uses
  %9 = shl nuw nsw i64 %indvars.iv.next.a, 13
  %scevgep.1 = getelementptr nuw i8, ptr %i.d, i64 %9
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next.a
  %i.y = load i8, ptr %i.x, align 1, !tbaa !80
  %i.z = sext i8 %i.y to i64
  %i.aa = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.1, ptr noundef nonnull align 16 dereferenceable(1) %i.aa, i64 %i.r, i1 false), !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.loopexit.unr-lcssa, label %.lr.ph.preheader.i, !llvm.loop !200

._crit_edge.split.loopexit.unr-lcssa:             ; preds = %.lr.ph.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.lr.ph.preheader.i.epil.preheader

.lr.ph.preheader.i.epil.preheader:                ; preds = %._crit_edge.split.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.preheader ], [ %indvars.iv.next.1, %._crit_edge.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i8 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %10 = shl nuw nsw i64 %indvars.iv.epil.init, 13
  %scevgep.epil = getelementptr nuw i8, ptr %i.d, i64 %10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.epil.init
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !80
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.epil, ptr noundef nonnull align 16 dereferenceable(1) %i.ae, i64 %i.r, i1 false), !tbaa !18
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %.lr.ph.preheader.i.epil.preheader, %._crit_edge.split.loopexit.unr-lcssa, %.lr.ph, %bb.c
  call fastcc void @If_CluComposeLut(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef %i.d, ptr noundef %i.e)
  %i.af = load i8, ptr %3, align 1, !tbaa !175    ; 4 uses
  %wide.trip.count122 = zext i8 %i.af to i64      ; 2 uses
  %i.ag = icmp sgt i8 %i.af, 0
  br i1 %i.ag, label %.lr.ph110, label %._crit_edge111.split

.lr.ph110:                                        ; preds = %._crit_edge.split
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  %i.ai = icmp slt i32 %1, 7
  %i.aj = add nsw i32 %1, -6
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = select i1 %i.ai, i32 1, i32 %i.ak       ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i56.preheader, label %._crit_edge111.split

.lr.ph.preheader.i56.preheader:                   ; preds = %.lr.ph110
  %wide.trip.count.i57 = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %wide.trip.count.i57, 3 ; 3 uses
  %xtraiter134 = and i64 %wide.trip.count122, 1
  %i.ao = icmp eq i8 %i.af, 1
  br i1 %i.ao, label %.lr.ph.preheader.i56.epil.preheader, label %.lr.ph.preheader.i56.preheader.new

.lr.ph.preheader.i56.preheader.new:               ; preds = %.lr.ph.preheader.i56.preheader
  %unroll_iter137 = and i64 %wide.trip.count122, 126
  br label %.lr.ph.preheader.i56

.lr.ph.preheader.i56:                             ; preds = %.lr.ph.preheader.i56, %.lr.ph.preheader.i56.preheader.new
  %indvars.iv119 = phi i64 [ 0, %.lr.ph.preheader.i56.preheader.new ], [ %indvars.iv.next120.1, %.lr.ph.preheader.i56 ] ; 4 uses
  %niter138 = phi i64 [ 0, %.lr.ph.preheader.i56.preheader.new ], [ %niter138.next.1, %.lr.ph.preheader.i56 ]
  %11 = shl nuw nsw i64 %indvars.iv119, 13
  %scevgep121 = getelementptr nuw i8, ptr %i.d, i64 %11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv119
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !80
  %i.ar = sext i8 %i.aq to i64
  %i.as = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep121, ptr noundef nonnull align 16 dereferenceable(1) %i.as, i64 %i.an, i1 false), !tbaa !18
  %indvars.iv.next120 = or disjoint i64 %indvars.iv119, 1 ; 2 uses
  %12 = shl nuw nsw i64 %indvars.iv.next120, 13
  %scevgep121.1 = getelementptr nuw i8, ptr %i.d, i64 %12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next120
  %i.au = load i8, ptr %i.at, align 1, !tbaa !80
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep121.1, ptr noundef nonnull align 16 dereferenceable(1) %i.aw, i64 %i.an, i1 false), !tbaa !18
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge111.split.loopexit.unr-lcssa, label %.lr.ph.preheader.i56, !llvm.loop !201

._crit_edge111.split.loopexit.unr-lcssa:          ; preds = %.lr.ph.preheader.i56
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %._crit_edge111.split, label %.lr.ph.preheader.i56.epil.preheader

.lr.ph.preheader.i56.epil.preheader:              ; preds = %._crit_edge111.split.loopexit.unr-lcssa, %.lr.ph.preheader.i56.preheader
  %indvars.iv119.epil.init = phi i64 [ 0, %.lr.ph.preheader.i56.preheader ], [ %indvars.iv.next120.1, %._crit_edge111.split.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod136 = trunc i8 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %13 = shl nuw nsw i64 %indvars.iv119.epil.init, 13
  %scevgep121.epil = getelementptr nuw i8, ptr %i.d, i64 %13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv119.epil.init
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = sext i8 %i.ay to i64
  %i.ba = getelementptr inbounds [8192 x i8], ptr @TruthAll, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep121.epil, ptr noundef nonnull align 16 dereferenceable(1) %i.ba, i64 %i.an, i1 false), !tbaa !18
  br label %._crit_edge111.split

._crit_edge111.split:                             ; preds = %.lr.ph.preheader.i56.epil.preheader, %._crit_edge111.split.loopexit.unr-lcssa, %.lr.ph110, %._crit_edge.split
  call fastcc void @If_CluComposeLut(i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef %i.f)
  %i.bb = load i8, ptr %4, align 1, !tbaa !175    ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, 0
  br i1 %i.bc, label %.lr.ph114, label %._crit_edge111.split.._crit_edge115_crit_edge

._crit_edge111.split.._crit_edge115_crit_edge:    ; preds = %._crit_edge111.split
  %.pre = add nsw i32 %1, -6
  %.pre129 = shl nuw i32 1, %.pre
  br label %._crit_edge115

.lr.ph114:                                        ; preds = %._crit_edge111.split
  %wide.trip.count127 = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.be = add nsw i32 %1, 1
  %i.bf = icmp slt i32 %1, 7
  %i.bg = add nsw i32 %1, -6
  %i.bh = shl nuw i32 1, %i.bg                    ; 2 uses
  %i.bi = select i1 %i.bf, i32 1, i32 %i.bh       ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0                   ; 3 uses
  %wide.trip.count.i78 = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %wide.trip.count.i78, 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph114, %If_CluCopy.exit69
  %indvars.iv124 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next125, %If_CluCopy.exit69 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv124
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80  ; 2 uses
  %i.bn = sext i8 %i.bm to i32                    ; 2 uses
  %i.bo = icmp eq i32 %1, %i.bn
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.bj, label %If_CluCopy.exit69.sink.split, label %If_CluCopy.exit69

bb.f:                                             ; preds = %bb.d
  %i.bp = icmp eq i32 %i.be, %i.bn
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.bj, label %If_CluCopy.exit69.sink.split, label %If_CluCopy.exit69

bb.h:                                             ; preds = %bb.f
  br i1 %i.bj, label %.lr.ph.i79.preheader, label %If_CluCopy.exit69

.lr.ph.i79.preheader:                             ; preds = %bb.h
  %i.bq = sext i8 %i.bm to i64
  %i.br = getelementptr [8192 x i8], ptr @TruthAll, i64 %i.bq
  br label %If_CluCopy.exit69.sink.split

If_CluCopy.exit69.sink.split:                     ; preds = %bb.g, %bb.e, %.lr.ph.i79.preheader
  %.sink132 = phi ptr [ %i.br, %.lr.ph.i79.preheader ], [ %i.e, %bb.e ], [ %i.f, %bb.g ]
  %i.bs = getelementptr [8192 x i8], ptr %i.d, i64 %indvars.iv124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.bs, ptr noundef nonnull align 16 dereferenceable(1) %.sink132, i64 %i.bk, i1 false), !tbaa !18
  br label %If_CluCopy.exit69

If_CluCopy.exit69:                                ; preds = %If_CluCopy.exit69.sink.split, %bb.h, %bb.g, %bb.e
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge115, label %bb.d, !llvm.loop !202

._crit_edge115:                                   ; preds = %If_CluCopy.exit69, %._crit_edge111.split.._crit_edge115_crit_edge
  %.pre-phi130 = phi i32 [ %.pre129, %._crit_edge111.split.._crit_edge115_crit_edge ], [ %i.bh, %If_CluCopy.exit69 ]
  call fastcc void @If_CluComposeLut(i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef %i.d, ptr noundef %i.g)
  %i.bt = icmp slt i32 %1, 7
  %i.bu = select i1 %i.bt, i32 1, i32 %.pre-phi130 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.preheader.i84, label %If_CluEqual.exit.thread

.lr.ph.preheader.i84:                             ; preds = %._crit_edge115
  %wide.trip.count.i85 = zext nneg i32 %i.bu to i64
  br label %.lr.ph.i86

bb.i:                                             ; preds = %.lr.ph.i86
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i85
  br i1 %exitcond.not.i89, label %If_CluEqual.exit.thread, label %.lr.ph.i86, !llvm.loop !174

.lr.ph.i86:                                       ; preds = %bb.i, %.lr.ph.preheader.i84
  %indvars.iv.i87 = phi i64 [ 0, %.lr.ph.preheader.i84 ], [ %indvars.iv.next.i88, %bb.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i87
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i87
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.bx, %i.bz
  br i1 %.not.i, label %bb.i, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i86
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1) ; 0 uses
  %i.cb = load i8, ptr %2, align 1, !tbaa !175
  %i.cc = sext i8 %i.cb to i32
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef %i.cc) #24
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.ce = load i8, ptr %2, align 1, !tbaa !175
  %i.cf = sext i8 %i.ce to i32
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.cf) ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !177
  %i.cj = sext i8 %i.ci to i32
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cj) ; 0 uses
  %i.cl = load i8, ptr %2, align 1, !tbaa !175
  %i.cm = icmp sgt i8 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i90, label %If_CluPrintGroup.exit

.lr.ph.i90:                                       ; preds = %If_CluEqual.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i90
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.i90 ], [ %indvars.iv.next.i92, %bb.j ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.i91
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !80
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, 97
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cr) ; 0 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %i.ct = load i8, ptr %2, align 1, !tbaa !175
  %i.cu = sext i8 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next.i92, %i.cu
  br i1 %i.cv, label %bb.j, label %If_CluPrintGroup.exit, !llvm.loop !178

If_CluPrintGroup.exit:                            ; preds = %bb.j, %If_CluEqual.exit
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.cw = load i8, ptr %3, align 1, !tbaa !175
  %i.cx = sext i8 %i.cw to i32
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef %i.cx) #24
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.cz = load i8, ptr %3, align 1, !tbaa !175
  %i.da = sext i8 %i.cz to i32
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.da) ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !177
  %i.de = sext i8 %i.dd to i32
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.de) ; 0 uses
  %i.dg = load i8, ptr %3, align 1, !tbaa !175
  %i.dh = icmp sgt i8 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i94, label %If_CluPrintGroup.exit97

.lr.ph.i94:                                       ; preds = %If_CluPrintGroup.exit
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i94
  %indvars.iv.i95 = phi i64 [ 0, %.lr.ph.i94 ], [ %indvars.iv.next.i96, %bb.k ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv.i95
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !80
  %i.dl = sext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, 97
  %i.dn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dm) ; 0 uses
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %i.do = load i8, ptr %3, align 1, !tbaa !175
  %i.dp = sext i8 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next.i96, %i.dp
  br i1 %i.dq, label %bb.k, label %If_CluPrintGroup.exit97, !llvm.loop !178

If_CluPrintGroup.exit97:                          ; preds = %bb.k, %If_CluPrintGroup.exit
  %puts.i93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.dr = load i8, ptr %4, align 1, !tbaa !175
  %i.ds = sext i8 %i.dr to i32
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.c, i32 noundef %i.ds) #24
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.du = load i8, ptr %4, align 1, !tbaa !175
  %i.dv = sext i8 %i.du to i32
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.dv) ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !177
  %i.dz = sext i8 %i.dy to i32
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.dz) ; 0 uses
  %i.eb = load i8, ptr %4, align 1, !tbaa !175
  %i.ec = icmp sgt i8 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i99, label %If_CluPrintGroup.exit102

.lr.ph.i99:                                       ; preds = %If_CluPrintGroup.exit97
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i99
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.i99 ], [ %indvars.iv.next.i101, %bb.l ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.i100
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !80
  %i.eg = sext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, 97
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.eh) ; 0 uses
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i100, 1 ; 2 uses
  %i.ej = load i8, ptr %4, align 1, !tbaa !175
  %i.ek = sext i8 %i.ej to i64
  %i.el = icmp slt i64 %indvars.iv.next.i101, %i.ek
  br i1 %i.el, label %bb.l, label %If_CluPrintGroup.exit102, !llvm.loop !178

If_CluPrintGroup.exit102:                         ; preds = %bb.l, %If_CluPrintGroup.exit97
  %puts.i98 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.e, i32 noundef %1) #24
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.f, i32 noundef %1) #24
  %putchar53 = call i32 @putchar(i32 10)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.g, i32 noundef %1) #24
  %putchar54 = call i32 @putchar(i32 10)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %0, i32 noundef %1) #24
end_hunk_1
begin_hunk_2_@If_CluMoveVar
define void @If_CluMoveVar(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [1024 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = sext i32 %4 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10   ; 3 uses
  %i.f = icmp slt i32 %i.e, %5
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.g = phi i32 [ %i.e, %bb.a ], [ %i.z, %.lr.ph ] ; 2 uses
  %.072.lcssa = phi ptr [ %0, %bb.a ], [ %.07078, %.lr.ph ] ; 2 uses
  %.070.lcssa = phi ptr [ %i.b, %bb.a ], [ %.07277, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.h = icmp sgt i32 %i.g, %5
  br i1 %i.h, label %.lr.ph86, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi i32 [ %i.z, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.079 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.a ]
  %.07078 = phi ptr [ %.07277, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %.07277 = phi ptr [ %.07078, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  call fastcc void @If_CluSwapAdjacent(ptr noundef %.07078, ptr noundef %.07277, i32 noundef %i.i, i32 noundef %1)
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !10
  %i.q = getelementptr i8, ptr %i.k, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !10
  %i.w = load <2 x i32>, ptr %i.k, align 4, !tbaa !10
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.x, ptr %i.k, align 4, !tbaa !10
  %i.y = add nuw nsw i32 %.079, 1                 ; 2 uses
  %i.z = load i32, ptr %i.d, align 4, !tbaa !10   ; 3 uses
  %i.aa = icmp slt i32 %i.z, %5
  br i1 %i.aa, label %.lr.ph, label %.preheader, !llvm.loop !217

.lr.ph86:                                         ; preds = %.preheader, %.lr.ph86
  %i.ab = phi i32 [ %i.au, %.lr.ph86 ], [ %i.g, %.preheader ] ; 2 uses
  %.185 = phi i32 [ %i.at, %.lr.ph86 ], [ %.0.lcssa, %.preheader ]
  %.17184 = phi ptr [ %.17383, %.lr.ph86 ], [ %.070.lcssa, %.preheader ] ; 3 uses
  %.17383 = phi ptr [ %.17184, %.lr.ph86 ], [ %.072.lcssa, %.preheader ] ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  call fastcc void @If_CluSwapAdjacent(ptr noundef %.17184, ptr noundef %.17383, i32 noundef %i.ac, i32 noundef %1)
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ad ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !10
  %i.ak = sext i32 %i.ab to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !10
  %i.ar = load <2 x i32>, ptr %i.ae, align 4, !tbaa !10
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.as, ptr %i.ae, align 4, !tbaa !10
  %i.at = add nuw nsw i32 %.185, 1                ; 2 uses
  %i.au = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.av = icmp sgt i32 %i.au, %5
  br i1 %i.av, label %.lr.ph86, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph86, %.preheader
  %.173.lcssa = phi ptr [ %.072.lcssa, %.preheader ], [ %.17184, %.lr.ph86 ] ; 7 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.at, %.lr.ph86 ]
  %.173.lcssa99 = ptrtoaddr ptr %.173.lcssa to i64
  %i.aw = and i32 %.1.lcssa, 1
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %If_CluCopy.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ax = icmp slt i32 %1, 7
  %i.ay = add nsw i32 %1, -6
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = select i1 %i.ax, i32 1, i32 %i.az       ; 4 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.ba to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ba, 8
  %i.bc = sub i64 %.173.lcssa99, %i.a
  %diff.check = icmp ugt i64 %i.bc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bd = icmp ult i32 %i.ba, 4
  br i1 %i.bd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x i64>, ptr %i.be, align 8, !tbaa !18
  %wide.load100 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x i64> %wide.load, ptr %i.bg, align 8, !tbaa !18
  store <2 x i64> %wide.load100, ptr %i.bh, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %If_CluCopy.exit, label %vector.body, !llvm.loop !219

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !18
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.next.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !18
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.next.i.1
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !18
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.next.i.2
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %If_CluCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !220

If_CluCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %If_CluCopy.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %If_CluCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %If_CluCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.173.lcssa, i64 %indvars.iv.i.epil
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.epil
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %If_CluCopy.exit, label %.lr.ph.i.epil, !llvm.loop !221

If_CluCopy.exit:                                  ; preds = %vector.body, %If_CluCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_CluMoveGroupToMsb(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !175     ; 2 uses
  %i.b = icmp sgt i8 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext nneg i8 %i.a to i32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.e = phi i32 [ %i.c, %.lr.ph ], [ %i.o, %bb.b ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.f = xor i32 %.012, -1                        ; 2 uses
  %i.g = add nsw i32 %i.e, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !80
  %i.k = sext i8 %i.j to i32
  %i.l = add i32 %1, %i.f
  tail call void @If_CluMoveVar(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = add nuw nsw i32 %.012, 1                 ; 2 uses
  %i.n = load i8, ptr %4, align 1, !tbaa !175
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge, !llvm.loop !222

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @If_CluReverseOrder_old(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.g, i1 false), !tbaa !18
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.a
  %i.h = icmp slt i32 %4, %1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %If_CluCopy.exit
  %i.i = sext i32 %4 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %3, i64 %i.i
  %.neg = add nsw i32 %1, -1
  %i.k = add i32 %.neg, %4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.030 = phi i32 [ %4, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !10
  %i.m = sub i32 %i.k, %.030
  tail call void @If_CluMoveVar(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.l, i32 noundef %i.m)
  %i.n = add i32 %.030, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !223

._crit_edge:                                      ; preds = %bb.b, %If_CluCopy.exit
  %i.o = sub nsw i32 %1, %4                       ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %i.q = icmp sgt i32 %i.o, 1
  br i1 %i.q, label %.lr.ph.i20, label %If_CluReverseOrder.exit

.lr.ph.i20:                                       ; preds = %._crit_edge, %.lr.ph.i20
  %.013.i = phi i32 [ %i.u, %.lr.ph.i20 ], [ 0, %._crit_edge ] ; 3 uses
  %i.r = add nsw i32 %.013.i, %4
  %i.s = xor i32 %.013.i, -1
  %i.t = add i32 %1, %i.s
  call void @If_CluSwapVars(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef null, ptr noundef null, i32 noundef %i.r, i32 noundef %i.t)
  %i.u = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %exitcond.not.i21 = icmp eq i32 %i.u, %i.p
  br i1 %exitcond.not.i21, label %If_CluReverseOrder.exit, label %.lr.ph.i20, !llvm.loop !216

If_CluReverseOrder.exit:                          ; preds = %.lr.ph.i20, %._crit_edge
  br i1 %i.f, label %.lr.ph.preheader.i22, label %If_CluEqual.exit.thread

.lr.ph.preheader.i22:                             ; preds = %If_CluReverseOrder.exit
  %wide.trip.count.i23 = zext nneg i32 %i.e to i64
  br label %.lr.ph.i24

bb.c:                                             ; preds = %.lr.ph.i24
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i23
  br i1 %exitcond.not.i27, label %If_CluEqual.exit.thread, label %.lr.ph.i24, !llvm.loop !174

.lr.ph.i24:                                       ; preds = %bb.c, %.lr.ph.preheader.i22
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.preheader.i22 ], [ %indvars.iv.next.i26, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i25
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i25
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.w, %i.y
  br i1 %.not.i, label %bb.c, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i24
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %1) ; 0 uses
  br label %If_CluEqual.exit.thread

If_CluEqual.exit.thread:                          ; preds = %bb.c, %If_CluReverseOrder.exit, %If_CluEqual.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @If_CluCountCofs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.c = alloca [128 x i64], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.d = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.e = sub nsw i32 %1, %2                       ; 4 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i32 1, %i.e
  %i.h = zext nneg i32 %i.g to i64
  %notmask = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask, -1
  %.not180 = icmp eq i32 %2, 31
  br i1 %.not180, label %._crit_edge175, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.b
  %.not117 = icmp eq ptr %4, null
  %wide.trip.count212 = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph174, %.thread218
  %indvars.iv208 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next209, %.thread218 ] ; 3 uses
  %.0172 = phi i32 [ 0, %.lr.ph174 ], [ %.1220, %.thread218 ] ; 6 uses
  %.0104170 = phi i64 [ 0, %.lr.ph174 ], [ %.1105, %.thread218 ]
  %i.j = trunc nuw nsw i64 %indvars.iv208 to i32
  %i.k = shl nsw i32 %i.j, %i.e
  %i.l = add nsw i32 %i.k, %3                     ; 2 uses
  %i.m = sdiv i32 %i.l, 64
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %i.q = and i32 %i.l, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.p, %i.r
  %i.t = and i64 %i.s, %i.i                       ; 3 uses
  %i.u = icmp sgt i32 %.0172, 0
  br i1 %i.u, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %bb.c
  %wide.trip.count206 = zext nneg i32 %.0172 to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.d
  %indvars.iv203 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next204, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv203
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18
  %i.x = icmp eq i64 %i.t, %i.w
  br i1 %i.x, label %._crit_edge166.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph165
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge166.thread, label %.lr.ph165, !llvm.loop !224

._crit_edge166.loopexit:                          ; preds = %.lr.ph165
  %i.y = trunc nuw nsw i64 %indvars.iv203 to i32
  br label %._crit_edge166

._crit_edge166:                                   ; preds = %._crit_edge166.loopexit, %bb.c
  %.0100.lcssa = phi i32 [ 0, %bb.c ], [ %i.y, %._crit_edge166.loopexit ]
  %i.z = icmp eq i32 %.0100.lcssa, %.0172
  br i1 %i.z, label %._crit_edge166.thread, label %.thread218

._crit_edge166.thread:                            ; preds = %bb.d, %._crit_edge166
  %i.aa = add nsw i32 %.0172, 1                   ; 2 uses
  %i.ab = sext i32 %.0172 to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab
  store i64 %i.t, ptr %i.ac, align 8, !tbaa !18
  %i.ad = icmp eq i32 %i.aa, 5
  br i1 %i.ad, label %.thread, label %.thread218

.thread218:                                       ; preds = %._crit_edge166, %._crit_edge166.thread
  %.1220 = phi i32 [ %i.aa, %._crit_edge166.thread ], [ %.0172, %._crit_edge166 ] ; 2 uses
  %i.ae = load i64, ptr %i.c, align 16            ; 2 uses
  %.not118 = icmp eq i64 %i.t, %i.ae
  %or.cond119 = select i1 %.not117, i1 true, i1 %.not118
  %i.af = shl nuw i64 1, %indvars.iv208
  %i.ag = select i1 %or.cond119, i64 0, i64 %i.af
  %.1105 = or i64 %i.ag, %.0104170                ; 2 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count212
  br i1 %exitcond213.not, label %._crit_edge175, label %bb.c, !llvm.loop !225

._crit_edge175:                                   ; preds = %.thread218, %bb.b
  %i.ah = phi i64 [ 0, %bb.b ], [ %i.ae, %.thread218 ] ; 2 uses
  %.0104.lcssa = phi i64 [ 0, %bb.b ], [ %.1105, %.thread218 ]
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1220, %.thread218 ] ; 4 uses
  %i.ai = icmp slt i32 %.0.lcssa, 3
  %i.aj = icmp ne ptr %4, null
  %or.cond = and i1 %i.aj, %i.ai
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %._crit_edge175
  store i64 %i.ah, ptr %4, align 8, !tbaa !18
end_hunk_2
begin_hunk_3_@If_CluFindGroup:bb.a

._crit_edge146.split.us.i:                        ; preds = %._crit_edge146.split.us.loopexit.i, %.lr.ph159.i.split
  %.1101.lcssa.i = phi i32 [ 0, %.lr.ph159.i.split ], [ %i.dg, %._crit_edge146.split.us.loopexit.i ]
  %i.dh = icmp eq i32 %.1101.lcssa.i, %.3156.i
  br i1 %i.dh, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %bb.o, %._crit_edge146.split.us.i
  %i.di = add nsw i32 %.3156.i, 1                 ; 2 uses
  %i.dj = sext i32 %.3156.i to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dj
  store i64 %indvars.iv197.i, ptr %i.dk, align 8, !tbaa !18
  %i.dl = icmp eq i32 %i.di, 5
  br i1 %i.dl, label %If_CluCountCofs.exit, label %.thread

If_CluCountCofs.exit:                             ; preds = %.loopexit, %.thread, %.thread.us, %.lr.ph145.i.us, %.thread218.i, %._crit_edge166.thread.i, %bb.l, %bb.j
  %.6.i = phi i32 [ 0, %bb.l ], [ 0, %bb.j ], [ %.4.i158.us, %.thread.us ], [ %.1220.i, %.thread218.i ], [ 5, %._crit_edge166.thread.i ], [ 5, %.lr.ph145.i.us ], [ 5, %.loopexit ], [ %.4.i158, %.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not155 = icmp slt i32 %.2175, %.6.i
  br i1 %.not155, label %bb.q, label %bb.p

bb.p:                                             ; preds = %If_CluCountCofs.exit
  %i.dm = load i32, ptr %i.ah, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %If_CluCountCofs.exit, %bb.p
  %.3138 = phi i32 [ %i.dm, %bb.p ], [ %.2137174, %If_CluCountCofs.exit ] ; 2 uses
  %.3 = phi i32 [ %.6.i, %bb.p ], [ %.2175, %If_CluCountCofs.exit ]
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.dn = icmp slt i64 %indvars.iv.next197, %i.ax
  br i1 %i.dn, label %.lr.ph177, label %._crit_edge178, !llvm.loop !304

._crit_edge178:                                   ; preds = %bb.q, %bb.i
  %.2137.lcssa = phi i32 [ %i.bm, %bb.i ], [ %.3138, %bb.q ]
  %i.do = sext i32 %.2137.lcssa to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  tail call void @If_CluSwapVars(ptr noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef %6, i32 noundef %i.dq, i32 noundef %i.aa)
  %i.dr = tail call i32 @If_CluCountCofs(ptr noundef %1, i32 noundef %2, i32 noundef %7, i32 noundef 0, ptr noundef null) ; 2 uses
  %i.ds = load i8, ptr %i.f, align 1, !tbaa !177  ; 2 uses
  %i.dt = sext i8 %i.ds to i32
  %.not153 = icmp sgt i32 %i.dr, %i.dt
  br i1 %.not153, label %thread-pre-split, label %bb.r

bb.r:                                             ; preds = %._crit_edge178
  store i8 %i.c, ptr %0, align 1, !tbaa !175
  %i.du = trunc i32 %i.dr to i8                   ; 4 uses
  store i8 %i.du, ptr %i.f, align 1, !tbaa !177
  br i1 %i.g, label %.lr.ph182.preheader, label %thread-pre-split

.lr.ph182.preheader:                              ; preds = %bb.r
  br i1 %min.iters.check231, label %.lr.ph182.preheader246, label %vector.body234

vector.body234:                                   ; preds = %.lr.ph182.preheader, %vector.body234
  %index235 = phi i64 [ %index.next238, %vector.body234 ], [ 0, %.lr.ph182.preheader ] ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %invariant.gep220, i64 %index235 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %wide.load236 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !10
  %wide.load237 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !10
  %i.dx = trunc <4 x i32> %wide.load236 to <4 x i8>
  %i.dy = trunc <4 x i32> %wide.load237 to <4 x i8>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.at, i64 %index235 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store <4 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !80
  store <4 x i8> %i.dy, ptr %i.ea, align 1, !tbaa !80
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.eb, label %middle.block239, label %vector.body234, !llvm.loop !305

middle.block239:                                  ; preds = %vector.body234
  br i1 %cmp.n240, label %thread-pre-split, label %.lr.ph182.preheader246

.lr.ph182.preheader246:                           ; preds = %.lr.ph182.preheader, %middle.block239
  %indvars.iv199.ph = phi i64 [ 0, %.lr.ph182.preheader ], [ %n.vec233, %middle.block239 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader246, %.lr.ph182
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %.lr.ph182 ], [ %indvars.iv199.ph, %.lr.ph182.preheader246 ] ; 3 uses
  %gep221 = getelementptr [4 x i8], ptr %invariant.gep220, i64 %indvars.iv199
  %i.ec = load i32, ptr %gep221, align 4, !tbaa !10
  %i.ed = trunc i32 %i.ec to i8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv199
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !80
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %thread-pre-split, label %.lr.ph182, !llvm.loop !306

thread-pre-split:                                 ; preds = %.lr.ph182, %middle.block239, %bb.r, %._crit_edge178
  %i.ef = phi i8 [ %i.ds, %._crit_edge178 ], [ %i.du, %bb.r ], [ %i.du, %middle.block239 ], [ %i.du, %.lr.ph182 ]
  %i.eg = icmp eq i8 %i.ef, 2
  br i1 %i.eg, label %.loopexit161, label %bb.s

bb.s:                                             ; preds = %thread-pre-split
  br i1 %.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eh = tail call i32 @If_CluCheckNonDisjointGroup(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %0)
  %.not154 = icmp eq i32 %i.eh, 0
  br i1 %.not154, label %bb.u, label %.loopexit161

bb.u:                                             ; preds = %bb.s, %bb.t
  br i1 %i.ay, label %bb.e, label %.loopexit161.sink.split, !llvm.loop !307

.loopexit161.sink.split:                          ; preds = %bb.u, %bb.d
  store i8 0, ptr %0, align 1, !tbaa !175
  br label %.loopexit161

.loopexit161:                                     ; preds = %bb.t, %thread-pre-split, %.loopexit161.sink.split, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @If_CluCheckGroup(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 7 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.lr.ph.preheader.i

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %vec.ind, ptr %i.e, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.f, align 16, !tbaa !10
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> %vec.ind, ptr %i.g, align 16, !tbaa !10
  store <4 x i32> %step.add, ptr %i.h, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader35 ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.k, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.k, ptr %i.l, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !309

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.m = icmp samesign ult i32 %1, 7
  %i.n = add nsw i32 %1, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.a, %._crit_edge
  %i.r = phi i32 [ %i.p, %._crit_edge ], [ 1, %bb.a ]
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.s, i1 false), !tbaa !18
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %._crit_edge
  %i.t = load i8, ptr %2, align 1, !tbaa !175     ; 3 uses
  %i.u = icmp sgt i8 %i.t, 0
  br i1 %i.u, label %.lr.ph.i24, label %If_CluCopy.exit.If_CluMoveGroupToMsb.exit_crit_edge

If_CluCopy.exit.If_CluMoveGroupToMsb.exit_crit_edge: ; preds = %If_CluCopy.exit
  %.pre30 = sext i8 %i.t to i32
  br label %If_CluMoveGroupToMsb.exit

.lr.ph.i24:                                       ; preds = %If_CluCopy.exit
  %i.v = zext nneg i8 %i.t to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i24
  %i.x = phi i32 [ %i.v, %.lr.ph.i24 ], [ %i.ah, %bb.b ]
  %.012.i = phi i32 [ 0, %.lr.ph.i24 ], [ %i.af, %bb.b ] ; 2 uses
  %i.y = xor i32 %.012.i, -1                      ; 2 uses
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !80
  %i.ad = sext i8 %i.ac to i32
  %i.ae = add i32 %1, %i.y
  call void @If_CluMoveVar(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.ad, i32 noundef %i.ae)
  %i.af = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %i.ag = load i8, ptr %2, align 1, !tbaa !175
  %i.ah = sext i8 %i.ag to i32                    ; 3 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.b, label %If_CluMoveGroupToMsb.exit, !llvm.loop !222

If_CluMoveGroupToMsb.exit:                        ; preds = %bb.b, %If_CluCopy.exit.If_CluMoveGroupToMsb.exit_crit_edge
  %.pre-phi31 = phi i32 [ %.pre30, %If_CluCopy.exit.If_CluMoveGroupToMsb.exit_crit_edge ], [ %i.ah, %bb.b ]
  %i.aj = call i32 @If_CluCountCofs(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %.pre-phi31, i32 noundef 0, ptr noundef null) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !177
  %i.am = sext i8 %i.al to i32
  %.not = icmp eq i32 %i.aj, %i.am
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %If_CluMoveGroupToMsb.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %If_CluMoveGroupToMsb.exit
  %i.an = icmp sgt i32 %i.aj, 2
  br i1 %i.an, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ao = add nsw i32 %1, -1                      ; 3 uses
  %i.ap = load i8, ptr %2, align 1, !tbaa !175
  %i.aq = sext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  %i.as = call i32 @If_CluCountCofs(ptr noundef nonnull %i.a, i32 noundef %i.ao, i32 noundef %i.ar, i32 noundef 0, ptr noundef null)
  %i.at = icmp sgt i32 %i.as, 2
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %puts22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %.pre = load i8, ptr %2, align 1, !tbaa !175
  %.pre27 = sext i8 %.pre to i32
  %.pre28 = add nsw i32 %.pre27, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi29 = phi i32 [ %.pre28, %bb.f ], [ %i.ar, %bb.e ]
  %i.au = shl nuw i32 1, %i.ao
  %i.av = call i32 @If_CluCountCofs(ptr noundef nonnull %i.a, i32 noundef %i.ao, i32 noundef %.pre-phi29, i32 noundef %i.au, ptr noundef null)
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %puts23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @If_CluCheckPerm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %.lr.ph.preheader.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  tail call void @If_CluMoveVar(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %.014, i32 noundef %.014)
  %i.b = add nuw nsw i32 %.014, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.b, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !310

._crit_edge:                                      ; preds = %.lr.ph
  %i.c = icmp samesign ult i32 %2, 7
  %i.d = add nsw i32 %2, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %If_CluEqual.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a, %._crit_edge
  %i.h = phi i32 [ %i.f, %._crit_edge ], [ 1, %bb.a ]
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %If_CluEqual.exit.thread, label %.lr.ph.i, !llvm.loop !174

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.j, %i.l
  br i1 %.not.i, label %bb.b, label %If_CluEqual.exit

If_CluEqual.exit:                                 ; preds = %.lr.ph.i
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %If_CluEqual.exit.thread

If_CluEqual.exit.thread:                          ; preds = %bb.b, %._crit_edge, %If_CluEqual.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_CluMinimumBase(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 3 uses
  %i.b = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp samesign ult i32 %2, 7
  %i.d = add nsw i32 %2, -6
  %i.e = shl nuw i32 1, %i.d
  %.fr = freeze i32 %i.e
  %i.f = select i1 %i.c, i32 1, i32 %.fr          ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  %wide.trip.count52.i = zext nneg i32 %i.f to i64
  %.not32 = icmp eq ptr %1, null
  br i1 %i.g, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count144 = zext nneg i32 %2 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %If_CluHasVar.exit.thread.us
  %indvars.iv141 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next142, %If_CluHasVar.exit.thread.us ] ; 7 uses
  %.056.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.1.us, %If_CluHasVar.exit.thread.us ] ; 3 uses
  %.02255.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.123.us, %If_CluHasVar.exit.thread.us ] ; 4 uses
  %i.h = icmp samesign ult i64 %indvars.iv141, 6
  br i1 %i.h, label %.lr.ph.i.us, label %.preheader.lr.ph.i.us

.preheader.lr.ph.i.us:                            ; preds = %.lr.ph.split.us
  %i.i = add nsw i64 %indvars.iv141, -6           ; 2 uses
  %i.j = icmp eq i64 %i.i, 31
  %i.k = trunc nsw i64 %i.i to i32                ; 2 uses
  %i.l = shl i32 2, %i.k                          ; 2 uses
  %i.m = sext i32 %i.l to i64
  br i1 %i.j, label %If_CluHasVar.exit.thread45.us, label %.preheader.us.preheader.i.us

.preheader.us.preheader.i.us:                     ; preds = %.preheader.lr.ph.i.us
  %i.n = shl nuw i32 1, %i.k                      ; 2 uses
  %i.o = sext i32 %i.n to i64
  %smax.i.us = tail call i32 @llvm.smax.i32(i32 %i.n, i32 1)
  %wide.trip.count.i.us = zext nneg i32 %smax.i.us to i64
  br label %.preheader.us.i.us

.preheader.us.i.us:                               ; preds = %._crit_edge.us.i.us, %.preheader.us.preheader.i.us
  %.041.us.i.us = phi i32 [ %i.t, %._crit_edge.us.i.us ], [ 0, %.preheader.us.preheader.i.us ]
  %.03140.us.i.us = phi ptr [ %i.s, %._crit_edge.us.i.us ], [ %0, %.preheader.us.preheader.i.us ] ; 3 uses
  %invariant.gep.i.us = getelementptr [8 x i8], ptr %.03140.us.i.us, i64 %i.o
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.preheader.us.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.03140.us.i.us, i64 %indvars.iv.i.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18
  %gep.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  %i.r = load i64, ptr %gep.i.us, align 8, !tbaa !18
  %.not.us.i.us = icmp eq i64 %i.q, %i.r
  br i1 %.not.us.i.us, label %bb.c, label %If_CluHasVar.exit.thread45.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge.us.i.us, label %bb.b, !llvm.loop !20

._crit_edge.us.i.us:                              ; preds = %bb.c
  %i.s = getelementptr inbounds [8 x i8], ptr %.03140.us.i.us, i64 %i.m
  %i.t = add nsw i32 %.041.us.i.us, %i.l          ; 2 uses
  %i.u = icmp slt i32 %i.t, %i.f
  br i1 %i.u, label %.preheader.us.i.us, label %If_CluHasVar.exit.thread.us, !llvm.loop !21

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us
  %i.v = trunc nuw nsw i64 %indvars.iv141 to i32
  %i.w = shl nuw nsw i32 1, %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv141
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = xor i64 %i.y, -1
  %i.aa = zext nneg i32 %i.w to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.us
  %indvars.iv49.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next50.i.us, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv49.i.us
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = and i64 %i.ac, %i.z
  %i.ae = and i64 %i.ac, %i.y
  %i.af = lshr i64 %i.ae, %i.aa
  %.not36.i.us = icmp eq i64 %i.ad, %i.af
  br i1 %.not36.i.us, label %bb.e, label %If_CluHasVar.exit.thread45.us

end_hunk_3
