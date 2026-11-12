Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMesh?download=true
inline.NumInlined: 86
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Bmc_MeshAddOneHotness:bb.a

bb.e:                                             ; preds = %.lr.ph33, %bb.e
  %indvars.iv37 = phi i64 [ %indvars.iv, %.lr.ph33 ], [ %indvars.iv.next38, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.q, ptr %i.b, align 4, !tbaa !11
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv37
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = shl nsw i32 %i.s, 1
  %i.u = or disjoint i32 %i.t, 1
  store i32 %i.u, ptr %i.j, align 4, !tbaa !11
  %i.v = call i32 @satoko_add_clause(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count46
  br i1 %exitcond42.not, label %.loopexit.loopexit, label %bb.e, !llvm.loop !2

.loopexit27:                                      ; preds = %.loopexit, %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @satoko_add_clause(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Bmc_MeshTest(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [100 x i32], align 16             ; 20 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca [100 x i32], align 16             ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %i.e = alloca [100 x i32], align 16             ; 5 uses
  %i.f = alloca [2 x i32], align 4                ; 5 uses
  %i.g = alloca [100 x i32], align 16             ; 5 uses
  %i.h = alloca [2 x i32], align 4                ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.i = alloca [102 x [102 x i32]], align 16     ; 13 uses
  %i.j = alloca [102 x [2 x i32]], align 16       ; 7 uses
  %i.k = alloca i32, align 4                      ; 22 uses
  %i.l = alloca [100 x i32], align 16             ; 65 uses
  %i.m = alloca [4 x i32], align 16               ; 8 uses
  %i.n = alloca [4 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.o = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #12
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %7, align 8, !tbaa !46
  %i.r = mul nsw i64 %i.q, 1000000
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47
  %i.u = sdiv i64 %i.t, 1000
  %i.v = add nsw i64 %i.u, %i.r
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.v, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.w = call ptr @satoko_create() #12            ; 80 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41616) %i.i, i8 0, i64 41616, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(816) %i.j, i8 0, i64 816, i1 false)
  %i.x = getelementptr i8, ptr %0, i64 16
  %.val463 = load i32, ptr %i.x, align 8, !tbaa !67 ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val464 = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.z = getelementptr i8, ptr %.val464, i64 4    ; 2 uses
  %.val464.val = load i32, ptr %i.z, align 4, !tbaa !69 ; 3 uses
  %i.aa = sub nsw i32 %.val464.val, %.val463      ; 14 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !70 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val.i = load i32, ptr %i.af, align 4, !tbaa !69
  %i.ag = add i32 %.val.i, %.val464.val
  %i.ah = xor i32 %i.ag, -1
  %i.ai = add i32 %i.aa, %i.ac
  %i.aj = add i32 %i.ai, %i.ah                    ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.ak = icmp sgt i32 %i.aa, 0                   ; 3 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %.preheader578

.lr.ph.preheader:                                 ; preds = %Abc_Clock.exit
  %i.al = zext nneg i32 %i.aa to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.j, i8 -1, i64 %i.am, i1 false), !tbaa !11
  br label %.preheader578

.preheader578:                                    ; preds = %.lr.ph.preheader, %Abc_Clock.exit
  %i.an = icmp sgt i32 %i.ac, 0
  br i1 %i.an, label %.lr.ph585, label %.critedge

.lr.ph585:                                        ; preds = %.preheader578
  %i.ao = getelementptr i8, ptr %0, i64 32
  %.val465 = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %.val465, null
  br i1 %.not, label %.critedge, label %.lr.ph585.split.preheader

.lr.ph585.split.preheader:                        ; preds = %.lr.ph585
  %wide.trip.count = zext nneg i32 %i.ac to i64
  br label %.lr.ph585.split

.lr.ph585.split:                                  ; preds = %.lr.ph585.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph585.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.val465, i64 %indvars.iv
  %.val466 = load i64, ptr %i.ap, align 4         ; 3 uses
  %i.aq = and i64 %.val466, 2147483648
  %.not.i = icmp ne i64 %i.aq, 0
  %i.ar = and i64 %.val466, 536870911
  %i.as = icmp eq i64 %i.ar, 536870911
  %narrow.i.not = or i1 %.not.i, %i.as
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph585.split
  %i.at = trunc nsw i64 %indvars.iv to i32
  %i.au = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %.inner = and i64 %.val466, 2305843005455597567
  %.inner944 = xor i64 %.inner, -1
  %i.aw = bitcast i64 %.inner944 to <2 x i32>
  %i.ax = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.ay = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.az = add nsw <2 x i32> %i.ay, %i.aw
  store <2 x i32> %i.az, ptr %i.av, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph585.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph585.split, !llvm.loop !14

.critedge:                                        ; preds = %bb.d, %.lr.ph585, %.preheader578
  %.not444 = icmp eq i32 %4, 0                    ; 3 uses
  br i1 %.not444, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %.val462.val = load i32, ptr %i.z, align 4, !tbaa !69
  %i.ba = sub nsw i32 %.val462.val, %.val463
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ba) ; 0 uses
  br i1 %i.ak, label %.lr.ph588, label %._crit_edge

.lr.ph588:                                        ; preds = %bb.e, %.lr.ph588
  %.2432587 = phi i32 [ %i.be, %.lr.ph588 ], [ 0, %bb.e ] ; 2 uses
  %i.bc = add nuw nsw i32 %.2432587, 97
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bc) ; 0 uses
  %i.be = add nuw nsw i32 %.2432587, 1            ; 2 uses
  %exitcond749.not = icmp eq i32 %i.be, %i.aa
  br i1 %exitcond749.not, label %._crit_edge, label %.lr.ph588, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph588, %bb.e
  %i.bf = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val3.i469 = load i32, ptr %i.bh, align 4, !tbaa !69
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val.i470 = load i32, ptr %i.bj, align 4, !tbaa !69
  %i.bk = add i32 %.val.i470, %.val3.i469
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %i.bf, %i.bl
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bm) ; 0 uses
  %i.bo = icmp slt i32 %i.aa, %i.aj
  br i1 %i.bo, label %.lr.ph591.preheader, label %._crit_edge592

.lr.ph591.preheader:                              ; preds = %._crit_edge
  %i.bp = sext i32 %i.aa to i64
  br label %.lr.ph591

.lr.ph591:                                        ; preds = %.lr.ph591.preheader, %.lr.ph591
  %indvars.iv750 = phi i64 [ %i.bp, %.lr.ph591.preheader ], [ %indvars.iv.next751, %.lr.ph591 ] ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv750 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !11
  %i.bs = add nsw i32 %i.br, 97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = add nsw i32 %i.bu, 97
  %i.bw = trunc i64 %indvars.iv750 to i32
  %i.bx = add i32 %i.bw, 97
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bx, i32 noundef %i.bs, i32 noundef %i.bv) ; 0 uses
  %indvars.iv.next751 = add nsw i64 %indvars.iv750, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next751 to i32
  %exitcond753.not = icmp eq i32 %i.aj, %lftr.wideiv
  br i1 %exitcond753.not, label %._crit_edge592, label %.lr.ph591, !llvm.loop !16

