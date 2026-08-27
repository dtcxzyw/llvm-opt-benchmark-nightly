Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/huffman?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ff_huff_gen_len_table:bb.a
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv147
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !33
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %i.g, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gm = add i8 %i.gl, 1
  %i.gn = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv147
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !9
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, -1
  %.not92.not = icmp sgt i64 %indvars.iv147, %i.bl
  br i1 %.not92.not, label %.lr.ph124, label %.preheader, !llvm.loop !36

.lr.ph126:                                        ; preds = %.preheader, %bb.p
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %bb.p ], [ 0, %.preheader ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv150
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !33
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %i.g, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !9
  %i.gt = add i8 %i.gs, 1
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv150 ; 2 uses
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !15
  %i.gw = zext i16 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 %i.gw
  store i8 %i.gt, ptr %i.gx, align 1, !tbaa !9
  %i.gy = load i16, ptr %i.gu, align 2, !tbaa !15
  %i.gz = zext i16 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !9
  %i.hc = icmp ugt i8 %i.hb, 31
  br i1 %i.hc, label %._crit_edge127.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph126
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge127.thread, label %.lr.ph126, !llvm.loop !37

._crit_edge127.loopexit:                          ; preds = %.lr.ph126
  %i.hd = trunc nuw nsw i64 %indvars.iv150 to i32
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %._crit_edge127.loopexit, %.preheader
  %.4.lcssa = phi i32 [ 0, %.preheader ], [ %i.hd, %._crit_edge127.loopexit ]
  %i.he = icmp eq i32 %.4.lcssa, %.086.lcssa
  %i.hf = shl i32 %.090, 1
  br i1 %i.he, label %._crit_edge127.thread, label %bb.g

._crit_edge127.thread:                            ; preds = %._crit_edge127, %bb.p
  tail call void @av_free(ptr noundef nonnull %i.b) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %._crit_edge127.thread
  %.0 = phi i32 [ 0, %._crit_edge127.thread ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ff_huff_build_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.e = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %2, 4
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.0185223 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.g = trunc i64 %indvars.iv to i16
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  store i16 %i.g, ptr %i.h, align 4, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 -2, ptr %i.i, align 2, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %.0185223, %i.l
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = trunc i64 %indvars.iv.next to i16
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next ; 3 uses
  store i16 %i.n, ptr %i.o, align 4, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 -2, ptr %i.p, align 2, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.m, %i.s
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next.1 to i16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1 ; 3 uses
  store i16 %i.u, ptr %i.v, align 4, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i16 -2, ptr %i.w, align 2, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !41
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.t, %i.z
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ab = trunc i64 %indvars.iv.next.2 to i16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2 ; 3 uses
  store i16 %i.ab, ptr %i.ac, align 4, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 -2, ptr %i.ad, align 2, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.aa, %i.ag            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !42

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0185223.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.unr-lcssa ]
  %lcmp.mod355 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod355)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.0185223.epil = phi i64 [ %.0185223.epil.init, %.lr.ph.epil.preheader ], [ %i.ao, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ai = trunc i64 %indvars.iv.epil to i16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil ; 3 uses
  store i16 %i.ai, ptr %i.aj, align 4, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 -2, ptr %i.ak, align 2, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %.0185223.epil, %i.an   ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa353 = phi i64 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil ]
  %i.ap = icmp samesign ult i64 %.lcssa353, 2147483648
  br i1 %i.ap, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str) #6
  br label %bb.ac

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr %4, ptr %i.d, align 16, !tbaa !44
  %i.aq = sext i32 %2 to i64                      ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %.thread
  %.0181244 = phi i32 [ 1, %._crit_edge.thread ], [ %.1182221, %.thread ] ; 2 uses
  %i.au = add nsw i32 %.0181244, -1               ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !44 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph239.preheader, label %.thread

.lr.ph239.preheader:                              ; preds = %bb.c
  %i.bb = sext i32 %.0181244 to i64
  %i.bc = add nsw i64 %i.bb, -1
  br label %.lr.ph239

