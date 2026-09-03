Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress_sequences?download=true
inline.NumInlined: 105
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZSTD_selectEncodingType:bb.a
bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.g, 2
  %i.i = icmp ult i64 %4, 1000
  %or.cond3 = and i1 %i.i, %i.h
  br i1 %or.cond3, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = sub nuw nsw i32 10, %10
  %i.k = zext nneg i32 %i.j to i64
  %i.l = zext nneg i32 %8 to i64
  %i.m = shl i64 %i.k, %i.l
  %i.n = lshr i64 %i.m, 3
  %i.o = icmp ult i64 %4, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %8, -1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 %4, %i.q
  %i.s = icmp ult i64 %3, %i.r
  br i1 %i.s, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.f, %bb.g
  store i32 0, ptr %0, align 4, !tbaa !15
  br label %.thread

bb.i:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = sub i32 8, %8                            ; 3 uses
  %i.u = add i32 %2, 1                            ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %wide.trip.count.i = zext i32 %umax.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.k ] ; 4 uses
  %.01417.i = phi i64 [ 0, %.new ], [ %i.ar, %bb.k ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.k ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !12   ; 2 uses
  %.not16.i = icmp eq i16 %i.x, -1
  %narrow.i = select i1 %.not16.i, i16 1, i16 %i.x
  %spec.select.i = sext i16 %narrow.i to i32
  %i.y = shl i32 %spec.select.i, %i.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !15
  %i.ae = mul i32 %i.ad, %i.aa
  %i.af = zext i32 %i.ae to i64
  %i.ag = add i64 %.01417.i, %i.af
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.next.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !12 ; 2 uses
  %.not16.i.1 = icmp eq i16 %i.ai, -1
  %narrow.i.1 = select i1 %.not16.i.1, i16 1, i16 %i.ai
  %spec.select.i.1 = sext i16 %narrow.i.1 to i32
  %i.aj = shl i32 %spec.select.i.1, %i.t
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15
  %i.ap = mul i32 %i.ao, %i.al
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add i64 %i.ag, %i.aq                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %ZSTD_crossEntropyCost.exit.unr-lcssa, label %bb.k, !llvm.loop !1

ZSTD_crossEntropyCost.exit.unr-lcssa:             ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_crossEntropyCost.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ZSTD_crossEntropyCost.exit.unr-lcssa, %bb.j
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.1, %ZSTD_crossEntropyCost.exit.unr-lcssa ] ; 2 uses
  %.01417.i.epil.init = phi i64 [ 0, %bb.j ], [ %i.ar, %ZSTD_crossEntropyCost.exit.unr-lcssa ]
  %lcmp.mod92 = trunc i32 %umax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %indvars.iv.i.epil.init
  %i.at = load i16, ptr %i.as, align 2, !tbaa !12 ; 2 uses
  %.not16.i.epil = icmp eq i16 %i.at, -1
  %narrow.i.epil = select i1 %.not16.i.epil, i16 1, i16 %i.at
  %spec.select.i.epil = sext i16 %narrow.i.epil to i32
  %i.au = shl i32 %spec.select.i.epil, %i.t
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i.epil.init
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !15
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !15
  %i.ba = mul i32 %i.az, %i.aw
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %.01417.i.epil.init, %i.bb
  br label %ZSTD_crossEntropyCost.exit