._crit_edge592:                                   ; preds = %.lr.ph591, %._crit_edge
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge592, %.critedge
  %i.bz = icmp slt i32 %2, 1                      ; 5 uses
  br i1 %i.bz, label %._crit_edge599, label %.preheader577.lr.ph

.preheader577.lr.ph:                              ; preds = %bb.f
  %i.ca = icmp sgt i32 %1, 0
  %i.cb = add i32 %3, 17
  %i.cc = add i32 %i.cb, %i.aj                    ; 5 uses
  br i1 %i.ca, label %.preheader577.us.preheader, label %._crit_edge599

.preheader577.us.preheader:                       ; preds = %.preheader577.lr.ph
  %wide.trip.count762 = zext nneg i32 %2 to i64
  %wide.trip.count757 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count757, 3      ; 3 uses
  %i.cd = icmp ult i32 %1, 4
  %unroll_iter = and i64 %wide.trip.count757, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod958 = icmp ne i64 %xtraiter, 0
  br label %.preheader577.us

.preheader577.us:                                 ; preds = %.preheader577.us.preheader, %._crit_edge596.us
  %indvars.iv759 = phi i64 [ 0, %.preheader577.us.preheader ], [ %indvars.iv.next760, %._crit_edge596.us ] ; 2 uses
  %.0399598.us = phi i32 [ 0, %.preheader577.us.preheader ], [ %.lcssa956, %._crit_edge596.us ] ; 2 uses
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv759 ; 5 uses
  br i1 %i.cd, label %.epil.preheader, label %.preheader577.us.new

.preheader577.us.new:                             ; preds = %.preheader577.us, %.preheader577.us.new
  %indvars.iv754 = phi i64 [ %indvars.iv.next755.3, %.preheader577.us.new ], [ 0, %.preheader577.us ] ; 5 uses
  %.1400594.us = phi i32 [ %i.ck, %.preheader577.us.new ], [ %.0399598.us, %.preheader577.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.preheader577.us.new ], [ 0, %.preheader577.us ]
  %gep.us = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv754
  store i32 %.1400594.us, ptr %gep.us, align 4, !tbaa !11
  %i.ce = add nsw i32 %i.cc, %.1400594.us         ; 2 uses
  %i.cf = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv754
  %gep.us.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 408
  store i32 %i.ce, ptr %gep.us.1, align 4, !tbaa !11
  %i.cg = add nsw i32 %i.cc, %i.ce                ; 2 uses
  %i.ch = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv754
  %gep.us.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 816
  store i32 %i.cg, ptr %gep.us.2, align 4, !tbaa !11
  %i.ci = add nsw i32 %i.cc, %i.cg                ; 2 uses
  %i.cj = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv754
  %gep.us.3 = getelementptr inbounds nuw i8, ptr %i.cj, i64 1224
  store i32 %i.ci, ptr %gep.us.3, align 4, !tbaa !11
  %i.ck = add nsw i32 %i.cc, %i.ci                ; 3 uses
  %indvars.iv.next755.3 = add nuw nsw i64 %indvars.iv754, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge596.us.unr-lcssa, label %.preheader577.us.new, !llvm.loop !17

._crit_edge596.us.unr-lcssa:                      ; preds = %.preheader577.us.new
  br i1 %lcmp.mod.not, label %._crit_edge596.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge596.us.unr-lcssa, %.preheader577.us
  %indvars.iv754.epil.init = phi i64 [ 0, %.preheader577.us ], [ %indvars.iv.next755.3, %._crit_edge596.us.unr-lcssa ]
  %.1400594.us.epil.init = phi i32 [ %.0399598.us, %.preheader577.us ], [ %i.ck, %._crit_edge596.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod958)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv754.epil = phi i64 [ %indvars.iv754.epil.init, %.epil.preheader ], [ %indvars.iv.next755.epil, %bb.g ] ; 2 uses
  %.1400594.us.epil = phi i32 [ %.1400594.us.epil.init, %.epil.preheader ], [ %i.cl, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %gep.us.epil = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us, i64 %indvars.iv754.epil
  store i32 %.1400594.us.epil, ptr %gep.us.epil, align 4, !tbaa !11
  %i.cl = add nsw i32 %i.cc, %.1400594.us.epil    ; 2 uses
  %indvars.iv.next755.epil = add nuw nsw i64 %indvars.iv754.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge596.us, label %bb.g, !llvm.loop !18

._crit_edge596.us:                                ; preds = %bb.g, %._crit_edge596.us.unr-lcssa
  %.lcssa956 = phi i32 [ %i.ck, %._crit_edge596.us.unr-lcssa ], [ %i.cl, %bb.g ] ; 2 uses
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond763.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count762
  br i1 %exitcond763.not, label %._crit_edge599, label %.preheader577.us, !llvm.loop !19

._crit_edge599:                                   ; preds = %._crit_edge596.us, %.preheader577.lr.ph, %bb.f
  %.0399.lcssa = phi i32 [ 0, %bb.f ], [ 0, %.preheader577.lr.ph ], [ %.lcssa956, %._crit_edge596.us ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 41608 ; 2 uses
  store i32 %3, ptr %i.cm, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 41612
  store i32 %i.aj, ptr %i.cn, align 4, !tbaa !11
  br i1 %.not444, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge599
  %i.co = mul nsw i32 %2, %1                      ; 4 uses
  %i.cp = mul nsw i32 %i.co, %3
  %i.cq = mul nsw i32 %i.aj, %i.co
  %i.cr = shl nsw i32 %i.co, 4
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.0399.lcssa, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef %i.co) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge599
  %i.ct = icmp slt i32 %1, 1                      ; 3 uses
  %i.cu = add i32 %1, -1                          ; 4 uses
  br i1 %i.ct, label %._crit_edge656, label %.preheader576.lr.ph

.preheader576.lr.ph:                              ; preds = %bb.i
  %i.cv = icmp slt i32 %i.aa, %i.aj
  %.fr = freeze i1 %i.cv                          ; 4 uses
  br i1 %i.bz, label %.preheader573, label %.preheader576.lr.ph.split

.preheader576.lr.ph.split:                        ; preds = %.preheader576.lr.ph
  %i.cw = add nsw i32 %2, -1
  %i.cx = icmp sgt i32 %3, 0
  %i.cy = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cz = zext nneg i32 %i.cu to i64              ; 2 uses
  %wide.trip.count800 = zext nneg i32 %1 to i64   ; 2 uses
  %wide.trip.count783 = zext nneg i32 %2 to i64   ; 2 uses
  %wide.trip.count789 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %i.cx, label %.preheader576.lr.ph.split.split.us, label %.preheader576

.preheader576.lr.ph.split.split.us:               ; preds = %.preheader576.lr.ph.split
  %wide.trip.count795 = zext nneg i32 %2 to i64
  br label %.preheader576.us

.preheader576.us:                                 ; preds = %._crit_edge609.split.us.us, %.preheader576.lr.ph.split.split.us
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %._crit_edge609.split.us.us ], [ 0, %.preheader576.lr.ph.split.split.us ] ; 4 uses
  %i.da = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %indvars.iv797 ; 3 uses
  %i.db = icmp eq i64 %indvars.iv797, 0
  %i.dc = icmp eq i64 %indvars.iv797, %i.cz
  br i1 %i.db, label %.lr.ph608.split.us.us.split.us, label %.lr.ph608.split.us.us.split