.lr.ph239:                                        ; preds = %.lr.ph239.preheader, %bb.v
  %indvars.iv280 = phi i64 [ %i.bc, %.lr.ph239.preheader ], [ %indvars.iv.next281, %bb.v ] ; 6 uses
  %.0175237 = phi ptr [ %i.ax, %.lr.ph239.preheader ], [ %.1176, %bb.v ] ; 16 uses
  %.0178236 = phi ptr [ %i.az, %.lr.ph239.preheader ], [ %.1179, %bb.v ] ; 17 uses
  %i.bd = getelementptr inbounds i8, ptr %.0178236, i64 -8 ; 7 uses
  %i.be = icmp ult ptr %.0175237, %i.bd
  br i1 %i.be, label %bb.d, label %bb.w

bb.d:                                             ; preds = %.lr.ph239
  %i.bf = getelementptr inbounds i8, ptr %.0178236, i64 -16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0175237, i64 8 ; 3 uses
  %i.bh = ptrtoint ptr %.0178236 to i64           ; 2 uses
  %i.bi = ptrtoint ptr %.0175237 to i64           ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr i64 %i.bj, 4
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0175237, i64 %i.bk ; 13 uses
  %i.bm = tail call i32 %5(ptr noundef %.0175237, ptr noundef nonnull %.0178236) #6
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bo = tail call i32 %5(ptr noundef nonnull %.0178236, ptr noundef %i.bl) #6
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = load i64, ptr %.0175237, align 4        ; 2 uses
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = load i64, ptr %i.bl, align 4
  store i64 %i.bq, ptr %i.bl, align 4
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %.0178236, align 4
  store i64 %i.bq, ptr %.0178236, align 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.bt = tail call i32 %5(ptr noundef %.0175237, ptr noundef %i.bl) #6
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = load i64, ptr %i.bl, align 4
  %i.bw = load i64, ptr %.0175237, align 4
  store i64 %i.bw, ptr %i.bl, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f, %bb.i
  %.sink = phi i64 [ %i.bv, %bb.i ], [ %i.br, %bb.f ], [ %i.bs, %bb.g ]
  store i64 %.sink, ptr %.0175237, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %.0173 = phi i32 [ 1, %bb.h ], [ 0, %.sink.split ]
  %i.bx = tail call i32 %5(ptr noundef %i.bl, ptr noundef nonnull %.0178236) #6
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %.0178236, align 4
  %i.ca = load i64, ptr %i.bl, align 4
  store i64 %i.ca, ptr %.0178236, align 4
  store i64 %i.bz, ptr %i.bl, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1174 = phi i32 [ 0, %bb.k ], [ %.0173, %bb.j ]
  %i.cb = icmp eq ptr %.0175237, %i.bf
  br i1 %i.cb, label %.thread.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load i64, ptr %i.bl, align 4            ; 2 uses
  %i.cd = load i64, ptr %i.bd, align 4
  store i64 %i.cd, ptr %i.bl, align 4
  store i64 %i.cc, ptr %i.bd, align 4
  %.not199229 = icmp ugt ptr %i.bg, %i.bf
  br i1 %.not199229, label %._crit_edge232, label %.preheader

.preheader:                                       ; preds = %bb.m, %.critedge203
  %.0169231 = phi ptr [ %.2, %.critedge203 ], [ %i.bg, %bb.m ]
  %.0170230 = phi ptr [ %.2172, %.critedge203 ], [ %i.bf, %bb.m ] ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.o
  %.1224 = phi ptr [ %.0169231, %.preheader ], [ %i.cg, %bb.o ] ; 3 uses
  %i.ce = tail call i32 %5(ptr noundef %.1224, ptr noundef nonnull %i.bd) #6
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.1224, i64 8 ; 3 uses
  %.not201 = icmp ugt ptr %i.cg, %.0170230
  br i1 %.not201, label %.critedge, label %bb.n, !llvm.loop !46

