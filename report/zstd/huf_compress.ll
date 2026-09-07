Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/huf_compress?download=true
inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@HUF_compress_internal:bb.a
bb.x:                                             ; preds = %bb.w
  %i.bb = load i32, ptr %10, align 4, !tbaa !17
  %.not176 = icmp eq i32 %i.bb, 0
  br i1 %.not176, label %.thread207, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !17  ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not10.i = icmp slt i32 %i.bc, 0
  br i1 %.not10.i, label %HUF_estimateCompressedSize.exit195.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.be = add nuw i32 %i.bc, 1
  %wide.trip.count.i = zext i32 %i.be to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.bc, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.phi244 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bq, %vector.body ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <2 x i64>, ptr %i.bf, align 8, !tbaa !15
  %wide.load245 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !15
  %i.bh = and <2 x i64> %wide.load, splat (i64 255)
  %i.bi = and <2 x i64> %wide.load245, splat (i64 255)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %wide.load246 = load <2 x i32>, ptr %i.bj, align 4, !tbaa !17
  %wide.load247 = load <2 x i32>, ptr %i.bk, align 4, !tbaa !17
  %i.bl = zext <2 x i32> %wide.load246 to <2 x i64>
  %i.bm = zext <2 x i32> %wide.load247 to <2 x i64>
  %i.bn = mul nuw nsw <2 x i64> %i.bh, %i.bl
  %i.bo = mul nuw nsw <2 x i64> %i.bi, %i.bm
  %i.bp = add <2 x i64> %i.bn, %vec.phi           ; 2 uses
  %i.bq = add <2 x i64> %i.bo, %vec.phi244        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bq, %i.bp
  %i.bs = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.preheader.i186, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.0911.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0911.i = phi i64 [ %i.ca, %.lr.ph.i ], [ %.0911.i.ph, %.lr.ph.i.preheader ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.bv = and i64 %i.bu, 255
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw nsw i64 %i.bv, %i.by
  %i.ca = add i64 %i.bz, %.0911.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i186, label %.lr.ph.i, !llvm.loop !86

.lr.ph.preheader.i186:                            ; preds = %.lr.ph.i, %middle.block
  %.lcssa243 = phi i64 [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 1032 ; 2 uses
  %min.iters.check249 = icmp ult i32 %i.bc, 3
  br i1 %min.iters.check249, label %.lr.ph.i188.preheader, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph.preheader.i186
  %n.vec251 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next260, %vector.body252 ] ; 3 uses
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %vector.ph250 ], [ %i.cm, %vector.body252 ]
  %vec.phi255 = phi <2 x i64> [ zeroinitializer, %vector.ph250 ], [ %i.cn, %vector.body252 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index253 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load256 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !15
  %wide.load257 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !15
  %i.ce = and <2 x i64> %wide.load256, splat (i64 255)
  %i.cf = and <2 x i64> %wide.load257, splat (i64 255)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index253 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %wide.load258 = load <2 x i32>, ptr %i.cg, align 4, !tbaa !17
  %wide.load259 = load <2 x i32>, ptr %i.ch, align 4, !tbaa !17
  %i.ci = zext <2 x i32> %wide.load258 to <2 x i64>
  %i.cj = zext <2 x i32> %wide.load259 to <2 x i64>
  %i.ck = mul nuw nsw <2 x i64> %i.ce, %i.ci
  %i.cl = mul nuw nsw <2 x i64> %i.cf, %i.cj
  %i.cm = add <2 x i64> %i.ck, %vec.phi254        ; 2 uses
  %i.cn = add <2 x i64> %i.cl, %vec.phi255        ; 2 uses
  %index.next260 = add nuw i64 %index253, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next260, %n.vec251
  br i1 %i.co, label %middle.block261, label %vector.body252, !llvm.loop !87

middle.block261:                                  ; preds = %vector.body252
  %bin.rdx262 = add <2 x i64> %i.cn, %i.cm
  %i.cp = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %n.vec251, %wide.trip.count.i
  br i1 %cmp.n263, label %HUF_estimateCompressedSize.exit195, label %.lr.ph.i188.preheader

.lr.ph.i188.preheader:                            ; preds = %.lr.ph.preheader.i186, %middle.block261
  %indvars.iv.i189.ph = phi i64 [ 0, %.lr.ph.preheader.i186 ], [ %n.vec251, %middle.block261 ]
  %.0911.i190.ph = phi i64 [ 0, %.lr.ph.preheader.i186 ], [ %i.cp, %middle.block261 ]
  br label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %.lr.ph.i188.preheader, %.lr.ph.i188
  %indvars.iv.i189 = phi i64 [ %indvars.iv.next.i191, %.lr.ph.i188 ], [ %indvars.iv.i189.ph, %.lr.ph.i188.preheader ] ; 3 uses
  %.0911.i190 = phi i64 [ %i.cx, %.lr.ph.i188 ], [ %.0911.i190.ph, %.lr.ph.i188.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i189
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.cs = and i64 %i.cr, 255
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i189
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !17
  %i.cv = zext i32 %i.cu to i64
  %i.cw = mul nuw nsw i64 %i.cs, %i.cv
  %i.cx = add i64 %i.cw, %.0911.i190              ; 2 uses
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i189, 1 ; 2 uses
  %exitcond.not.i192 = icmp eq i64 %indvars.iv.next.i191, %wide.trip.count.i
  br i1 %exitcond.not.i192, label %HUF_estimateCompressedSize.exit195, label %.lr.ph.i188, !llvm.loop !88

HUF_estimateCompressedSize.exit195:               ; preds = %.lr.ph.i188, %middle.block261
  %.lcssa = phi i64 [ %i.cp, %middle.block261 ], [ %i.cx, %.lr.ph.i188 ]
  %i.cy = lshr i64 %.lcssa243, 3
  %i.cz = lshr i64 %.lcssa, 3
  %i.da = add nuw nsw i64 %i.cz, %i.az
  %.not177 = icmp samesign ugt i64 %i.cy, %i.da
  %i.db = add nuw nsw i64 %i.az, 12
  %.not178 = icmp samesign ult i64 %i.db, %3
  %or.cond183 = and i1 %.not178, %.not177
  br i1 %or.cond183, label %.thread207.thread, label %HUF_estimateCompressedSize.exit195.thread

HUF_estimateCompressedSize.exit195.thread:        ; preds = %bb.y, %HUF_estimateCompressedSize.exit195
  %i.dc = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef %9, i32 noundef %11)
  br label %.thread

.thread207:                                       ; preds = %bb.x
  %.pre = add nuw nsw i64 %i.az, 12
  %i.dd = icmp samesign ult i64 %.pre, %3
  br i1 %i.dd, label %.thread207.thread, label %.thread

.thread210:                                       ; preds = %bb.w
  %i.de = add nuw nsw i64 %i.az, 12
  %.not179211 = icmp samesign ult i64 %i.de, %3
  br i1 %.not179211, label %.thread212, label %.thread

.thread207.thread:                                ; preds = %HUF_estimateCompressedSize.exit195, %.thread207
  store i32 0, ptr %10, align 4, !tbaa !17
  br label %.thread212

.thread212:                                       ; preds = %.thread210, %.thread207.thread
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %.not180 = icmp eq ptr %9, null
  br i1 %.not180, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2056) %9, ptr noundef nonnull align 8 dereferenceable(2056) %i.as, i64 2056, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread212
  %i.dg = call fastcc i64 @HUF_compressCTable_internal(ptr noundef %0, ptr noundef %i.df, ptr noundef nonnull %i.h, ptr noundef %2, i64 noundef %3, i32 noundef %6, ptr noundef nonnull %i.as, i32 noundef %11)
  br label %.thread