.lr.ph608.split.us.us.split.us:                   ; preds = %.preheader576.us
  br i1 %.fr, label %.lr.ph603.us.us.us.us, label %.lr.ph603.us.us.us

.lr.ph603.us.us.us.us:                            ; preds = %.lr.ph608.split.us.us.split.us, %..loopexit575_crit_edge.us.us.us.us
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %..loopexit575_crit_edge.us.us.us.us ], [ 0, %.lr.ph608.split.us.us.split.us ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv792
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph603.us.us.us.us
  %.0413601.us.us.us.us = phi i32 [ 0, %.lr.ph603.us.us.us.us ], [ %i.dl, %bb.j ] ; 3 uses
  %i.df = add nsw i32 %.0413601.us.us.us.us, %i.de
  %i.dg = icmp ne i32 %.0413601.us.us.us.us, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = shl nsw i32 %i.df, 1
  %i.dj = or disjoint i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.k, align 4, !tbaa !11
  %i.dk = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  %i.dl = add nuw nsw i32 %.0413601.us.us.us.us, 1 ; 2 uses
  %exitcond791.not = icmp eq i32 %i.dl, %3
  br i1 %exitcond791.not, label %..preheader574_crit_edge.us.us.us.us.preheader, label %bb.j, !llvm.loop !20

..preheader574_crit_edge.us.us.us.us.preheader:   ; preds = %bb.j
  %i.dm = add nsw i32 %i.de, %3
  br label %..preheader574_crit_edge.us.us.us.us

..preheader574_crit_edge.us.us.us.us:             ; preds = %..preheader574_crit_edge.us.us.us.us.preheader, %..preheader574_crit_edge.us.us.us.us
  %.0407604.us.us.us.us = phi i32 [ %i.dr, %..preheader574_crit_edge.us.us.us.us ], [ %i.aa, %..preheader574_crit_edge.us.us.us.us.preheader ] ; 2 uses
  %i.dn = add nsw i32 %i.dm, %.0407604.us.us.us.us
  %i.do = shl nsw i32 %i.dn, 1
  %i.dp = or disjoint i32 %i.do, 1
  store i32 %i.dp, ptr %i.k, align 4, !tbaa !11
  %i.dq = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  %i.dr = add nsw i32 %.0407604.us.us.us.us, 1    ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.aj
  br i1 %i.ds, label %..preheader574_crit_edge.us.us.us.us, label %..loopexit575_crit_edge.us.us.us.us, !llvm.loop !21

..loopexit575_crit_edge.us.us.us.us:              ; preds = %..preheader574_crit_edge.us.us.us.us
  %indvars.iv.next793 = add nuw nsw i64 %indvars.iv792, 1 ; 2 uses
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %wide.trip.count795
  br i1 %exitcond796.not, label %._crit_edge609.split.us.us, label %.lr.ph603.us.us.us.us, !llvm.loop !22

.lr.ph603.us.us.us:                               ; preds = %.lr.ph608.split.us.us.split.us, %..preheader574_crit_edge.us.us.us
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %..preheader574_crit_edge.us.us.us ], [ 0, %.lr.ph608.split.us.us.split.us ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv786
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph603.us.us.us
  %.0413601.us.us.us = phi i32 [ 0, %.lr.ph603.us.us.us ], [ %i.eb, %bb.k ] ; 3 uses
  %i.dv = add nsw i32 %.0413601.us.us.us, %i.du
  %i.dw = icmp ne i32 %.0413601.us.us.us, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = shl nsw i32 %i.dv, 1
  %i.dz = or disjoint i32 %i.dy, %i.dx
  store i32 %i.dz, ptr %i.k, align 4, !tbaa !11
  %i.ea = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  %i.eb = add nuw nsw i32 %.0413601.us.us.us, 1   ; 2 uses
  %exitcond785.not = icmp eq i32 %i.eb, %3
  br i1 %exitcond785.not, label %..preheader574_crit_edge.us.us.us, label %bb.k, !llvm.loop !20

..preheader574_crit_edge.us.us.us:                ; preds = %bb.k
  %indvars.iv.next787 = add nuw nsw i64 %indvars.iv786, 1 ; 2 uses
  %exitcond790.not = icmp eq i64 %indvars.iv.next787, %wide.trip.count789
  br i1 %exitcond790.not, label %._crit_edge609.split.us.us, label %.lr.ph603.us.us.us, !llvm.loop !22

.lr.ph608.split.us.us.split:                      ; preds = %.preheader576.us, %.loopexit575.us.us
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %.loopexit575.us.us ], [ 0, %.preheader576.us ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv780
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !11 ; 3 uses
  %i.ee = add nsw i32 %i.ed, %3
  %i.ef = icmp eq i64 %indvars.iv780, 0
  %or.cond.us.us = or i1 %i.dc, %i.ef
  %i.eg = icmp eq i64 %indvars.iv780, %i.cy
  %or.cond455.us.us = select i1 %or.cond.us.us, i1 true, i1 %i.eg
  br i1 %or.cond455.us.us, label %.lr.ph603.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph608.split.us.us.split
  %i.eh = shl nsw i32 %i.ed, 1
  %i.ei = or disjoint i32 %i.eh, 1
  store i32 %i.ei, ptr %i.k, align 4, !tbaa !11
  %i.ej = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  br label %.loopexit575.us.us

.lr.ph603.us.us:                                  ; preds = %.lr.ph608.split.us.us.split, %.lr.ph603.us.us
  %.0413601.us.us = phi i32 [ %i.eq, %.lr.ph603.us.us ], [ 0, %.lr.ph608.split.us.us.split ] ; 3 uses
  %i.ek = add nsw i32 %.0413601.us.us, %i.ed
  %i.el = icmp ne i32 %.0413601.us.us, 0
  %i.em = zext i1 %i.el to i32
  %i.en = shl nsw i32 %i.ek, 1
  %i.eo = or disjoint i32 %i.en, %i.em
  store i32 %i.eo, ptr %i.k, align 4, !tbaa !11
  %i.ep = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  %i.eq = add nuw nsw i32 %.0413601.us.us, 1      ; 2 uses
  %exitcond779.not = icmp eq i32 %i.eq, %3
  br i1 %exitcond779.not, label %..preheader574_crit_edge.us.us, label %.lr.ph603.us.us, !llvm.loop !20

..preheader574_crit_edge.us.us:                   ; preds = %.lr.ph603.us.us
  br i1 %.fr, label %.lr.ph605.us.us, label %.loopexit575.us.us

.lr.ph605.us.us:                                  ; preds = %..preheader574_crit_edge.us.us, %.lr.ph605.us.us
  %.0407604.us.us = phi i32 [ %i.ev, %.lr.ph605.us.us ], [ %i.aa, %..preheader574_crit_edge.us.us ] ; 2 uses
  %i.er = add nsw i32 %i.ee, %.0407604.us.us
  %i.es = shl nsw i32 %i.er, 1
  %i.et = or disjoint i32 %i.es, 1
  store i32 %i.et, ptr %i.k, align 4, !tbaa !11
  %i.eu = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  %i.ev = add nsw i32 %.0407604.us.us, 1          ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.aj
  br i1 %i.ew, label %.lr.ph605.us.us, label %.loopexit575.us.us, !llvm.loop !21

.loopexit575.us.us:                               ; preds = %.lr.ph605.us.us, %..preheader574_crit_edge.us.us, %bb.l
  %indvars.iv.next781 = add nuw nsw i64 %indvars.iv780, 1 ; 2 uses
  %exitcond784.not = icmp eq i64 %indvars.iv.next781, %wide.trip.count783
  br i1 %exitcond784.not, label %._crit_edge609.split.us.us, label %.lr.ph608.split.us.us.split, !llvm.loop !22

._crit_edge609.split.us.us:                       ; preds = %.loopexit575.us.us, %..preheader574_crit_edge.us.us.us, %..loopexit575_crit_edge.us.us.us.us
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 1 ; 2 uses
  %exitcond801.not = icmp eq i64 %indvars.iv.next798, %wide.trip.count800
  br i1 %exitcond801.not, label %.preheader573, label %.preheader576.us, !llvm.loop !23

.preheader576:                                    ; preds = %.preheader576.lr.ph.split, %._crit_edge609.split
  %indvars.iv774 = phi i64 [ %indvars.iv.next775, %._crit_edge609.split ], [ 0, %.preheader576.lr.ph.split ] ; 4 uses
  %i.ex = getelementptr inbounds nuw [408 x i8], ptr %i.i, i64 %indvars.iv774 ; 2 uses
  %i.ey = icmp eq i64 %indvars.iv774, 0
  %i.ez = icmp eq i64 %indvars.iv774, %i.cz
  br i1 %i.ey, label %.lr.ph608.split.split.us, label %.lr.ph608.split.split

.lr.ph608.split.split.us:                         ; preds = %.preheader576
  br i1 %.fr, label %.preheader574.us611, label %._crit_edge609.split

.preheader574.us611:                              ; preds = %.lr.ph608.split.split.us, %..loopexit575_crit_edge.us614
  %indvars.iv769 = phi i64 [ %indvars.iv.next770, %..loopexit575_crit_edge.us614 ], [ 0, %.lr.ph608.split.split.us ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv769
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !11
  %i.fc = add nsw i32 %i.fb, %3
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader574.us611
  %.0407604.us613 = phi i32 [ %i.aa, %.preheader574.us611 ], [ %i.fh, %bb.m ] ; 2 uses
  %i.fd = add nsw i32 %i.fc, %.0407604.us613
  %i.fe = shl nsw i32 %i.fd, 1
  %i.ff = or disjoint i32 %i.fe, 1
  store i32 %i.ff, ptr %i.k, align 4, !tbaa !11
  %i.fg = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.k, i32 noundef 1) #12 ; 0 uses
  %i.fh = add nsw i32 %.0407604.us613, 1          ; 2 uses
  %i.fi = icmp slt i32 %i.fh, %i.aj
  br i1 %i.fi, label %bb.m, label %..loopexit575_crit_edge.us614, !llvm.loop !21

..loopexit575_crit_edge.us614:                    ; preds = %bb.m
  %indvars.iv.next770 = add nuw nsw i64 %indvars.iv769, 1 ; 2 uses
  %exitcond773.not = icmp eq i64 %indvars.iv.next770, %wide.trip.count789
  br i1 %exitcond773.not, label %._crit_edge609.split, label %.preheader574.us611, !llvm.loop !22

.preheader573:                                    ; preds = %._crit_edge609.split, %._crit_edge609.split.us.us, %.preheader576.lr.ph
  %i.fj = icmp sgt i32 %1, 2
  br i1 %i.fj, label %.preheader572.lr.ph, label %._crit_edge656

.preheader572.lr.ph:                              ; preds = %.preheader573
  %i.fk = icmp sgt i32 %2, 2
  %i.fl = add i32 %3, 16
  %i.fm = add i32 %i.fl, %i.aj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ft = icmp sgt i32 %i.aj, 0                   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 26 uses
  %i.fv = icmp sgt i32 %3, 1                      ; 2 uses
end_hunk_0
begin_hunk_1_@Bmc_MeshTest:bb.a
  %i.vk = call i32 @satoko_add_clause(ptr noundef %i.w, ptr noundef nonnull %i.h, i32 noundef 2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  %indvars.iv.next38.i.us = add nuw nsw i64 %indvars.iv37.i.us, 1 ; 2 uses
  %exitcond42.not.i.us = icmp eq i64 %indvars.iv.next38.i.us, %i.va
  br i1 %exitcond42.not.i.us, label %.loopexit.loopexit.i.us, label %bb.bd, !llvm.loop !2

.loopexit.loopexit.i.us:                          ; preds = %bb.bd
  %i.vl = add i32 %.02136.i.us, %indvars.iv39.i.us
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.bc
  %.1.lcssa.i.us = phi i32 [ %.02136.i.us, %bb.bc ], [ %i.vl, %.loopexit.loopexit.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond47.not.i.us = icmp eq i64 %indvars.iv.next44.i.us, %i.va
  br i1 %exitcond47.not.i.us, label %Bmc_MeshAddOneHotness.exit.us, label %bb.bc, !llvm.loop !1

Bmc_MeshAddOneHotness.exit.us:                    ; preds = %.loopexit.i.us, %._crit_edge.i.us, %bb.az
  %.0.i473.us = phi i32 [ 0, %._crit_edge.i.us ], [ 0, %bb.az ], [ %.1.lcssa.i.us, %.loopexit.i.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %i.vm = add nsw i32 %.0.i473.us, %.1391663.us
  br label %bb.be

bb.be:                                            ; preds = %Bmc_MeshAddOneHotness.exit.us, %Bmc_MeshAddOneHotness.exit552.us
  %.2392.us = phi i32 [ %i.vm, %Bmc_MeshAddOneHotness.exit.us ], [ %i.up, %Bmc_MeshAddOneHotness.exit552.us ] ; 4 uses
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 1 ; 2 uses
  %exitcond843.not = icmp eq i64 %indvars.iv.next840, %wide.trip.count842
  br i1 %exitcond843.not, label %._crit_edge665.us, label %bb.w, !llvm.loop !34

._crit_edge665.us:                                ; preds = %bb.be
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 1 ; 2 uses
  %exitcond848.not = icmp eq i64 %indvars.iv.next845, %wide.trip.count847
  br i1 %exitcond848.not, label %._crit_edge668, label %.preheader564.us, !llvm.loop !35

bb.bf:                                            ; preds = %bb.v
  %i.vn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6) ; 0 uses
  br label %bb.bi

bb.bg:                                            ; preds = %bb.v
  %i.vo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) ; 0 uses
  br label %bb.bi

._crit_edge668:                                   ; preds = %._crit_edge665.us
  %i.vp = icmp sgt i32 %.2392.us, 0
  br i1 %i.vp, label %bb.bh, label %._crit_edge668.thread

._crit_edge668.thread:                            ; preds = %.preheader565, %._crit_edge668
  %i.vq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  %i.vr = icmp eq i32 %i.pi, 1
  br label %bb.bi

bb.bh:                                            ; preds = %._crit_edge668
  %i.vs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.2392.us) ; 0 uses
  br label %bb.v

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %._crit_edge668.thread
  %i.vt = phi i1 [ false, %bb.bf ], [ false, %bb.bg ], [ %i.vr, %._crit_edge668.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.vu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #12
  %i.vv = icmp slt i32 %i.vu, 0
  br i1 %i.vv, label %Abc_Clock.exit554, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.vw = load i64, ptr %5, align 8, !tbaa !46
  %i.vx = mul nsw i64 %i.vw, 1000000
  %i.vy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !47
  %i.wa = sdiv i64 %i.vz, 1000
  %i.wb = add nsw i64 %i.wa, %i.vx
  br label %Abc_Clock.exit554

Abc_Clock.exit554:                                ; preds = %bb.bi, %bb.bj
  %.0.i553 = phi i64 [ %i.wb, %bb.bj ], [ -1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.wc = sub nsw i64 %.0.i553, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7)
  %i.wd = sitofp i64 %i.wc to double
  %i.we = fdiv double %i.wd, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.20, double noundef %i.we)
  br i1 %i.vt, label %.preheader563, label %.loopexit

.preheader563:                                    ; preds = %Abc_Clock.exit554
  %i.wf = icmp slt i32 %2, 3
  %brmerge930 = or i1 %i.wf, %.not929
  br i1 %brmerge930, label %._crit_edge685, label %.preheader562.us

.preheader562.us:                                 ; preds = %.preheader563, %._crit_edge680.us
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %._crit_edge680.us ], [ 1, %.preheader563 ] ; 2 uses
  %.0383684.us = phi i32 [ %spec.select460.us.11, %._crit_edge680.us ], [ 0, %.preheader563 ]
  %.0386683.us = phi i32 [ %spec.select.us.3, %._crit_edge680.us ], [ 0, %.preheader563 ]
  %invariant.gep.us690 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv856
  br label %.preheader561.us