.critedge:                                        ; preds = %bb.o, %bb.n
  %.1.lcssa = phi ptr [ %i.cg, %bb.o ], [ %.1224, %bb.n ] ; 7 uses
  %.not202225 = icmp ugt ptr %.1.lcssa, %.0170230
  br i1 %.not202225, label %.critedge203, label %.lr.ph227

.lr.ph227:                                        ; preds = %.critedge, %bb.p
  %.1171226 = phi ptr [ %i.cj, %bb.p ], [ %.0170230, %.critedge ] ; 5 uses
  %i.ch = tail call i32 %5(ptr noundef %.1171226, ptr noundef nonnull %i.bd) #6
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph227
  %i.cj = getelementptr inbounds i8, ptr %.1171226, i64 -8 ; 3 uses
  %.not202 = icmp ugt ptr %.1.lcssa, %i.cj
  br i1 %.not202, label %.critedge203, label %.lr.ph227, !llvm.loop !47

.critedge2:                                       ; preds = %.lr.ph227
  %i.ck = load i64, ptr %.1171226, align 4
  %i.cl = load i64, ptr %.1.lcssa, align 4
  store i64 %i.cl, ptr %.1171226, align 4
  store i64 %i.ck, ptr %.1.lcssa, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  %i.cn = getelementptr inbounds i8, ptr %.1171226, i64 -8
  br label %.critedge203

.critedge203:                                     ; preds = %bb.p, %.critedge, %.critedge2
  %.2172 = phi ptr [ %i.cn, %.critedge2 ], [ %.0170230, %.critedge ], [ %i.cj, %bb.p ] ; 3 uses
  %.2 = phi ptr [ %i.cm, %.critedge2 ], [ %.1.lcssa, %.critedge ], [ %.1.lcssa, %bb.p ] ; 3 uses
  %.not199 = icmp ugt ptr %.2, %.2172
  br i1 %.not199, label %._crit_edge232.loopexit, label %.preheader, !llvm.loop !48

._crit_edge232.loopexit:                          ; preds = %.critedge203
  %.pre = load i64, ptr %i.bd, align 4
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %._crit_edge232.loopexit, %bb.m
  %i.co = phi i64 [ %i.cc, %bb.m ], [ %.pre, %._crit_edge232.loopexit ]
  %.0170.lcssa = phi ptr [ %i.bf, %bb.m ], [ %.2172, %._crit_edge232.loopexit ] ; 2 uses
  %.0169.lcssa = phi ptr [ %i.bg, %bb.m ], [ %.2, %._crit_edge232.loopexit ] ; 7 uses
  %i.cp = load i64, ptr %.0169.lcssa, align 4
  store i64 %i.co, ptr %.0169.lcssa, align 4
  store i64 %i.cp, ptr %i.bd, align 4
  %.not200 = icmp eq i32 %.1174, 0
  br i1 %.not200, label %bb.s, label %bb.q

bb.q:                                             ; preds = %._crit_edge232
  %i.cq = getelementptr inbounds i8, ptr %.0169.lcssa, i64 -8
  %i.cr = icmp eq ptr %i.bl, %i.cq
  %i.cs = icmp eq ptr %i.bl, %.0169.lcssa
  %or.cond = or i1 %i.cs, %i.cr
  br i1 %or.cond, label %.preheader216, label %bb.s

.preheader216:                                    ; preds = %bb.q, %bb.r
  %.0.a = phi ptr [ %i.cu, %bb.r ], [ %.0175237, %bb.q ] ; 4 uses
  %i.ct = icmp ult ptr %.0.a, %.0178236
  br i1 %i.ct, label %bb.r, label %.critedge4

bb.r:                                             ; preds = %.preheader216
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.a, i64 8 ; 2 uses
  %i.cv = tail call i32 %5(ptr noundef %.0.a, ptr noundef nonnull %i.cu) #6
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.preheader216, label %.critedge4, !llvm.loop !49