ZSTD_crossEntropyCost.exit:                       ; preds = %ZSTD_crossEntropyCost.exit.unr-lcssa, %.epil.preheader
  %.lcssa90 = phi i64 [ %i.ar, %ZSTD_crossEntropyCost.exit.unr-lcssa ], [ %i.bc, %.epil.preheader ]
  %i.bd = lshr i64 %.lcssa90, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %ZSTD_crossEntropyCost.exit
  %i.be = phi i64 [ %i.bd, %ZSTD_crossEntropyCost.exit ], [ -1, %bb.i ] ; 2 uses
  %i.bf = load i32, ptr %0, align 4, !tbaa !15
  %.not56 = icmp eq i32 %i.bf, 0
  br i1 %.not56, label %ZSTD_fseBitCost.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load i16, ptr %6, align 1, !tbaa !12 ; 2 uses
  %i.bg = zext i16 %.val.i.i to i32               ; 4 uses
  %.not.i.i = icmp eq i16 %.val.i.i, 0
  %i.bh = add nsw i32 %i.bg, -1
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = sext i32 %i.bi to i64
  %i.bk = select i1 %.not.i.i, i64 1, i64 %i.bj
  %i.bl = getelementptr [4 x i8], ptr %6, i64 %i.bk
  %i.bm = getelementptr i8, ptr %6, i64 2
  %.val.i = load i16, ptr %i.bm, align 1, !tbaa !12
  %i.bn = zext i16 %.val.i to i32
  %i.bo = icmp ugt i32 %2, %i.bn
  br i1 %i.bo, label %ZSTD_fseBitCost.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.bp = shl nuw i32 1, %i.bg
  %i.bq = shl nuw nsw i32 %i.bg, 8
  %i.br = add nuw nsw i32 %i.bq, 256
  %i.bs = add nuw nsw i32 %2, 1
  %wide.trip.count.i64 = zext nneg i32 %i.bs to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i65 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i66, %bb.q ] ; 3 uses
  %.02031.i = phi i64 [ 0, %.preheader.i ], [ %.1.ph.i, %bb.q ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.i65
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14 ; 2 uses
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = add nuw nsw i32 %i.bw, 1                ; 2 uses
  %i.by = add i32 %i.bv, %i.bp
  %i.bz = shl i32 %i.bx, 24
  %i.ca = shl i32 %i.by, 8
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = lshr i32 %i.cb, %i.bg
  %i.cd = shl nuw nsw i32 %i.bx, 8
  %i.ce = sub i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i65
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !15 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not26.i = icmp ult i32 %i.ce, %i.br
  br i1 %.not26.i, label %bb.p, label %ZSTD_fseBitCost.exit

bb.p:                                             ; preds = %bb.o
  %i.ci = zext i32 %i.cg to i64
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = mul nuw nsw i64 %i.cj, %i.ci
  %i.cl = add i64 %i.ck, %.02031.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.1.ph.i = phi i64 [ %.02031.i, %bb.n ], [ %i.cl, %bb.p ] ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i64
  br i1 %exitcond.not.i, label %bb.r, label %bb.n, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.cm = lshr i64 %.1.ph.i, 8
  br label %ZSTD_fseBitCost.exit

ZSTD_fseBitCost.exit:                             ; preds = %bb.o, %bb.r, %bb.m, %bb.l
  %i.cn = phi i64 [ -1, %bb.l ], [ %i.cm, %bb.r ], [ -1, %bb.m ], [ -1, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.co = tail call i32 @FSE_optimalTableLog(i32 noundef %5, i64 noundef %4, i32 noundef %2) #8 ; 2 uses
  %i.cp = icmp ugt i64 %4, 2047
  %i.cq = zext i1 %i.cp to i32
  %i.cr = call i64 @FSE_normalizeCount(ptr noundef nonnull %i.b, i32 noundef %i.co, ptr noundef %1, i64 noundef %4, i32 noundef %2, i32 noundef %i.cq) #8 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, -119
  br i1 %i.cs, label %bb.s, label %ZSTD_NCountCost.exit

bb.s:                                             ; preds = %ZSTD_fseBitCost.exit
  %i.ct = call i64 @FSE_writeNCount(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %i.co) #8
  br label %ZSTD_NCountCost.exit

ZSTD_NCountCost.exit:                             ; preds = %ZSTD_fseBitCost.exit, %bb.s
  %.1.i = phi i64 [ %i.ct, %bb.s ], [ %i.cr, %ZSTD_fseBitCost.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cu = add i32 %2, 1
  %umax.i67 = call i32 @llvm.umax.i32(i32 %i.cu, i32 1)
  %wide.trip.count.i68 = zext i32 %umax.i67 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %ZSTD_NCountCost.exit
  %indvars.iv.i69 = phi i64 [ 0, %ZSTD_NCountCost.exit ], [ %indvars.iv.next.i70, %bb.t ] ; 2 uses
  %.016.i = phi i32 [ 0, %ZSTD_NCountCost.exit ], [ %i.dg, %bb.t ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i69
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !15 ; 3 uses
  %i.cx = shl i32 %i.cw, 8
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = udiv i64 %i.cy, %4
  %i.da = icmp ne i32 %i.cw, 0
  %i.db = icmp ugt i64 %4, %i.cy
  %or.cond.i.a = and i1 %i.da, %i.db
  %i.dc = select i1 %or.cond.i.a, i64 1, i64 %i.cz
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !15
  %i.df = mul i32 %i.de, %i.cw
  %i.dg = add i32 %i.df, %.016.i                  ; 2 uses
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %exitcond.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i68
  br i1 %exitcond.i71, label %ZSTD_entropyCost.exit, label %bb.t, !llvm.loop !24

ZSTD_entropyCost.exit:                            ; preds = %bb.t
  %i.dh = shl i64 %.1.i, 3
  %i.di = lshr i32 %i.dg, 8
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add i64 %i.dh, %i.dj                    ; 2 uses
  %.not57 = icmp ugt i64 %i.be, %i.cn
  %.not58 = icmp ugt i64 %i.be, %i.dk
  %or.cond61 = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %ZSTD_entropyCost.exit
  store i32 0, ptr %0, align 4, !tbaa !15
  br label %.thread

bb.v:                                             ; preds = %ZSTD_entropyCost.exit
  %.not59 = icmp ugt i64 %i.cn, %i.dk
  br i1 %.not59, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v, %bb.g, %bb.d
  store i32 1, ptr %0, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.u, %bb.h, %bb.e, %bb.b, %bb.w
  %.2 = phi i32 [ %., %bb.b ], [ 3, %bb.e ], [ 2, %bb.w ], [ 0, %bb.h ], [ 3, %bb.v ], [ 0, %bb.u ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTD_buildCTable(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef readonly captures(none) %12, i64 noundef %13, ptr noundef %14, i64 noundef %15) local_unnamed_addr #2 {
bb.a:
  switch i32 %4, label %bb.l [
    i32 1, label %bb.b
    i32 3, label %bb.e
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i32 %6 to i8
  %i.b = tail call i64 @FSE_buildCTable_rle(ptr noundef %2, i8 noundef zeroext %i.a) #8 ; 2 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %7, align 1, !tbaa !17
  store i8 %i.e, ptr %0, align 1, !tbaa !17
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %12, i64 %13, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %9, i32 noundef %11, i32 noundef %10, ptr noundef %14, i64 noundef %15) #8 ; 2 uses
  %i.g = icmp ult i64 %i.f, -119
  %spec.select = select i1 %i.g, i64 0, i64 %i.f
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.h = tail call i32 @FSE_optimalTableLog(i32 noundef %3, i64 noundef %8, i32 noundef %6) #8 ; 3 uses
  %i.i = getelementptr i8, ptr %7, i64 %8
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 2 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = add i32 %i.n, -1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !15
  %i.q = add i64 %8, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i64 [ %i.q, %bb.h ], [ %8, %bb.g ]    ; 2 uses
  %i.r = icmp ugt i64 %.0, 2047
  %i.s = zext i1 %i.r to i32
  %i.t = tail call i64 @FSE_normalizeCount(ptr noundef %14, i32 noundef %i.h, ptr noundef nonnull %5, i64 noundef %.0, i32 noundef %6, i32 noundef %i.s) #8 ; 2 uses
  %i.u = icmp ult i64 %i.t, -119
  br i1 %i.u, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i64 @FSE_writeNCount(ptr noundef %0, i64 noundef %1, ptr noundef %14, i32 noundef %6, i32 noundef %i.h) #8 ; 3 uses
  %i.w = icmp ult i64 %i.v, -119
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 108
  %i.y = tail call i64 @FSE_buildCTable_wksp(ptr noundef %2, ptr noundef %14, i32 noundef %6, i32 noundef %i.h, ptr noundef nonnull %i.x, i64 noundef 1140) #8 ; 2 uses
  %i.z = icmp ult i64 %i.y, -119
  %spec.select79 = select i1 %i.z, i64 %i.v, i64 %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f, %bb.a, %bb.i, %bb.j, %bb.c, %bb.b, %bb.e, %bb.d
  %.7 = phi i64 [ %i.v, %bb.j ], [ -70, %bb.c ], [ 1, %bb.d ], [ %i.b, %bb.b ], [ 0, %bb.e ], [ -1, %bb.a ], [ %spec.select79, %bb.k ], [ %i.t, %bb.i ], [ %spec.select, %bb.f ]
  ret i64 %.7
}

declare i64 @FSE_buildCTable_rle(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 1, 0) i64 @ZSTD_encodeSequences(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @ZSTD_encodeSequences_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10)
  br label %ZSTD_encodeSequences_default.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 21 uses
  %i.d = icmp ugt i64 %1, 8
  br i1 %i.d, label %bb.d, label %ZSTD_encodeSequences_default.exit

bb.d:                                             ; preds = %bb.c
  %i.e = add i64 %9, -1                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %.val.i.i.i = load i16, ptr %2, align 1, !tbaa !12 ; 3 uses
  %i.h = zext i16 %.val.i.i.i to i32              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq i16 %.val.i.i.i, 0
  %i.j = add nsw i32 %i.h, -1
  %i.k = shl nuw i32 1, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = select i1 %.not.i.i.i, i64 1, i64 %i.l
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 2 uses
  %i.o = zext i8 %i.g to i64                      ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !15 ; 2 uses
  %i.q = add i32 %.sroa.4.0.copyload.i.i, 32768   ; 2 uses
  %i.r = lshr i32 %i.q, 16
  %i.s = and i32 %i.q, -65536
  %i.t = sub i32 %i.s, %.sroa.4.0.copyload.i.i
  %i.u = zext i32 %i.t to i64
  %i.v = zext nneg i32 %i.r to i64
  %i.w = lshr i64 %i.u, %i.v
  %i.x = sext i32 %.sroa.0.0.copyload.i.i to i64
  %i.y = getelementptr [2 x i8], ptr %i.i, i64 %i.w
  %i.z = getelementptr [2 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 %i.e
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 4 uses
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %.val.i.i16.i = load i16, ptr %4, align 1, !tbaa !12 ; 3 uses
  %i.ae = zext i16 %.val.i.i16.i to i32           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i.i17.i = icmp eq i16 %.val.i.i16.i, 0
  %i.ag = add nsw i32 %i.ae, -1
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = select i1 %.not.i.i17.i, i64 1, i64 %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = zext i8 %i.ac to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %.sroa.0.0.copyload.i18.i = load i32, ptr %i.am, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.4.0.copyload.i20.i = load i32, ptr %.sroa.4.0..sroa_idx.i19.i, align 4, !tbaa !15 ; 2 uses
  %i.an = add i32 %.sroa.4.0.copyload.i20.i, 32768 ; 2 uses
  %i.ao = lshr i32 %i.an, 16
  %i.ap = and i32 %i.an, -65536
  %i.aq = sub i32 %i.ap, %.sroa.4.0.copyload.i20.i
  %i.ar = zext i32 %i.aq to i64
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = lshr i64 %i.ar, %i.as
  %i.au = sext i32 %.sroa.0.0.copyload.i18.i to i64
  %i.av = getelementptr [2 x i8], ptr %i.af, i64 %i.at
  %i.aw = getelementptr [2 x i8], ptr %i.av, i64 %i.au
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %i.e
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %.val.i.i21.i = load i16, ptr %6, align 1, !tbaa !12 ; 3 uses
  %i.ba = zext i16 %.val.i.i21.i to i32           ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %.not.i.i22.i = icmp eq i16 %.val.i.i21.i, 0
  %i.bc = add nsw i32 %i.ba, -1
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = select i1 %.not.i.i22.i, i64 1, i64 %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf ; 2 uses
  %i.bh = zext i8 %i.az to i64                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
end_hunk_0