.preheader561.us:                                 ; preds = %.preheader562.us, %.preheader561.us
  %indvars.iv851 = phi i64 [ 1, %.preheader562.us ], [ %indvars.iv.next852, %.preheader561.us ] ; 2 uses
  %.1384678.us = phi i32 [ %.0383684.us, %.preheader562.us ], [ %spec.select460.us.11, %.preheader561.us ]
  %.1387677.us = phi i32 [ %.0386683.us, %.preheader562.us ], [ %spec.select.us.3, %.preheader561.us ]
  %gep.us689 = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us690, i64 %indvars.iv851
  %i.wg = load i32, ptr %gep.us689, align 4, !tbaa !11
  %.reass.us = add i32 %i.wg, %i.oh               ; 16 uses
  %i.wh = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %.reass.us) #12
  %i.wi = add nsw i32 %.reass.us, 1
  %i.wj = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wi) #12
  %i.wk = add nsw i32 %.reass.us, 2
  %i.wl = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wk) #12
  %i.wm = add nsw i32 %.reass.us, 3
  %i.wn = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wm) #12
  %i.wo = add nsw i32 %.reass.us, 4
  %i.wp = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wo) #12
  %.not559.us = icmp eq i8 %i.wp, 0
  %i.wq = zext i1 %.not559.us to i32
  %spec.select460.us = add nsw i32 %.1384678.us, %i.wq
  %i.wr = add nsw i32 %.reass.us, 5
  %i.ws = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wr) #12
  %.not559.us.1 = icmp eq i8 %i.ws, 0
  %i.wt = zext i1 %.not559.us.1 to i32
  %spec.select460.us.1 = add nsw i32 %spec.select460.us, %i.wt
  %i.wu = add nsw i32 %.reass.us, 6
  %i.wv = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wu) #12
  %.not559.us.2 = icmp eq i8 %i.wv, 0
  %i.ww = zext i1 %.not559.us.2 to i32
  %spec.select460.us.2 = add nsw i32 %spec.select460.us.1, %i.ww
  %i.wx = add nsw i32 %.reass.us, 7
  %i.wy = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.wx) #12
  %.not559.us.3 = icmp eq i8 %i.wy, 0
  %i.wz = zext i1 %.not559.us.3 to i32
  %spec.select460.us.3 = add nsw i32 %spec.select460.us.2, %i.wz
  %i.xa = add nsw i32 %.reass.us, 8
  %i.xb = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xa) #12
  %.not559.us.4 = icmp eq i8 %i.xb, 0
  %i.xc = zext i1 %.not559.us.4 to i32
  %spec.select460.us.4 = add nsw i32 %spec.select460.us.3, %i.xc
  %i.xd = add nsw i32 %.reass.us, 9
  %i.xe = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xd) #12
  %.not559.us.5 = icmp eq i8 %i.xe, 0
  %i.xf = zext i1 %.not559.us.5 to i32
  %spec.select460.us.5 = add nsw i32 %spec.select460.us.4, %i.xf
  %i.xg = add nsw i32 %.reass.us, 10
  %i.xh = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xg) #12
  %.not559.us.6 = icmp eq i8 %i.xh, 0
  %i.xi = zext i1 %.not559.us.6 to i32
  %spec.select460.us.6 = add nsw i32 %spec.select460.us.5, %i.xi
  %i.xj = add nsw i32 %.reass.us, 11
  %i.xk = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xj) #12
  %.not559.us.7 = icmp eq i8 %i.xk, 0
  %i.xl = zext i1 %.not559.us.7 to i32
  %spec.select460.us.7 = add nsw i32 %spec.select460.us.6, %i.xl
  %i.xm = add nsw i32 %.reass.us, 12
  %i.xn = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xm) #12
  %.not559.us.8 = icmp eq i8 %i.xn, 0
  %i.xo = zext i1 %.not559.us.8 to i32
  %spec.select460.us.8 = add nsw i32 %spec.select460.us.7, %i.xo
  %i.xp = add nsw i32 %.reass.us, 13
  %i.xq = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xp) #12
  %.not559.us.9 = icmp eq i8 %i.xq, 0
  %i.xr = zext i1 %.not559.us.9 to i32
  %spec.select460.us.9 = add nsw i32 %spec.select460.us.8, %i.xr
  %i.xs = add nsw i32 %.reass.us, 14
  %i.xt = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xs) #12
  %.not559.us.10 = icmp eq i8 %i.xt, 0
  %i.xu = zext i1 %.not559.us.10 to i32
  %spec.select460.us.10 = add nsw i32 %spec.select460.us.9, %i.xu
  %i.xv = add nsw i32 %.reass.us, 15
  %i.xw = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.xv) #12
  %.not559.us.11 = icmp eq i8 %i.xw, 0
  %i.xx = zext i1 %.not559.us.11 to i32
  %spec.select460.us.11 = add nsw i32 %spec.select460.us.10, %i.xx ; 3 uses
  %.not560.us = icmp eq i8 %i.wh, 0
  %i.xy = zext i1 %.not560.us to i32
  %spec.select.us = add nsw i32 %.1387677.us, %i.xy
  %.not560.us.1 = icmp eq i8 %i.wj, 0
  %i.xz = zext i1 %.not560.us.1 to i32
  %spec.select.us.1 = add nsw i32 %spec.select.us, %i.xz
  %.not560.us.2 = icmp eq i8 %i.wl, 0
  %i.ya = zext i1 %.not560.us.2 to i32
  %spec.select.us.2 = add nsw i32 %spec.select.us.1, %i.ya
  %.not560.us.3 = icmp eq i8 %i.wn, 0
  %i.yb = zext i1 %.not560.us.3 to i32
  %spec.select.us.3 = add nsw i32 %spec.select.us.2, %i.yb ; 3 uses
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1 ; 2 uses
  %exitcond855.not = icmp eq i64 %indvars.iv.next852, %i.ph
  br i1 %exitcond855.not, label %._crit_edge680.us, label %.preheader561.us, !llvm.loop !36