.critedge4:                                       ; preds = %.preheader216, %bb.r
  %i.cx = icmp eq ptr %.0.a, %.0178236
  br i1 %i.cx, label %.thread.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.q, %.critedge4, %._crit_edge232
  %i.cy = ptrtoint ptr %.0169.lcssa to i64        ; 2 uses
  %i.cz = sub i64 %i.bh, %i.cy
  %i.da = sub i64 %i.cy, %i.bi
  %i.db = icmp slt i64 %i.cz, %i.da
  br i1 %i.db, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv280 ; 2 uses
  store ptr %.0175237, ptr %i.dc, align 16, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %.0170.lcssa, ptr %i.dd, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %.0169.lcssa, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %.0169.lcssa, i64 8
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.d, i64 %indvars.iv280 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 16, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.0178236, ptr %i.dh, align 8, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.1179 = phi ptr [ %.0178236, %bb.t ], [ %.0170.lcssa, %bb.u ] ; 2 uses
  %.1176 = phi ptr [ %i.de, %bb.t ], [ %.0175237, %bb.u ] ; 2 uses
  %indvars.iv.next281 = add nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.di = icmp ult ptr %.1176, %.1179
  br i1 %i.di, label %.lr.ph239, label %.thread.loopexit

bb.w:                                             ; preds = %.lr.ph239
  %i.dj = trunc nsw i64 %indvars.iv280 to i32     ; 2 uses
  %i.dk = tail call i32 %5(ptr noundef %.0175237, ptr noundef nonnull %.0178236) #6
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.dm = load i64, ptr %.0178236, align 4
  %i.dn = load i64, ptr %.0175237, align 4
  store i64 %i.dn, ptr %.0178236, align 4
  store i64 %i.dm, ptr %.0175237, align 4
  br label %.thread

.thread.loopexit:                                 ; preds = %.critedge4, %bb.l, %bb.v
  %.1182221.ph.in = phi i64 [ %indvars.iv280, %.critedge4 ], [ %indvars.iv280, %bb.l ], [ %indvars.iv.next281, %bb.v ]
  %.1182221.ph = trunc i64 %.1182221.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.c, %bb.w, %bb.x
  %.1182221 = phi i32 [ %i.dj, %bb.x ], [ %i.dj, %bb.w ], [ %i.au, %bb.c ], [ %.1182221.ph, %.thread.loopexit ] ; 2 uses
  %.not197 = icmp eq i32 %.1182221, 0
  br i1 %.not197, label %bb.y, label %bb.c, !llvm.loop !50

bb.y:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.do = shl nsw i32 %2, 1                       ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = sext i32 %i.dp to i64                   ; 3 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 0, ptr %i.ds, align 4, !tbaa !41
  br i1 %i.e, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.y
  %i.dt = and i32 %6, 1
  %.not198 = icmp eq i32 %i.dt, 0
  br i1 %.not198, label %.lr.ph264.split.us, label %.lr.ph264.split