.thread:                                          ; preds = %.thread210, %.thread207, %bb.v, %HUF_estimateCompressedSize.exit195.thread, %bb.o, %bb.m, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.l, %.thread199, %bb.p, %bb.aa, %.thread235, %bb.j
  %.9 = phi i64 [ -66, %bb.a ], [ -46, %bb.e ], [ -72, %bb.c ], [ -44, %bb.d ], [ %i.s, %bb.j ], [ %i.aq, %.thread235 ], [ %i.dg, %bb.aa ], [ %i.af, %bb.m ], [ %i.av, %.thread199 ], [ 0, %bb.p ], [ 0, %bb.l ], [ 0, %bb.b ], [ 1, %bb.o ], [ 0, %.thread210 ], [ 0, %.thread207 ], [ %i.az, %bb.v ], [ %i.dc, %HUF_estimateCompressedSize.exit195.thread ]
  ret i64 %.9
}

; Function Attrs: nounwind uwtable
define i64 @HUF_compress4X_repeat(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr nofree noundef captures(address_is_null) %9, i32 noundef %10) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @HUF_compress_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10)
  ret i64 %i.a
}

declare i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @FSE_optimalTableLog(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_writeNCount(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @FSE_compress_usingCTable(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @HUF_simpleQuickSort(ptr noundef %0, i32 noundef range(i32 -2147483646, -2147483648) %1, i32 noundef range(i32 -2147483648, 2147483647) %2) unnamed_addr #9 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  %i.b = icmp slt i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph.preheader.i, label %HUF_insertionSort.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d ; 77 uses
  %.not.i29 = icmp slt i32 %i.a, 1
  br i1 %.not.i29, label %HUF_insertionSort.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = add nuw nsw i32 %i.a, 1                  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = load <2 x i32>, ptr %i.g, align 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = load i32, ptr %i.e, align 4, !tbaa !21
  %i.j = icmp ult i32 %i.i, %.sroa.0.0.copyload.i
  br i1 %i.j, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.e, align 4
  store i64 %i.l, ptr %i.k, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.preheader
  %.0.in.i.lcssa = phi i64 [ 1, %.lr.ph.preheader ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa
  store <2 x i32> %i.h, ptr %i.m, align 4
  %exitcond.not = icmp eq i32 %i.f, 2
  br i1 %exitcond.not, label %HUF_insertionSort.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.n, align 4
  %.sroa.0.0.copyload.i.1 = load i32, ptr %i.n, align 4, !tbaa !17 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  %i.r = icmp ult i32 %i.q, %.sroa.0.0.copyload.i.1
  br i1 %i.r, label %bb.d, label %.critedge.i.1

bb.d:                                             ; preds = %.lr.ph.1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load i64, ptr %i.p, align 4
  store i64 %i.t, ptr %i.s, align 4
  %i.u = load i32, ptr %i.e, align 4, !tbaa !21
  %i.v = icmp ult i32 %i.u, %.sroa.0.0.copyload.i.1
  br i1 %i.v, label %bb.e, label %.critedge.i.1

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load i64, ptr %i.e, align 4
  store i64 %i.x, ptr %i.w, align 4
  br label %.critedge.i.1

.critedge.i.1:                                    ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.0.in.i.lcssa.1 = phi i64 [ 2, %.lr.ph.1 ], [ 0, %bb.e ], [ 1, %bb.d ]
  %i.y = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa.1
  store <2 x i32> %i.o, ptr %i.y, align 4
  %exitcond.not.1 = icmp eq i32 %i.f, 3
  br i1 %exitcond.not.1, label %HUF_insertionSort.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.aa = load <2 x i32>, ptr %i.z, align 4
  %.sroa.0.0.copyload.i.2 = load i32, ptr %i.z, align 4, !tbaa !17 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = icmp ult i32 %i.ac, %.sroa.0.0.copyload.i.2
  br i1 %i.ad, label %bb.f, label %.critedge.i.2

bb.f:                                             ; preds = %.lr.ph.2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.af = load i64, ptr %i.ab, align 4
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = icmp ult i32 %i.ah, %.sroa.0.0.copyload.i.2
  br i1 %i.ai, label %bb.g, label %.critedge.i.2

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = load i64, ptr %i.ag, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load i32, ptr %i.e, align 4, !tbaa !21
  %i.am = icmp ult i32 %i.al, %.sroa.0.0.copyload.i.2
  br i1 %i.am, label %bb.h, label %.critedge.i.2

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load i64, ptr %i.e, align 4
  store i64 %i.ao, ptr %i.an, align 4
  br label %.critedge.i.2

.critedge.i.2:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.2
  %.0.in.i.lcssa.2 = phi i64 [ 3, %.lr.ph.2 ], [ 1, %bb.g ], [ 2, %bb.f ], [ 0, %bb.h ]
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa.2
  store <2 x i32> %i.aa, ptr %i.ap, align 4
  %exitcond.not.2 = icmp eq i32 %i.f, 4
  br i1 %exitcond.not.2, label %HUF_insertionSort.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ar = load <2 x i32>, ptr %i.aq, align 4
  %.sroa.0.0.copyload.i.3 = load i32, ptr %i.aq, align 4, !tbaa !17 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  %i.au = icmp ult i32 %i.at, %.sroa.0.0.copyload.i.3
  br i1 %i.au, label %bb.i, label %.critedge.i.3

bb.i:                                             ; preds = %.lr.ph.3
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.aw = load i64, ptr %i.as, align 4
  store i64 %i.aw, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21
  %i.az = icmp ult i32 %i.ay, %.sroa.0.0.copyload.i.3
  br i1 %i.az, label %bb.j, label %.critedge.i.3

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bb = load i64, ptr %i.ax, align 4
  store i64 %i.bb, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  %i.be = icmp ult i32 %i.bd, %.sroa.0.0.copyload.i.3
  br i1 %i.be, label %bb.k, label %.critedge.i.3

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bg = load i64, ptr %i.bc, align 4
  store i64 %i.bg, ptr %i.bf, align 4
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !21
  %i.bi = icmp ult i32 %i.bh, %.sroa.0.0.copyload.i.3
  br i1 %i.bi, label %bb.l, label %.critedge.i.3

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bk = load i64, ptr %i.e, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  br label %.critedge.i.3

.critedge.i.3:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.3
  %.0.in.i.lcssa.3 = phi i64 [ 4, %.lr.ph.3 ], [ 0, %bb.l ], [ 3, %bb.i ], [ 1, %bb.k ], [ 2, %bb.j ]
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa.3
  store <2 x i32> %i.ar, ptr %i.bl, align 4
  %exitcond.not.3 = icmp eq i32 %i.f, 5
  br i1 %exitcond.not.3, label %HUF_insertionSort.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.i.3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.bn = load <2 x i32>, ptr %i.bm, align 4
  %.sroa.0.0.copyload.i.4 = load i32, ptr %i.bm, align 4, !tbaa !17 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21
  %i.bq = icmp ult i32 %i.bp, %.sroa.0.0.copyload.i.4
  br i1 %i.bq, label %bb.m, label %.critedge.i.4

bb.m:                                             ; preds = %.lr.ph.4
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bs = load i64, ptr %i.bo, align 4
  store i64 %i.bs, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  %i.bv = icmp ult i32 %i.bu, %.sroa.0.0.copyload.i.4
  br i1 %i.bv, label %bb.n, label %.critedge.i.4

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bx = load i64, ptr %i.bt, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  %i.ca = icmp ult i32 %i.bz, %.sroa.0.0.copyload.i.4
  br i1 %i.ca, label %bb.o, label %.critedge.i.4

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cc = load i64, ptr %i.by, align 4
  store i64 %i.cc, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !21
  %i.cf = icmp ult i32 %i.ce, %.sroa.0.0.copyload.i.4
  br i1 %i.cf, label %bb.p, label %.critedge.i.4

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ch = load i64, ptr %i.cd, align 4
  store i64 %i.ch, ptr %i.cg, align 4
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !21
  %i.cj = icmp ult i32 %i.ci, %.sroa.0.0.copyload.i.4
  br i1 %i.cj, label %bb.q, label %.critedge.i.4

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cl = load i64, ptr %i.e, align 4
  store i64 %i.cl, ptr %i.ck, align 4
  br label %.critedge.i.4

.critedge.i.4:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.lr.ph.4
  %.0.in.i.lcssa.4 = phi i64 [ 5, %.lr.ph.4 ], [ 2, %bb.o ], [ 4, %bb.m ], [ 0, %bb.q ], [ 3, %bb.n ], [ 1, %bb.p ]
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa.4
  store <2 x i32> %i.bn, ptr %i.cm, align 4
  %exitcond.not.4 = icmp eq i32 %i.f, 6
  br i1 %exitcond.not.4, label %HUF_insertionSort.exit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.i.4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4
  %.sroa.0.0.copyload.i.5 = load i32, ptr %i.cn, align 4, !tbaa !17 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !21
  %i.cr = icmp ult i32 %i.cq, %.sroa.0.0.copyload.i.5
  br i1 %i.cr, label %bb.r, label %.critedge.i.5

bb.r:                                             ; preds = %.lr.ph.5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ct = load i64, ptr %i.cp, align 4
  store i64 %i.ct, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !21
  %i.cw = icmp ult i32 %i.cv, %.sroa.0.0.copyload.i.5
  br i1 %i.cw, label %bb.s, label %.critedge.i.5

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cy = load i64, ptr %i.cu, align 4
  store i64 %i.cy, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !21
  %i.db = icmp ult i32 %i.da, %.sroa.0.0.copyload.i.5
  br i1 %i.db, label %bb.t, label %.critedge.i.5

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.dd = load i64, ptr %i.cz, align 4
  store i64 %i.dd, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !21
  %i.dg = icmp ult i32 %i.df, %.sroa.0.0.copyload.i.5
  br i1 %i.dg, label %bb.u, label %.critedge.i.5

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.di = load i64, ptr %i.de, align 4
  store i64 %i.di, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !21
  %i.dl = icmp ult i32 %i.dk, %.sroa.0.0.copyload.i.5
  br i1 %i.dl, label %bb.v, label %.critedge.i.5

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dn = load i64, ptr %i.dj, align 4
  store i64 %i.dn, ptr %i.dm, align 4
  %i.do = load i32, ptr %i.e, align 4, !tbaa !21
  %i.dp = icmp ult i32 %i.do, %.sroa.0.0.copyload.i.5
  br i1 %i.dp, label %bb.w, label %.critedge.i.5

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dr = load i64, ptr %i.e, align 4
  store i64 %i.dr, ptr %i.dq, align 4
  br label %.critedge.i.5

.critedge.i.5:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.5
  %.0.in.i.lcssa.5 = phi i64 [ 6, %.lr.ph.5 ], [ 1, %bb.v ], [ 5, %bb.r ], [ 2, %bb.u ], [ 4, %bb.s ], [ 0, %bb.w ], [ 3, %bb.t ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa.5
  store <2 x i32> %i.co, ptr %i.ds, align 4
  %exitcond.not.5 = icmp eq i32 %i.f, 7
  br i1 %exitcond.not.5, label %HUF_insertionSort.exit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.i.5
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.du = load <2 x i32>, ptr %i.dt, align 4
  %.sroa.0.0.copyload.i.6 = load i32, ptr %i.dt, align 4, !tbaa !17 ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !21
  %i.dx = icmp ult i32 %i.dw, %.sroa.0.0.copyload.i.6
  br i1 %i.dx, label %bb.x, label %.critedge.i.6

bb.x:                                             ; preds = %.lr.ph.6
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.dz = load i64, ptr %i.dv, align 4
  store i64 %i.dz, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !21
  %i.ec = icmp ult i32 %i.eb, %.sroa.0.0.copyload.i.6
  br i1 %i.ec, label %bb.y, label %.critedge.i.6

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ee = load i64, ptr %i.ea, align 4
  store i64 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !21
  %i.eh = icmp ult i32 %i.eg, %.sroa.0.0.copyload.i.6
  br i1 %i.eh, label %bb.z, label %.critedge.i.6

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ej = load i64, ptr %i.ef, align 4
  store i64 %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !21
  %i.em = icmp ult i32 %i.el, %.sroa.0.0.copyload.i.6
  br i1 %i.em, label %bb.aa, label %.critedge.i.6

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.eo = load i64, ptr %i.ek, align 4
  store i64 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !21
  %i.er = icmp ult i32 %i.eq, %.sroa.0.0.copyload.i.6
  br i1 %i.er, label %bb.ab, label %.critedge.i.6

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.et = load i64, ptr %i.ep, align 4
  store i64 %i.et, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !21
  %i.ew = icmp ult i32 %i.ev, %.sroa.0.0.copyload.i.6
  br i1 %i.ew, label %bb.ac, label %.critedge.i.6

bb.ac:                                            ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ey = load i64, ptr %i.eu, align 4
  store i64 %i.ey, ptr %i.ex, align 4
  %i.ez = load i32, ptr %i.e, align 4, !tbaa !21
  %i.fa = icmp ult i32 %i.ez, %.sroa.0.0.copyload.i.6
  br i1 %i.fa, label %bb.ad, label %.critedge.i.6

bb.ad:                                            ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fc = load i64, ptr %i.e, align 4
  store i64 %i.fc, ptr %i.fb, align 4
  br label %.critedge.i.6

.critedge.i.6:                                    ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph.6
  %.0.in.i.lcssa.6 = phi i64 [ 7, %.lr.ph.6 ], [ 0, %bb.ad ], [ 6, %bb.x ], [ 1, %bb.ac ], [ 5, %bb.y ], [ 3, %bb.aa ], [ 4, %bb.z ], [ 2, %bb.ab ]
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.0.in.i.lcssa.6
  store <2 x i32> %i.du, ptr %i.fd, align 4
  br label %HUF_insertionSort.exit

.lr.ph.preheader.i:                               ; preds = %.preheader, %bb.ak
  %.025 = phi i32 [ %.1, %bb.ak ], [ %2, %.preheader ] ; 4 uses
  %.02124 = phi i32 [ %.122, %bb.ak ], [ %1, %.preheader ] ; 7 uses
  %i.fe = sext i32 %.025 to i64                   ; 4 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fe ; 3 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !21 ; 3 uses
  %i.fh = add nsw i32 %.02124, -1                 ; 2 uses
  %i.fi = sext i32 %.02124 to i64                 ; 5 uses
  %i.fj = sub nsw i64 %i.fe, %i.fi
  %xtraiter = and i64 %i.fj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.fk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fi ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !21
  %i.fm = icmp ugt i32 %i.fl, %i.fg
  br i1 %i.fm, label %bb.ae, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %.lr.ph.i.prol
  %i.fn = sext i32 %.02124 to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fn ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 4
  %i.fq = load i64, ptr %i.fk, align 4
  store i64 %i.fq, ptr %i.fo, align 4
  store i64 %i.fp, ptr %i.fk, align 4
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.ae, %.lr.ph.i.prol
  %.1.i.prol = phi i32 [ %.02124, %bb.ae ], [ %i.fh, %.lr.ph.i.prol ] ; 2 uses
  %indvars.iv.next.i.prol = add nsw i64 %i.fi, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.1.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.unr = phi i64 [ %i.fi, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.01920.i.unr = phi i32 [ %i.fh, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.fr = add nsw i64 %i.fe, -1
  %i.fs = icmp eq i64 %i.fr, %i.fi
  br i1 %i.fs, label %HUF_quickSortPartition.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.ah ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01920.i = phi i32 [ %.1.i.1, %bb.ah ], [ %.01920.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !21
  %i.fv = icmp ugt i32 %i.fu, %i.fg
  br i1 %i.fv, label %bb.af, label %.lr.ph.i.1

bb.af:                                            ; preds = %.lr.ph.i
  %i.fw = add nsw i32 %.01920.i, 1                ; 2 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %0, i64 %i.fx ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 4
  %i.ga = load i64, ptr %i.ft, align 4
  store i64 %i.ga, ptr %i.fy, align 4
  store i64 %i.fz, ptr %i.ft, align 4
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.af, %.lr.ph.i
  %.1.i = phi i32 [ %i.fw, %bb.af ], [ %.01920.i, %.lr.ph.i ] ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.gc = getelementptr i8, ptr %i.gb, i64 8      ; 3 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !21
  %i.ge = icmp ugt i32 %i.gd, %i.fg
  br i1 %i.ge, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.1
  %i.gf = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 4
  %i.gj = load i64, ptr %i.gc, align 4
  store i64 %i.gj, ptr %i.gh, align 4
  store i64 %i.gi, ptr %i.gc, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.1
  %.1.i.1 = phi i32 [ %i.gf, %bb.ag ], [ %.1.i, %.lr.ph.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.fe
  br i1 %exitcond.not.i.1, label %HUF_quickSortPartition.exit, label %.lr.ph.i, !llvm.loop !89

HUF_quickSortPartition.exit:                      ; preds = %bb.ah, %.lr.ph.i.prol.loopexit
  %.1.i.lcssa = phi i32 [ %.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.1.i.1, %bb.ah ] ; 5 uses
  %i.gk = add nsw i32 %.1.i.lcssa, 1              ; 3 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gl ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 4
  %i.go = load i64, ptr %i.ff, align 4
  store i64 %i.go, ptr %i.gm, align 4
  store i64 %i.gn, ptr %i.ff, align 4
  %i.gp = sub nsw i32 %i.gk, %.02124
  %i.gq = sub nsw i32 %.025, %i.gk
  %i.gr = icmp slt i32 %i.gp, %i.gq
  br i1 %i.gr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %HUF_quickSortPartition.exit
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %.02124, i32 noundef %.1.i.lcssa)
  %i.gs = add nsw i32 %.1.i.lcssa, 2
  br label %bb.ak

bb.aj:                                            ; preds = %HUF_quickSortPartition.exit
  %i.gt = add nsw i32 %.1.i.lcssa, 2
  tail call fastcc void @HUF_simpleQuickSort(ptr noundef nonnull %0, i32 noundef %i.gt, i32 noundef %.025)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.122 = phi i32 [ %i.gs, %bb.ai ], [ %.02124, %bb.aj ] ; 2 uses
  %.1 = phi i32 [ %.025, %bb.ai ], [ %.1.i.lcssa, %bb.aj ] ; 2 uses
  %i.gu = icmp slt i32 %.122, %.1
  br i1 %i.gu, label %.lr.ph.preheader.i, label %HUF_insertionSort.exit, !llvm.loop !90

HUF_insertionSort.exit:                           ; preds = %bb.ak, %.critedge.i, %.critedge.i.1, %.critedge.i.2, %.critedge.i.3, %.critedge.i.4, %.critedge.i.5, %.critedge.i.6, %.preheader, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_compress1X_usingCTable_internal_bmi2(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #10 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.a = and i32 %.sroa.0.0.extract.trunc.i, 255  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 153 uses
end_hunk_0