._crit_edge680.us:                                ; preds = %.preheader561.us
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %exitcond860.not = icmp eq i64 %indvars.iv.next857, %i.pg
  br i1 %exitcond860.not, label %._crit_edge685, label %.preheader562.us, !llvm.loop !37

._crit_edge685:                                   ; preds = %._crit_edge680.us, %.preheader563
  %.0386.lcssa = phi i32 [ 0, %.preheader563 ], [ %spec.select.us.3, %._crit_edge680.us ] ; 2 uses
  %.0383.lcssa = phi i32 [ 0, %.preheader563 ], [ %spec.select460.us.11, %._crit_edge680.us ] ; 2 uses
  %i.yc = add nsw i32 %.0383.lcssa, %.0386.lcssa
  %i.yd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.yc, i32 noundef %.0383.lcssa, i32 noundef %.0386.lcssa) ; 0 uses
  %i.ye = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) ; 0 uses
  br i1 %i.ct, label %._crit_edge698.a, label %.lr.ph697

.lr.ph697:                                        ; preds = %._crit_edge685, %.lr.ph697
  %.5428695 = phi i32 [ %i.yg, %.lr.ph697 ], [ 0, %._crit_edge685 ] ; 2 uses
  %i.yf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %.5428695) ; 0 uses
  %i.yg = add nuw nsw i32 %.5428695, 1            ; 2 uses
  %exitcond861.not = icmp eq i32 %i.yg, %1
  br i1 %exitcond861.not, label %._crit_edge698, label %.lr.ph697, !llvm.loop !38