.lr.ph264.split.us:                               ; preds = %.lr.ph264, %._crit_edge248.us
  %indvars.iv305.a = phi i64 [ %indvars.iv.next306.a, %._crit_edge248.us ], [ 0, %.lr.ph264 ] ; 3 uses
  %indvars.iv301 = phi i32 [ %indvars.iv.next302, %._crit_edge248.us ], [ 2, %.lr.ph264 ] ; 2 uses
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %._crit_edge248.us ], [ %i.aq, %.lr.ph264 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv305.a ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !41
  %i.dz = add i32 %i.dy, %i.dw                    ; 2 uses
  %indvars.iv.next306.a = add nuw nsw i64 %indvars.iv305.a, 2 ; 4 uses
  %sext326 = shl i64 %indvars.iv297, 32
  %i.ea = ashr exact i64 %sext326, 32             ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, %indvars.iv.next306.a
  br i1 %i.eb, label %.lr.ph247.us, label %._crit_edge248.us

.lr.ph247.us:                                     ; preds = %.lr.ph264.split.us, %bb.z
  %indvars.iv299.a = phi i64 [ %indvars.iv.next300.a, %bb.z ], [ %indvars.iv297, %.lr.ph264.split.us ] ; 3 uses
  %i.ec = getelementptr [8 x i8], ptr %4, i64 %indvars.iv299.a ; 3 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !41
  %or.cond272.not = icmp ult i32 %i.dz, %i.ee
  br i1 %or.cond272.not, label %bb.z, label %._crit_edge248.us

bb.z:                                             ; preds = %.lr.ph247.us
  %i.ef = getelementptr i8, ptr %i.ec, i64 -8
  %i.eg = load i64, ptr %i.ef, align 4
  store i64 %i.eg, ptr %i.ec, align 4
  %indvars.iv.next300.a = add nsw i64 %indvars.iv299.a, -1 ; 2 uses
  %i.eh = icmp sgt i64 %indvars.iv.next300.a, %indvars.iv.next306.a
  br i1 %i.eh, label %.lr.ph247.us, label %._crit_edge248.us.loopexit.loopexit, !llvm.loop !51

._crit_edge248.us.loopexit.loopexit:              ; preds = %bb.z
  %i.ei = sext i32 %indvars.iv301 to i64
  br label %._crit_edge248.us

._crit_edge248.us:                                ; preds = %.lr.ph247.us, %._crit_edge248.us.loopexit.loopexit, %.lr.ph264.split.us
  %.pre-phi = phi i64 [ %i.ea, %.lr.ph264.split.us ], [ %i.ei, %._crit_edge248.us.loopexit.loopexit ], [ %indvars.iv299.a, %.lr.ph247.us ]
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre-phi ; 3 uses
  store i16 -1, ptr %i.ej, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 %i.dz, ptr %i.ek, align 4, !tbaa !41
  %i.el = trunc i64 %indvars.iv305.a to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 %i.el, ptr %i.em, align 2, !tbaa !40
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1
  %i.en = icmp slt i64 %indvars.iv.next306.a, %i.dq
  %indvars.iv.next302 = add nuw i32 %indvars.iv301, 2
  br i1 %i.en, label %.lr.ph264.split.us, label %._crit_edge265, !llvm.loop !52

.lr.ph264.split:                                  ; preds = %.lr.ph264, %._crit_edge251.split.us
  %indvars.iv291.a = phi i64 [ %indvars.iv.next292.a, %._crit_edge251.split.us ], [ 0, %.lr.ph264 ] ; 3 uses
  %indvars.iv287 = phi i32 [ %indvars.iv.next288, %._crit_edge251.split.us ], [ 2, %.lr.ph264 ] ; 2 uses
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge251.split.us ], [ %i.aq, %.lr.ph264 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv291.a ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !41
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !41
  %i.et = add i32 %i.es, %i.eq                    ; 2 uses
  %indvars.iv.next292.a = add nuw nsw i64 %indvars.iv291.a, 2 ; 4 uses
  %sext = shl i64 %indvars.iv283, 32
  %i.eu = ashr exact i64 %sext, 32                ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, %indvars.iv.next292.a
  br i1 %i.ev, label %.lr.ph247, label %._crit_edge251.split.us

.lr.ph247:                                        ; preds = %.lr.ph264.split, %bb.aa
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %bb.aa ], [ %indvars.iv283, %.lr.ph264.split ] ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %4, i64 %indvars.iv285 ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !41
  %i.ez = icmp ugt i32 %i.et, %i.ey
  br i1 %i.ez, label %._crit_edge251.split.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph247
  %i.fa = getelementptr i8, ptr %i.ew, i64 -8
  %i.fb = load i64, ptr %i.fa, align 4
  store i64 %i.fb, ptr %i.ew, align 4
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, -1 ; 2 uses
  %i.fc = icmp sgt i64 %indvars.iv.next286, %indvars.iv.next292.a
  br i1 %i.fc, label %.lr.ph247, label %._crit_edge251.split.us.loopexit.loopexit, !llvm.loop !51

._crit_edge251.split.us.loopexit.loopexit:        ; preds = %bb.aa
  %i.fd = sext i32 %indvars.iv287 to i64
  br label %._crit_edge251.split.us

._crit_edge251.split.us:                          ; preds = %.lr.ph247, %._crit_edge251.split.us.loopexit.loopexit, %.lr.ph264.split
  %.pre-phi313 = phi i64 [ %i.eu, %.lr.ph264.split ], [ %i.fd, %._crit_edge251.split.us.loopexit.loopexit ], [ %indvars.iv285, %.lr.ph247 ]
  %i.fe = getelementptr inbounds [8 x i8], ptr %4, i64 %.pre-phi313 ; 3 uses
  store i16 -1, ptr %i.fe, align 4, !tbaa !38
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %i.et, ptr %i.ff, align 4, !tbaa !41
  %i.fg = trunc i64 %indvars.iv291.a to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !40
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1
  %i.fi = icmp slt i64 %indvars.iv.next292.a, %i.dq
  %indvars.iv.next288 = add nuw i32 %indvars.iv287, 2
  br i1 %i.fi, label %.lr.ph264.split, label %._crit_edge265, !llvm.loop !52

._crit_edge265:                                   ; preds = %._crit_edge251.split.us, %._crit_edge248.us, %bb.y
  %i.fj = add nsw i32 %i.do, -2
  %i.fk = lshr i32 %6, 1
  %.lobit.i = and i32 %i.fk, 1
  %i.fl = xor i32 %.lobit.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4, !tbaa !33
  call fastcc void @get_tree_codes(ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull readonly %4, i32 noundef range(i32 -2147483648, 2147483646) %i.fj, i32 noundef 0, ptr noundef %i.c, i32 noundef %i.fl)
  %i.fm = load i32, ptr %i.c, align 4, !tbaa !33
  %i.fn = call i32 @ff_vlc_init_from_lengths(ptr noundef %1, i32 noundef %3, i32 noundef %i.fm, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %0) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge265
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1) #6
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge265, %bb.ab, %bb.b
  %.0190 = phi i32 [ -1, %bb.b ], [ -1, %bb.ab ], [ 0, %._crit_edge265 ]
  ret i32 %.0190
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @get_tree_codes(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 -2147483648, 2147483646) %3, i32 noundef %4, ptr nofree noundef nonnull captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %2, i64 %i.a ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  %.not38 = icmp eq i16 %i.c, -1
  br i1 %.not38, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.d = phi ptr [ %i.j, %tailrecurse.backedge ], [ %i.b, %bb.a ] ; 2 uses
  %.tr3740 = phi i32 [ %.sink46, %tailrecurse.backedge ], [ %6, %bb.a ]
  %.tr3539 = phi i32 [ %i.e, %tailrecurse.backedge ], [ %4, %bb.a ] ; 2 uses
  %.not30 = icmp eq i32 %.tr3740, 0
  br i1 %.not30, label %tailrecurse.backedge, label %bb.b

tailrecurse.backedge:                             ; preds = %.lr.ph, %bb.b
  %.sink46 = phi i32 [ 1, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.e = add nsw i32 %.tr3539, 1                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !40
  %i.h = sext i16 %i.g to i32
  tail call fastcc void @get_tree_codes(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.h, i32 noundef %i.e, ptr noundef %5, i32 noundef %.sink46)
  %.tr34.be.in.in = load i16, ptr %i.f, align 2, !tbaa !40
  %.tr34.be.in = sext i16 %.tr34.be.in.in to i64
  %i.i = getelementptr [8 x i8], ptr %2, i64 %.tr34.be.in
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !38   ; 2 uses
  %.not = icmp eq i16 %i.k, -1
  br i1 %.not, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %._crit_edge, label %tailrecurse.backedge

._crit_edge:                                      ; preds = %tailrecurse.backedge, %bb.b, %bb.a
  %.tr35.lcssa = phi i32 [ %4, %bb.a ], [ %.tr3539, %bb.b ], [ %i.e, %tailrecurse.backedge ]
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ -1, %bb.b ], [ %i.k, %tailrecurse.backedge ]
  %i.n = trunc i32 %.tr35.lcssa to i8
end_hunk_0