._crit_edge698:                                   ; preds = %.lr.ph697
  %putchar446 = call i32 @putchar(i32 10)         ; 0 uses
  br i1 %i.bz, label %.loopexit, label %.lr.ph724

._crit_edge698.a:                                 ; preds = %._crit_edge685
  %putchar446.a = call i32 @putchar(i32 10)       ; 0 uses
  br i1 %i.bz, label %.loopexit, label %.lr.ph724.thread

.lr.ph724.thread:                                 ; preds = %._crit_edge698.a
  %wide.trip.count875919 = zext nneg i32 %2 to i64
  br label %._crit_edge713

.lr.ph724:                                        ; preds = %._crit_edge698
  %i.yh = load i32, ptr %i.cm, align 8
  %wide.trip.count875 = zext nneg i32 %2 to i64
  %8 = add nsw i32 %1, -2
  %wide.trip.count870.us = zext nneg i32 %1 to i64
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph712.split.split.us, %.lr.ph724
  %indvars.iv872.a = phi i64 [ 0, %.lr.ph724 ], [ %indvars.iv.next873.us, %.lr.ph712.split.split.us ] ; 5 uses
  %i.yi = trunc nuw nsw i64 %indvars.iv872.a to i32
  %i.yj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.yi) ; 0 uses
  %invariant.gep.us877 = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv872.a
  %9 = icmp eq i64 %indvars.iv872.a, 0
  %10 = icmp eq i64 %indvars.iv872.a, %i.pg
  %invariant.op714.us = or i1 %9, %10             ; 2 uses
  br i1 %i.pa, label %.preheader.lr.ph.us, label %.lr.ph712.split.us

.lr.ph712.split.us:                               ; preds = %bb.bk
  br i1 %invariant.op714.us, label %.lr.ph712, label %.lr.ph712.split.split

.lr.ph712.split.split.preheader.peel.newph.us.split: ; preds = %.lr.ph712.split.split, %.lr.ph712.split.split.preheader.peel.newph.us.split
  %.6429709.us = phi i32 [ %12, %.lr.ph712.split.split.preheader.peel.newph.us.split ], [ 1, %.lr.ph712.split.split ] ; 2 uses
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  %12 = add nuw nsw i32 %.6429709.us, 1           ; 2 uses
  %exitcond862.us.not = icmp eq i32 %.6429709.us, %8
  br i1 %exitcond862.us.not, label %.lr.ph712.split.split.peel, label %.lr.ph712.split.split.preheader.peel.newph.us.split, !llvm.loop !39

.lr.ph712:                                        ; preds = %.lr.ph712.split.us, %.lr.ph712
  %.6429709.us720.us = phi i32 [ %14, %.lr.ph712 ], [ 0, %.lr.ph712.split.us ]
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  %14 = add nuw nsw i32 %.6429709.us720.us, 1     ; 2 uses
  %exitcond864.us.not = icmp eq i32 %14, %1
  br i1 %exitcond864.us.not, label %.lr.ph712.split.split.us, label %.lr.ph712, !llvm.loop !40

.preheader.lr.ph.us:                              ; preds = %bb.bk, %bb.bp
  %indvars.iv867 = phi i64 [ %indvars.iv.next868, %bb.bp ], [ 0, %bb.bk ] ; 4 uses
  %gep.us715 = getelementptr inbounds nuw [408 x i8], ptr %invariant.gep.us877, i64 %indvars.iv867
  %i.yk = load i32, ptr %gep.us715, align 4, !tbaa !11 ; 2 uses
  %i.yl = add nsw i32 %i.yh, %i.yk
  br i1 %i.pc, label %.preheader.us.us, label %._crit_edge705.us.thread

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.us, %._crit_edge702.us.us
  %.0704.us.us = phi i32 [ %.2.us.us, %._crit_edge702.us.us ], [ 0, %.preheader.lr.ph.us ]
  %.3416703.us.us = phi i32 [ %i.yt, %._crit_edge702.us.us ], [ 0, %.preheader.lr.ph.us ] ; 3 uses
  %i.ym = add nsw i32 %.3416703.us.us, %i.yk
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bo, %.preheader.us.us
  %.1700.us.us = phi i32 [ %.0704.us.us, %.preheader.us.us ], [ %.2.us.us, %bb.bo ] ; 2 uses
  %.5412699.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.ys, %bb.bo ] ; 3 uses
  %i.yn = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.ym) #12
  %.not557.us.us = icmp eq i8 %i.yn, 0
  br i1 %.not557.us.us, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.yo = add nsw i32 %i.yl, %.5412699.us.us
  %i.yp = call signext i8 @satoko_var_polarity(ptr noundef %i.w, i32 noundef %i.yo) #12
  %.not558.us.us = icmp eq i8 %i.yp, 0
  br i1 %.not558.us.us, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.yq = add nuw nsw i32 %.5412699.us.us, 97
  %i.yr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.yq, i32 noundef %.3416703.us.us) ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.2.us.us = phi i32 [ 1, %bb.bn ], [ %.1700.us.us, %bb.bm ], [ %.1700.us.us, %bb.bl ] ; 3 uses
  %i.ys = add nuw nsw i32 %.5412699.us.us, 1      ; 2 uses
  %exitcond865.not = icmp eq i32 %i.ys, %i.aj
  br i1 %exitcond865.not, label %._crit_edge702.us.us, label %bb.bl, !llvm.loop !41

._crit_edge702.us.us:                             ; preds = %bb.bo
  %i.yt = add nuw nsw i32 %.3416703.us.us, 1      ; 2 uses
  %exitcond866.not = icmp eq i32 %i.yt, %3
  br i1 %exitcond866.not, label %._crit_edge705.us, label %.preheader.us.us, !llvm.loop !42

._crit_edge705.us:                                ; preds = %._crit_edge702.us.us
  %i.yu = icmp eq i32 %.2.us.us, 0
  br i1 %i.yu, label %._crit_edge705.us.thread, label %bb.bp

._crit_edge705.us.thread:                         ; preds = %.preheader.lr.ph.us, %._crit_edge705.us
  %i.yv = icmp eq i64 %indvars.iv867, 0
  %i.yw = icmp eq i64 %indvars.iv867, %i.ph
  %i.yx = or i1 %i.yw, %i.yv
  %or.cond725 = or i1 %i.yx, %invariant.op714.us
  %.str.17..str.18.a = select i1 %or.cond725, ptr @.str.17, ptr @.str.18
  %i.yy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.17..str.18.a) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge705.us.thread, %._crit_edge705.us
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1 ; 2 uses
  %exitcond871.not = icmp eq i64 %indvars.iv.next868, %wide.trip.count870.us
  br i1 %exitcond871.not, label %.lr.ph712.split.split.us, label %.preheader.lr.ph.us, !llvm.loop !40

.lr.ph712.split.split.us:                         ; preds = %.lr.ph712, %bb.bp, %.lr.ph712.split.split, %.lr.ph712.split.split.peel
  %i.yz = call i32 @putchar(i32 10)               ; 0 uses
  %indvars.iv.next873.us = add nuw nsw i64 %indvars.iv872.a, 1 ; 2 uses
  %exitcond864.not = icmp eq i64 %indvars.iv.next873.us, %wide.trip.count875
  br i1 %exitcond864.not, label %.loopexit, label %bb.bk, !llvm.loop !43

.lr.ph712.split.split:                            ; preds = %.lr.ph712.split.us
  %i.za = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  switch i32 %1, label %.lr.ph712.split.split.preheader.peel.newph.us.split [
    i32 1, label %.lr.ph712.split.split.us
    i32 2, label %.lr.ph712.split.split.peel
  ]

.lr.ph712.split.split.peel:                       ; preds = %.lr.ph712.split.split.preheader.peel.newph.us.split, %.lr.ph712.split.split
  %i.zb = phi i32 [ 1, %.lr.ph712.split.split ], [ %12, %.lr.ph712.split.split.preheader.peel.newph.us.split ]
  %i.zc = icmp eq i32 %i.zb, %i.cu
  %.str.17..str.18932.peel = select i1 %i.zc, ptr @.str.17, ptr @.str.18
  %i.zd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.17..str.18932.peel) ; 0 uses
  br label %.lr.ph712.split.split.us

._crit_edge713:                                   ; preds = %.lr.ph724.thread, %._crit_edge713
  %indvars.iv872 = phi i64 [ 0, %.lr.ph724.thread ], [ %indvars.iv.next873, %._crit_edge713 ] ; 2 uses
  %15 = trunc nuw nsw i64 %indvars.iv872 to i32
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %15) ; 0 uses
  %putchar447 = call i32 @putchar(i32 10)         ; 0 uses
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1 ; 2 uses
  %exitcond876.not = icmp eq i64 %indvars.iv.next873, %wide.trip.count875919
  br i1 %exitcond876.not, label %.loopexit, label %._crit_edge713, !llvm.loop !43

.loopexit:                                        ; preds = %.lr.ph712.split.split.us, %._crit_edge713, %Abc_Clock.exit554, %._crit_edge698, %._crit_edge698.a, %Abc_Clock.exit472
  call void @satoko_destroy(ptr noundef %i.w) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  ret void
}

declare ptr @satoko_create() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @satoko_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @satoko_solve(ptr noundef) local_unnamed_addr #2

declare signext i8 @satoko_var_polarity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #12 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #12
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #12 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !81
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #13
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #12 ; 0 uses
  call void @free(ptr noundef %i.d) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !81, !noalias !82
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #12, !inline_history !79 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !12}
!1 = distinct !{!1, !12}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !7, i64 0}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !73}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !74, !75}
!26 = distinct !{!26, !12, !75, !74}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12, !76}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = !{!"long", !7, i64 0}
!45 = !{!"timespec", !44, i64 0, !44, i64 8}
!46 = !{!45, !44, i64 0}
!47 = !{!45, !44, i64 8}
!48 = !{!"p1 omnipotent char", !13, i64 0}
!49 = !{!"p1 _ZTS10Gia_Obj_t_", !13, i64 0}
!50 = !{!"p1 int", !13, i64 0}
!51 = !{!"p1 _ZTS10Vec_Int_t_", !13, i64 0}
!52 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !50, i64 8}
!53 = !{!"p1 _ZTS10Gia_Rpr_t_", !13, i64 0}
!54 = !{!"p1 _ZTS10Vec_Wec_t_", !13, i64 0}
!55 = !{!"p1 _ZTS10Vec_Str_t_", !13, i64 0}
!56 = !{!"p1 _ZTS10Abc_Cex_t_", !13, i64 0}
!57 = !{!"p1 _ZTS10Vec_Ptr_t_", !13, i64 0}
!58 = !{!"p1 _ZTS10Gia_Plc_t_", !13, i64 0}
!59 = !{!"p1 _ZTS10Gia_Man_t_", !13, i64 0}
!60 = !{!"p1 _ZTS10Vec_Flt_t_", !13, i64 0}
!61 = !{!"float", !7, i64 0}
!62 = !{!"p1 _ZTS10Vec_Vec_t_", !13, i64 0}
!63 = !{!"p1 _ZTS10Vec_Wrd_t_", !13, i64 0}
!64 = !{!"p1 _ZTS10Vec_Bit_t_", !13, i64 0}
!65 = !{!"p1 _ZTS10Gia_Dat_t_", !13, i64 0}
!66 = !{!"Gia_Man_t_", !48, i64 0, !48, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !49, i64 32, !50, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !51, i64 64, !51, i64 72, !52, i64 80, !52, i64 96, !8, i64 112, !8, i64 116, !8, i64 120, !52, i64 128, !50, i64 144, !50, i64 152, !51, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !50, i64 184, !53, i64 192, !50, i64 200, !50, i64 208, !50, i64 216, !8, i64 224, !8, i64 228, !50, i64 232, !8, i64 240, !51, i64 248, !51, i64 256, !51, i64 264, !54, i64 272, !54, i64 280, !51, i64 288, !13, i64 296, !51, i64 304, !51, i64 312, !55, i64 320, !48, i64 328, !51, i64 336, !51, i64 344, !51, i64 352, !51, i64 360, !51, i64 368, !56, i64 376, !56, i64 384, !57, i64 392, !52, i64 400, !52, i64 416, !51, i64 432, !51, i64 440, !51, i64 448, !51, i64 456, !51, i64 464, !51, i64 472, !51, i64 480, !51, i64 488, !51, i64 496, !51, i64 504, !51, i64 512, !48, i64 520, !58, i64 528, !59, i64 536, !60, i64 544, !60, i64 552, !51, i64 560, !51, i64 568, !51, i64 576, !51, i64 584, !51, i64 592, !8, i64 600, !61, i64 604, !61, i64 608, !51, i64 616, !50, i64 624, !8, i64 632, !57, i64 640, !57, i64 648, !57, i64 656, !51, i64 664, !51, i64 672, !51, i64 680, !51, i64 688, !51, i64 696, !51, i64 704, !51, i64 712, !51, i64 720, !51, i64 728, !62, i64 736, !60, i64 744, !13, i64 752, !13, i64 760, !13, i64 768, !44, i64 776, !44, i64 784, !13, i64 792, !50, i64 800, !8, i64 808, !8, i64 812, !8, i64 816, !8, i64 820, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !63, i64 856, !63, i64 864, !63, i64 872, !63, i64 880, !51, i64 888, !51, i64 896, !51, i64 904, !64, i64 912, !8, i64 920, !8, i64 924, !8, i64 928, !51, i64 936, !8, i64 944, !8, i64 948, !51, i64 952, !51, i64 960, !57, i64 968, !63, i64 976, !51, i64 984, !51, i64 992, !8, i64 1000, !8, i64 1004, !63, i64 1008, !52, i64 1016, !52, i64 1032, !52, i64 1048, !65, i64 1064, !55, i64 1072, !55, i64 1080, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !55, i64 1104, !51, i64 1112, !51, i64 1120, !51, i64 1128, !57, i64 1136}
!67 = !{!66, !8, i64 16}
!68 = !{!66, !51, i64 64}
!69 = !{!52, !8, i64 4}
!70 = !{!66, !8, i64 24}
!71 = !{!66, !51, i64 72}
!72 = !{!66, !49, i64 32}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!"llvm.loop.peeled.count", i32 2}
!77 = distinct !{!77, i1 true, !"vprintf"}
!78 = distinct !{!78, !77, !"vprintf: argument 0"}
!79 = distinct !{null}
!80 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!78}
end_hunk_1
