Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_latin_hints_init:bb.a
  %i.n = and i32 %i.m, -3
  %or.cond5.not = icmp eq i32 %i.n, 1             ; 2 uses
  br i1 %or.cond5.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !366
  %i.q = and i64 %i.p, 1
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = or i32 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.039 = phi i32 [ %i.r, %bb.c ], [ %i.e, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.t = icmp eq i32 %i.m, 2                      ; 2 uses
  %i.u = icmp eq i32 %i.m, 4
  %or.cond3 = or i1 %i.t, %i.u
  %i.v = and i32 %i.m, -2
  %or.cond = icmp eq i32 %i.v, 2
  %spec.select = zext i1 %or.cond to i32          ; 2 uses
  %i.w = or disjoint i32 %spec.select, 2
  %.1 = select i1 %or.cond3, i32 %i.w, i32 %spec.select ; 2 uses
  %i.x = or disjoint i32 %.1, 4
  %.2 = select i1 %or.cond5.not, i32 %.1, i32 %i.x ; 2 uses
  %i.y = or disjoint i32 %.2, 8
  %.3 = select i1 %i.t, i32 %i.y, i32 %.2
  store i32 %.039, ptr %i.s, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5164
  store i32 %.3, ptr %i.z, align 4, !tbaa !101
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_latin_hints_apply(i32 noundef %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @af_glyph_hints_reload(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %af_latin_hints_compute_blue_edges.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5160 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not170 = icmp eq i32 %i.d, 0
  br i1 %.not170, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.h = tail call fastcc i32 @af_latin_hints_detect_features(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef nonnull %i.g, i32 noundef 0) ; 2 uses
  %.not171 = icmp eq i32 %i.h, 0
  br i1 %.not171, label %._crit_edge, label %af_latin_hints_compute_blue_edges.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 8, !tbaa !100
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %bb.b ]
  %i.j = and i32 %i.i, 2
  %.not172 = icmp eq i32 %i.j, 0
  br i1 %.not172, label %bb.e, label %af_latin_hints_compute_blue_edges.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !190
  %i.m = tail call ptr @ft_hash_num_lookup(i32 noundef %0, ptr noundef %i.l) #18 ; 2 uses
  %.not173 = icmp eq ptr %i.m, null
  br i1 %.not173, label %af_adjustment_database_lookup.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.m, align 8, !tbaa !76
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %bb.f
  %.01429.i = phi i64 [ 934, %bb.f ], [ %.2.i, %bb.k ] ; 2 uses
  %.01528.i = phi i64 [ 0, %bb.f ], [ %.217.i, %bb.k ] ; 2 uses
  %i.p = add i64 %.01528.i, %.01429.i
  %i.q = lshr i64 %i.p, 1                         ; 4 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @adjustment_database, i64 %i.q
  %i.s = load i32, ptr %i.r, align 8, !tbaa !177  ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.o
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i64 %i.q, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i32 %i.s, %i.o
  br i1 %i.v, label %bb.j, label %af_adjustment_database_lookup.exit

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i64 %i.q, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.217.i = phi i64 [ %.01528.i, %bb.j ], [ %i.u, %bb.h ] ; 2 uses
  %.2.i = phi i64 [ %i.w, %bb.j ], [ %.01429.i, %bb.h ] ; 2 uses
  %.not.i = icmp ult i64 %.2.i, %.217.i
  br i1 %.not.i, label %af_adjustment_database_lookup.exit.thread, label %bb.g, !llvm.loop !367

af_adjustment_database_lookup.exit:               ; preds = %bb.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @adjustment_database, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !388
  %i.aa = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = and <4 x i32> %i.ab, <i32 16, i32 32, i32 64, i32 4096>
  %i.ad = icmp ne <4 x i32> %i.ac, zeroinitializer
  %i.ae = and <4 x i32> %i.ab, <i32 256, i32 512, i32 1024, i32 2048>
  %i.af = icmp eq <4 x i32> %i.ae, zeroinitializer
  %i.ag = shufflevector <4 x i1> %i.ad, <4 x i1> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %af_adjustment_database_lookup.exit.thread

af_adjustment_database_lookup.exit.thread:        ; preds = %bb.k, %af_adjustment_database_lookup.exit, %bb.e
  %.1148 = phi i1 [ true, %bb.e ], [ false, %af_adjustment_database_lookup.exit ], [ true, %bb.k ]
  %i.ah = phi <8 x i1> [ <i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, %bb.e ], [ %i.ag, %af_adjustment_database_lookup.exit ], [ <i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, %bb.k ] ; 8 uses
  %i.ai = extractelement <8 x i1> %i.ah, i64 0    ; 2 uses
  %i.aj = extractelement <8 x i1> %i.ah, i64 1    ; 2 uses
  %or.cond = or i1 %i.ai, %i.aj
  %i.ak = extractelement <8 x i1> %i.ah, i64 2    ; 2 uses
  %or.cond5 = or i1 %or.cond, %i.ak
  br i1 %or.cond5, label %bb.l, label %af_compute_vertical_extrema.exit

bb.l:                                             ; preds = %af_adjustment_database_lookup.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %af_compute_vertical_extrema.exit

.lr.ph.i:                                         ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !192
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !193
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !194
  %wide.trip.count.i = zext nneg i32 %i.am to i64
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !115 ; 5 uses
  %.not.i203 = icmp eq ptr %i.av, null
  br i1 %.not.i203, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !195
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !195
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  %.024.i = phi i64 [ %spec.select.i, %.preheader.i ], [ 9223372036854775807, %bb.n ]
  %.023.i = phi i64 [ %.1.i, %.preheader.i ], [ -9223372036854775808, %bb.n ]
  %.0.i = phi ptr [ %i.be, %.preheader.i ], [ %i.av, %bb.n ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !120 ; 2 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %.024.i) ; 2 uses
  %.1.i = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 %.023.i) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !195 ; 2 uses
  %.not32.i = icmp eq ptr %i.be, %i.av
  br i1 %.not32.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !368

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n, %bb.m
  %.226.i = phi i64 [ 9223372036854775807, %bb.n ], [ 9223372036854775807, %bb.m ], [ %spec.select.i, %.preheader.i ]
  %.2.i204 = phi i64 [ -9223372036854775808, %bb.n ], [ -9223372036854775808, %bb.m ], [ %.1.i, %.preheader.i ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i64 %.226.i, ptr %i.bf, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  store i64 %.2.i204, ptr %i.bg, align 8, !tbaa !76
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %af_compute_vertical_extrema.exit, label %bb.m, !llvm.loop !369

af_compute_vertical_extrema.exit:                 ; preds = %.loopexit.i, %bb.l, %af_adjustment_database_lookup.exit.thread
  br i1 %i.ak, label %bb.o, label %af_move_contours_down.exit

bb.o:                                             ; preds = %af_compute_vertical_extrema.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !191 ; 4 uses
  %i.bj = icmp slt i32 %i.bi, 3
  br i1 %i.bj, label %af_find_second_highest_contour.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !193 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !194 ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bi to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %bb.v ] ; 5 uses
  %.01624.i.i = phi i64 [ -9223372036854775808, %.lr.ph.i.i ], [ %.1.i.i.1, %bb.v ] ; 3 uses
  %.01723.i.i = phi i64 [ 9223372036854775807, %.lr.ph.i.i ], [ %.118.i.i.1, %bb.v ] ; 2 uses
  %.01922.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.120.i.i.1, %bb.v ]
  %niter = phi i64 [ 0, %.lr.ph.i.i ], [ %niter.next.1, %bb.v ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !76 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !76 ; 3 uses
  %i.bs = icmp sgt i64 %i.br, %.01624.i.i
  br i1 %i.bs, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp eq i64 %i.br, %.01624.i.i
  %i.bu = icmp sgt i64 %i.bp, %.01723.i.i
  %or.cond.i.i = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bv = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.120.i.i = phi i32 [ %i.bv, %bb.r ], [ %.01922.i.i, %bb.q ]
  %.118.i.i = phi i64 [ %i.bp, %bb.r ], [ %.01723.i.i, %bb.q ] ; 2 uses
  %.1.i.i = phi i64 [ %i.br, %bb.r ], [ %.01624.i.i, %bb.q ] ; 3 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !76 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !76 ; 3 uses
  %i.ca = icmp sgt i64 %i.bz, %.1.i.i
  br i1 %i.ca, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = icmp eq i64 %i.bz, %.1.i.i
  %i.cc = icmp sgt i64 %i.bx, %.118.i.i
  %or.cond.i.i.1 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.i.i.1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.120.i.i.1 = phi i32 [ %i.cd, %bb.u ], [ %.120.i.i, %bb.t ] ; 3 uses
  %.118.i.i.1 = phi i64 [ %i.bx, %bb.u ], [ %.118.i.i, %bb.t ] ; 2 uses
  %.1.i.i.1 = phi i64 [ %i.bz, %bb.u ], [ %.1.i.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 4 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i205.unr-lcssa, label %bb.p, !llvm.loop !370

.lr.ph.i205.unr-lcssa:                            ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i205, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i205.unr-lcssa
  %lcmp.mod579 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod579)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.1
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !76 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, %.1.i.i.1
  br i1 %i.cg, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.1
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !76
  %i.cj = icmp eq i64 %i.cf, %.1.i.i.1
  %i.ck = icmp sgt i64 %i.ci, %.118.i.i.1
  %or.cond.i.i.epil = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond.i.i.epil, label %bb.x, label %.lr.ph.i205

bb.x:                                             ; preds = %bb.w, %.epil.preheader
  %i.cl = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  br label %.lr.ph.i205

.lr.ph.i205:                                      ; preds = %bb.w, %bb.x, %.lr.ph.i205.unr-lcssa
  %.120.i.i.lcssa = phi i32 [ %.120.i.i.1, %.lr.ph.i205.unr-lcssa ], [ %i.cl, %bb.x ], [ %.120.i.i.1, %bb.w ] ; 2 uses
  %i.cm = sext i32 %.120.i.i.lcssa to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76 ; 3 uses
  %i.cp = zext i32 %.120.i.i.lcssa to i64         ; 3 uses
  %xtraiter581 = and i64 %wide.trip.count.i.i, 1
  %unroll_iter585 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.ae, %.lr.ph.i205
  %indvars.iv.i206 = phi i64 [ 0, %.lr.ph.i205 ], [ %indvars.iv.next.i208.1, %bb.ae ] ; 6 uses
  %.02028.i = phi i64 [ -9223372036854775808, %.lr.ph.i205 ], [ %.2.i207.1, %bb.ae ] ; 4 uses
  %.02127.i = phi i32 [ 0, %.lr.ph.i205 ], [ %.223.i.1, %bb.ae ] ; 3 uses
  %niter586 = phi i64 [ 0, %.lr.ph.i205 ], [ %niter586.next.1, %bb.ae ]
  %i.cq = icmp eq i64 %indvars.iv.i206, %i.cp
  br i1 %i.cq, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i206
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !76 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, %.02028.i
  br i1 %i.ct, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i206
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !76
  %i.cw = icmp slt i64 %i.cv, %i.co               ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv.i206 to i32
  %spec.select.i212 = select i1 %i.cw, i32 %i.cx, i32 %.02127.i
  %spec.select26.i = select i1 %i.cw, i64 %i.cs, i64 %.02028.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.223.i = phi i32 [ %.02127.i, %bb.y ], [ %.02127.i, %bb.z ], [ %spec.select.i212, %bb.aa ] ; 3 uses
  %.2.i207 = phi i64 [ %.02028.i, %bb.y ], [ %.02028.i, %bb.z ], [ %spec.select26.i, %bb.aa ] ; 4 uses
  %indvars.iv.next.i208 = or disjoint i64 %indvars.iv.i206, 1 ; 4 uses
  %i.cy = icmp eq i64 %indvars.iv.next.i208, %i.cp
  br i1 %i.cy, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i208
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !76 ; 2 uses
  %i.db = icmp sgt i64 %i.da, %.2.i207
  br i1 %i.db, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i208
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !76
  %i.de = icmp slt i64 %i.dd, %i.co               ; 2 uses
  %i.df = trunc nuw nsw i64 %indvars.iv.next.i208 to i32
  %spec.select.i212.1 = select i1 %i.de, i32 %i.df, i32 %.223.i
  %spec.select26.i.1 = select i1 %i.de, i64 %i.da, i64 %.2.i207
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %.223.i.1 = phi i32 [ %.223.i, %bb.ab ], [ %.223.i, %bb.ac ], [ %spec.select.i212.1, %bb.ad ] ; 5 uses
  %.2.i207.1 = phi i64 [ %.2.i207, %bb.ab ], [ %.2.i207, %bb.ac ], [ %spec.select26.i.1, %bb.ad ] ; 2 uses
  %indvars.iv.next.i208.1 = add nuw nsw i64 %indvars.iv.i206, 2 ; 5 uses
  %niter586.next.1 = add i64 %niter586, 2         ; 2 uses
  %niter586.ncmp.1 = icmp eq i64 %niter586.next.1, %unroll_iter585
  br i1 %niter586.ncmp.1, label %af_find_second_highest_contour.exit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !371

af_find_second_highest_contour.exit.loopexit.unr-lcssa: ; preds = %bb.ae
  %lcmp.mod582.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %af_find_second_highest_contour.exit, label %.epil.preheader580

.epil.preheader580:                               ; preds = %af_find_second_highest_contour.exit.loopexit.unr-lcssa
  %lcmp.mod584 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod584)
  %i.dg = icmp eq i64 %indvars.iv.next.i208.1, %i.cp
  br i1 %i.dg, label %af_find_second_highest_contour.exit, label %bb.af

bb.af:                                            ; preds = %.epil.preheader580
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next.i208.1
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !76
  %i.dj = icmp sgt i64 %i.di, %.2.i207.1
  br i1 %i.dj, label %bb.ag, label %af_find_second_highest_contour.exit

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i208.1
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !76
  %i.dm = icmp slt i64 %i.dl, %i.co
  %i.dn = trunc nuw nsw i64 %indvars.iv.next.i208.1 to i32
  %spec.select.i212.epil = select i1 %i.dm, i32 %i.dn, i32 %.223.i.1
  br label %af_find_second_highest_contour.exit

af_find_second_highest_contour.exit:              ; preds = %af_find_second_highest_contour.exit.loopexit.unr-lcssa, %bb.ag, %bb.af, %.epil.preheader580, %bb.o
  %.024.i211 = phi i32 [ 0, %bb.o ], [ %.223.i.1, %af_find_second_highest_contour.exit.loopexit.unr-lcssa ], [ %.223.i.1, %.epil.preheader580 ], [ %.223.i.1, %bb.af ], [ %spec.select.i212.epil, %bb.ag ] ; 2 uses
  %i.do = tail call fastcc i64 @af_latin_stretch_top_tilde(ptr noundef %1, i32 noundef %.024.i211)
  %i.dp = getelementptr i8, ptr %1, i64 64
  %.val190 = load ptr, ptr %i.dp, align 8, !tbaa !192 ; 2 uses
  %i.dq = sext i32 %.024.i211 to i64              ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.val190, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !115 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !120 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %af_find_second_highest_contour.exit
  %.028.i = phi ptr [ %i.ds, %af_find_second_highest_contour.exit ], [ %i.dw, %bb.ah ]
  %.026.i = phi i64 [ %i.du, %af_find_second_highest_contour.exit ], [ %spec.select.i213, %bb.ah ]
  %.025.i = phi i64 [ %i.du, %af_find_second_highest_contour.exit ], [ %.1.i214, %bb.ah ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.028.i, i64 64
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !195 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !120 ; 2 uses
  %spec.select.i213 = tail call i64 @llvm.smin.i64(i64 %i.dy, i64 %.026.i) ; 4 uses
  %.1.i214 = tail call i64 @llvm.smax.i64(i64 %i.dy, i64 %.025.i) ; 2 uses
  %.not.i215 = icmp eq ptr %i.dw, %i.ds
  br i1 %.not.i215, label %bb.ai, label %bb.ah, !llvm.loop !372

bb.ai:                                            ; preds = %bb.ah
  %i.dz = add i64 %spec.select.i213, 32
  %i.ea = and i64 %i.dz, -64
  %i.eb = sub i64 %i.ea, %spec.select.i213        ; 2 uses
  %i.ec = sub i64 %.1.i214, %spec.select.i213     ; 3 uses
  %i.ed = icmp slt i64 %i.ec, 192
  br i1 %i.ed, label %bb.aj, label %.preheader.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ee = add nsw i64 %i.ec, 32
  %i.ef = and i64 %i.ee, -64
  %i.eg = sub nsw i64 %i.ef, %i.ec
  %i.eh = sdiv i64 %i.eg, 2
  %i.ei = add nsw i64 %i.eh, %i.eb
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aj, %bb.ai
  %.0.i216 = phi i64 [ %i.ei, %bb.aj ], [ %i.eb, %bb.ai ] ; 2 uses
  %sext.i = shl i64 %.0.i216, 32
  %i.ej = ashr exact i64 %sext.i, 32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.eo, %bb.ak ], [ %i.ds, %.preheader.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !120
  %i.em = add nsw i64 %i.el, %i.ej
  store i64 %i.em, ptr %i.ek, align 8, !tbaa !120
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !195 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.eo, %i.ds
  br i1 %.not8.i.i, label %af_latin_align_top_tilde.exit, label %bb.ak, !llvm.loop !3

af_latin_align_top_tilde.exit:                    ; preds = %bb.ak
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !193 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.dq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !76
  %i.et = load i32, ptr %i.bh, align 4, !tbaa !191 ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i217, label %af_move_contours_down.exit

.lr.ph.i217:                                      ; preds = %af_latin_align_top_tilde.exit
  %i.ev = add nsw i64 %.0.i216, %i.do
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !194
  %sext.i218 = shl i64 %i.ev, 32
  %i.ey = ashr exact i64 %sext.i218, 32
  %wide.trip.count.i219 = zext nneg i32 %i.et to i64
  br label %bb.al

bb.al:                                            ; preds = %af_move_contour_vertically.exit.i, %.lr.ph.i217
  %indvars.iv.i220 = phi i64 [ 0, %.lr.ph.i217 ], [ %indvars.iv.next.i221, %af_move_contour_vertically.exit.i ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i220
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !76 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i220
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !76
  %i.fd = icmp slt i64 %i.fa, %i.fc
  %i.fe = icmp sgt i64 %i.fa, %i.es
  %or.cond.i = and i1 %i.fe, %i.fd
  br i1 %or.cond.i, label %bb.am, label %af_move_contour_vertically.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.val190, i64 %indvars.iv.i220
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !115 ; 3 uses
  %.not.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i, label %af_move_contour_vertically.exit.i, label %.preheader.i.i223

.preheader.i.i223:                                ; preds = %bb.am, %.preheader.i.i223
  %.0.i.i224 = phi ptr [ %i.fl, %.preheader.i.i223 ], [ %i.fg, %bb.am ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i224, i64 40 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !120
  %i.fj = add nsw i64 %i.fi, %i.ey
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !120
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i224, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !195 ; 2 uses
  %.not8.i.i225 = icmp eq ptr %i.fl, %i.fg
  br i1 %.not8.i.i225, label %af_move_contour_vertically.exit.i, label %.preheader.i.i223, !llvm.loop !3

af_move_contour_vertically.exit.i:                ; preds = %.preheader.i.i223, %bb.am, %bb.al
  %indvars.iv.next.i221 = add nuw nsw i64 %indvars.iv.i220, 1 ; 2 uses
  %exitcond.not.i222 = icmp eq i64 %indvars.iv.next.i221, %wide.trip.count.i219
  br i1 %exitcond.not.i222, label %af_move_contours_down.exit, label %bb.al, !llvm.loop !4

af_move_contours_down.exit:                       ; preds = %af_move_contour_vertically.exit.i, %af_compute_vertical_extrema.exit, %af_latin_align_top_tilde.exit
  br i1 %i.ai, label %bb.an, label %af_latin_align_top_tilde.exit293

bb.an:                                            ; preds = %af_move_contours_down.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !191 ; 4 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i274, label %af_find_highest_contour.exit

.lr.ph.i274:                                      ; preds = %bb.an
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !193 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !194 ; 3 uses
  %wide.trip.count.i275 = zext nneg i32 %i.fn to i64 ; 2 uses
  %xtraiter588 = and i64 %wide.trip.count.i275, 1
  %i.ft = icmp eq i32 %i.fn, 1
  br i1 %i.ft, label %.epil.preheader587, label %.lr.ph.i274.new

.lr.ph.i274.new:                                  ; preds = %.lr.ph.i274
  %unroll_iter592 = and i64 %wide.trip.count.i275, 2147483646
  br label %bb.ao

bb.ao:                                            ; preds = %bb.au, %.lr.ph.i274.new
  %indvars.iv.i276 = phi i64 [ 0, %.lr.ph.i274.new ], [ %indvars.iv.next.i279.1, %bb.au ] ; 5 uses
  %.01624.i = phi i64 [ -9223372036854775808, %.lr.ph.i274.new ], [ %.1.i278.1, %bb.au ] ; 3 uses
  %.01723.i = phi i64 [ 9223372036854775807, %.lr.ph.i274.new ], [ %.118.i.1, %bb.au ] ; 2 uses
  %.01922.i = phi i32 [ 0, %.lr.ph.i274.new ], [ %.120.i.1, %bb.au ]
  %niter593 = phi i64 [ 0, %.lr.ph.i274.new ], [ %niter593.next.1, %bb.au ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i276
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !76 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i276
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !76 ; 3 uses
  %i.fy = icmp sgt i64 %i.fx, %.01624.i
  br i1 %i.fy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fz = icmp eq i64 %i.fx, %.01624.i
  %i.ga = icmp sgt i64 %i.fv, %.01723.i
  %or.cond.i277 = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond.i277, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gb = trunc nuw nsw i64 %indvars.iv.i276 to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.120.i = phi i32 [ %i.gb, %bb.aq ], [ %.01922.i, %bb.ap ]
  %.118.i = phi i64 [ %i.fv, %bb.aq ], [ %.01723.i, %bb.ap ] ; 2 uses
  %.1.i278 = phi i64 [ %i.fx, %bb.aq ], [ %.01624.i, %bb.ap ] ; 3 uses
  %indvars.iv.next.i279 = or disjoint i64 %indvars.iv.i276, 1 ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i279
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !76 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.next.i279
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !76 ; 3 uses
  %i.gg = icmp sgt i64 %i.gf, %.1.i278
  br i1 %i.gg, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = icmp eq i64 %i.gf, %.1.i278
  %i.gi = icmp sgt i64 %i.gd, %.118.i
  %or.cond.i277.1 = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %or.cond.i277.1, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gj = trunc nuw nsw i64 %indvars.iv.next.i279 to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.120.i.1 = phi i32 [ %i.gj, %bb.at ], [ %.120.i, %bb.as ] ; 3 uses
  %.118.i.1 = phi i64 [ %i.gd, %bb.at ], [ %.118.i, %bb.as ] ; 2 uses
  %.1.i278.1 = phi i64 [ %i.gf, %bb.at ], [ %.1.i278, %bb.as ] ; 2 uses
  %indvars.iv.next.i279.1 = add nuw nsw i64 %indvars.iv.i276, 2 ; 2 uses
  %niter593.next.1 = add i64 %niter593, 2         ; 2 uses
  %niter593.ncmp.1 = icmp eq i64 %niter593.next.1, %unroll_iter592
  br i1 %niter593.ncmp.1, label %af_find_highest_contour.exit.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !370

af_find_highest_contour.exit.loopexit.unr-lcssa:  ; preds = %bb.au
  %lcmp.mod589.not = icmp eq i64 %xtraiter588, 0
  br i1 %lcmp.mod589.not, label %af_find_highest_contour.exit, label %.epil.preheader587

.epil.preheader587:                               ; preds = %af_find_highest_contour.exit.loopexit.unr-lcssa, %.lr.ph.i274
  %indvars.iv.i276.epil.init = phi i64 [ 0, %.lr.ph.i274 ], [ %indvars.iv.next.i279.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ] ; 3 uses
  %.01624.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i274 ], [ %.1.i278.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01723.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i274 ], [ %.118.i.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ]
  %.01922.i.epil.init = phi i32 [ 0, %.lr.ph.i274 ], [ %.120.i.1, %af_find_highest_contour.exit.loopexit.unr-lcssa ]
  %lcmp.mod591 = trunc i32 %i.fn to i1
  tail call void @llvm.assume(i1 %lcmp.mod591)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.i276.epil.init
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !76 ; 2 uses
  %i.gm = icmp sgt i64 %i.gl, %.01624.i.epil.init
  br i1 %i.gm, label %bb.aw, label %bb.av

end_hunk_0
begin_hunk_1_@af_latin_hints_apply:bb.a
  %brmerge.i = or i1 %.1256.i, %i.acu
  br i1 %brmerge.i, label %af_find_highest_contour.exit320.i, label %.lr.ph.i308.i.preheader

.lr.ph.i308.i.preheader:                          ; preds = %bb.fu
  %xtraiter628 = and i64 %wide.trip.count.i296.i, 1
  %i.acw = icmp eq i64 %i.abn, 0
  br i1 %i.acw, label %.lr.ph.i308.i.epil.preheader, label %.lr.ph.i308.i.preheader.new

.lr.ph.i308.i.preheader.new:                      ; preds = %.lr.ph.i308.i.preheader
  %unroll_iter632 = and i64 %wide.trip.count.i296.i, 4294967294
  br label %.lr.ph.i308.i

.lr.ph.i308.i:                                    ; preds = %bb.fz, %.lr.ph.i308.i.preheader.new
  %indvars.iv.i310.i = phi i64 [ 0, %.lr.ph.i308.i.preheader.new ], [ %indvars.iv.next.i318.i.1, %bb.fz ] ; 5 uses
  %.01624.i311.i = phi i64 [ -9223372036854775808, %.lr.ph.i308.i.preheader.new ], [ %.1.i317.i.1, %bb.fz ] ; 3 uses
  %.01723.i312.i = phi i64 [ 9223372036854775807, %.lr.ph.i308.i.preheader.new ], [ %.118.i316.i.1, %bb.fz ] ; 2 uses
  %.01922.i313.i = phi i32 [ 0, %.lr.ph.i308.i.preheader.new ], [ %.120.i315.i.1, %bb.fz ]
  %niter633 = phi i64 [ 0, %.lr.ph.i308.i.preheader.new ], [ %niter633.next.1, %bb.fz ]
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv.i310.i
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !76 ; 2 uses
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.i310.i
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !76 ; 3 uses
  %i.adb = icmp sgt i64 %i.ada, %.01624.i311.i
  br i1 %i.adb, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i308.i
  %i.adc = icmp eq i64 %i.ada, %.01624.i311.i
  %i.add = icmp sgt i64 %i.acy, %.01723.i312.i
  %or.cond.i314.i = select i1 %i.adc, i1 %i.add, i1 false
  br i1 %or.cond.i314.i, label %bb.fw, label %.lr.ph.i308.i.1

bb.fw:                                            ; preds = %bb.fv, %.lr.ph.i308.i
  %i.ade = trunc nuw nsw i64 %indvars.iv.i310.i to i32
  br label %.lr.ph.i308.i.1

.lr.ph.i308.i.1:                                  ; preds = %bb.fw, %bb.fv
  %.120.i315.i = phi i32 [ %i.ade, %bb.fw ], [ %.01922.i313.i, %bb.fv ]
  %.118.i316.i = phi i64 [ %i.acy, %bb.fw ], [ %.01723.i312.i, %bb.fv ] ; 2 uses
  %.1.i317.i = phi i64 [ %i.ada, %bb.fw ], [ %.01624.i311.i, %bb.fv ] ; 3 uses
  %indvars.iv.next.i318.i = or disjoint i64 %indvars.iv.i310.i, 1 ; 3 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv.next.i318.i
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !76 ; 2 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.next.i318.i
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !76 ; 3 uses
  %i.adj = icmp sgt i64 %i.adi, %.1.i317.i
  br i1 %i.adj, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.lr.ph.i308.i.1
  %i.adk = icmp eq i64 %i.adi, %.1.i317.i
  %i.adl = icmp sgt i64 %i.adg, %.118.i316.i
  %or.cond.i314.i.1 = select i1 %i.adk, i1 %i.adl, i1 false
  br i1 %or.cond.i314.i.1, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %.lr.ph.i308.i.1
  %i.adm = trunc nuw nsw i64 %indvars.iv.next.i318.i to i32
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.120.i315.i.1 = phi i32 [ %i.adm, %bb.fy ], [ %.120.i315.i, %bb.fx ] ; 3 uses
  %.118.i316.i.1 = phi i64 [ %i.adg, %bb.fy ], [ %.118.i316.i, %bb.fx ] ; 2 uses
  %.1.i317.i.1 = phi i64 [ %i.adi, %bb.fy ], [ %.1.i317.i, %bb.fx ] ; 2 uses
  %indvars.iv.next.i318.i.1 = add nuw nsw i64 %indvars.iv.i310.i, 2 ; 2 uses
  %niter633.next.1 = add i64 %niter633, 2         ; 2 uses
  %niter633.ncmp.1 = icmp eq i64 %niter633.next.1, %unroll_iter632
  br i1 %niter633.ncmp.1, label %af_find_highest_contour.exit320.i.loopexit.unr-lcssa, label %.lr.ph.i308.i, !llvm.loop !370

af_find_highest_contour.exit320.i.loopexit.unr-lcssa: ; preds = %bb.fz
  %lcmp.mod629.not = icmp eq i64 %xtraiter628, 0
  br i1 %lcmp.mod629.not, label %af_find_highest_contour.exit320.i.loopexit, label %.lr.ph.i308.i.epil.preheader

.lr.ph.i308.i.epil.preheader:                     ; preds = %af_find_highest_contour.exit320.i.loopexit.unr-lcssa, %.lr.ph.i308.i.preheader
  %indvars.iv.i310.i.epil.init = phi i64 [ 0, %.lr.ph.i308.i.preheader ], [ %indvars.iv.next.i318.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ] ; 3 uses
  %.01624.i311.i.epil.init = phi i64 [ -9223372036854775808, %.lr.ph.i308.i.preheader ], [ %.1.i317.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ] ; 2 uses
  %.01723.i312.i.epil.init = phi i64 [ 9223372036854775807, %.lr.ph.i308.i.preheader ], [ %.118.i316.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ]
  %.01922.i313.i.epil.init = phi i32 [ 0, %.lr.ph.i308.i.preheader ], [ %.120.i315.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ]
  %lcmp.mod631 = trunc i32 %i.aai to i1
  tail call void @llvm.assume(i1 %lcmp.mod631)
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.i310.i.epil.init
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !76 ; 2 uses
  %i.adp = icmp sgt i64 %i.ado, %.01624.i311.i.epil.init
  br i1 %i.adp, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph.i308.i.epil.preheader
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv.i310.i.epil.init
  %i.adr = load i64, ptr %i.adq, align 8, !tbaa !76
  %i.ads = icmp eq i64 %i.ado, %.01624.i311.i.epil.init
  %i.adt = icmp sgt i64 %i.adr, %.01723.i312.i.epil.init
  %or.cond.i314.i.epil = select i1 %i.ads, i1 %i.adt, i1 false
  br i1 %or.cond.i314.i.epil, label %bb.gb, label %af_find_highest_contour.exit320.i.loopexit

bb.gb:                                            ; preds = %bb.ga, %.lr.ph.i308.i.epil.preheader
  %i.adu = trunc nuw nsw i64 %indvars.iv.i310.i.epil.init to i32
  br label %af_find_highest_contour.exit320.i.loopexit

af_find_highest_contour.exit320.i.loopexit:       ; preds = %bb.ga, %bb.gb, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa
  %.120.i315.i.lcssa = phi i32 [ %.120.i315.i.1, %af_find_highest_contour.exit320.i.loopexit.unr-lcssa ], [ %i.adu, %bb.gb ], [ %.01922.i313.i.epil.init, %bb.ga ]
  %.pre477 = sext i32 %.120.i315.i.lcssa to i64   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.abe, i64 %.pre477
  %.pre478 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !76
  %.phi.trans.insert479 = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %.pre477
  %.pre480 = load i64, ptr %.phi.trans.insert479, align 8, !tbaa !76
  %.pre481 = sub i64 %.pre480, %.pre478
  br label %af_find_highest_contour.exit320.i

af_find_highest_contour.exit320.i:                ; preds = %af_find_highest_contour.exit320.i.loopexit, %bb.fu
  %.pre-phi482 = phi i64 [ %.pre481, %af_find_highest_contour.exit320.i.loopexit ], [ %i.abl, %bb.fu ] ; 3 uses
  %or.cond12.i = and i1 %.1254.i, %i.acs
  %spec.select.i388 = select i1 %or.cond12.i, i64 %i.abk, i64 %i.abh
  %.0239.i = add i64 %i.acq, %spec.select.i388
  %i.adv = and i64 %.0239.i, 63
  %i.adw = icmp eq i64 %i.adv, 0
  %i.adx = icmp slt i64 %.pre-phi482, 192
  %or.cond14.i = select i1 %i.adw, i1 %i.adx, i1 false
  br i1 %or.cond14.i, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %af_find_highest_contour.exit320.i
  %i.ady = add nsw i64 %.pre-phi482, 32
  %i.adz = and i64 %i.ady, -64
  %i.aea = sub nsw i64 %i.adz, %.pre-phi482
  %i.aeb = sdiv i64 %i.aea, 2
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %af_find_highest_contour.exit320.i, %._crit_edge.i387
  %.0240.i = phi i64 [ %i.aeb, %bb.gc ], [ 0, %af_find_highest_contour.exit320.i ], [ 0, %._crit_edge.i387 ] ; 2 uses
  %or.cond17.i = and i1 %.1256.i, %i.acs
  %or.cond20.i = and i1 %.1254.i, %i.acu
  %or.cond270.i = or i1 %or.cond17.i, %or.cond20.i
  %i.aec = select i1 %or.cond270.i, i64 %.0240.i, i64 0
  %.0241.i = add nsw i64 %i.aec, %i.acq           ; 3 uses
  %i.aed = icmp ne i64 %.0241.i, 0
  %i.aee = icmp sgt i64 %.0241.i, -3
  %or.cond22.i = and i1 %i.aed, %i.aee
  br i1 %or.cond22.i, label %bb.ge, label %bb.gi

bb.ge:                                            ; preds = %bb.gd
  %i.aef = icmp slt i64 %.0241.i, 67
  %i.aeg = icmp sgt i64 %.2244.i.lcssa, -3
  %or.cond24.i = select i1 %i.aef, i1 true, i1 %i.aeg
  br i1 %or.cond24.i, label %.lr.ph.i322.i, label %bb.gi

.lr.ph.i322.i:                                    ; preds = %bb.ge
  %.neg.i389 = sdiv i64 %i.abl, -8                ; 2 uses
  %i.aeh = add i64 %.neg.i389, %i.abh
  %sext.i.i = shl i64 %i.acq, 32
  %i.aei = ashr exact i64 %sext.i.i, 32
  br label %bb.gf

bb.gf:                                            ; preds = %af_move_contour_vertically.exit.i.i, %.lr.ph.i322.i
  %indvars.iv.i324.i = phi i64 [ 0, %.lr.ph.i322.i ], [ %indvars.iv.next.i326.i, %af_move_contour_vertically.exit.i.i ] ; 4 uses
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv.i324.i
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !76 ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv.i324.i
  %i.aem = load i64, ptr %i.ael, align 8, !tbaa !76
  %i.aen = icmp slt i64 %i.aek, %i.aem
  %i.aeo = icmp sgt i64 %i.aek, %i.aeh
  %or.cond.i325.i = and i1 %i.aeo, %i.aen
  br i1 %or.cond.i325.i, label %bb.gg, label %af_move_contour_vertically.exit.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aak, i64 %indvars.iv.i324.i
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aeq, null
  br i1 %.not.i.i.i, label %af_move_contour_vertically.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.gg, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.aev, %.preheader.i.i.i ], [ %i.aeq, %bb.gg ] ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  %i.aes = load i64, ptr %i.aer, align 8, !tbaa !120
  %i.aet = add nsw i64 %i.aes, %i.aei
  store i64 %i.aet, ptr %i.aer, align 8, !tbaa !120
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !195 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.aev, %i.aeq
  br i1 %.not8.i.i.i, label %af_move_contour_vertically.exit.i.i, label %.preheader.i.i.i, !llvm.loop !3

af_move_contour_vertically.exit.i.i:              ; preds = %.preheader.i.i.i, %bb.gg, %bb.gf
  %indvars.iv.next.i326.i = add nuw nsw i64 %indvars.iv.i324.i, 1 ; 2 uses
  %exitcond.not.i327.i = icmp eq i64 %indvars.iv.next.i326.i, %wide.trip.count.i296.i
  br i1 %exitcond.not.i327.i, label %af_move_contours_up.exit.i, label %bb.gf, !llvm.loop !4

af_move_contours_up.exit.i:                       ; preds = %af_move_contour_vertically.exit.i.i
  %or.cond27.i = and i1 %.1254.i, %i.acs
  br i1 %or.cond27.i, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %af_move_contours_up.exit.i
  %i.aew = add i64 %.neg.i389, %i.abk
  tail call fastcc void @af_move_contours_up(ptr noundef readonly %1, i64 noundef %i.aew, i64 noundef %.0240.i)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %af_move_contours_up.exit.i, %bb.ge, %bb.gd, %bb.el, %bb.ek
  br i1 %.1252.i, label %bb.gj, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.gj:                                            ; preds = %bb.gi
  %i.aex = load i32, ptr %i.ts, align 4, !tbaa !191 ; 4 uses
  %i.aey = icmp sgt i32 %i.aex, 1
  br i1 %i.aey, label %.lr.ph.i354.i, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

.lr.ph.i354.i:                                    ; preds = %bb.gj
  %i.aez = load ptr, ptr %i.tu, align 8, !tbaa !193 ; 7 uses
  %i.afa = load ptr, ptr %i.tv, align 8, !tbaa !194 ; 7 uses
  %wide.trip.count.i355.i = zext nneg i32 %i.aex to i64 ; 5 uses
  %xtraiter635 = and i64 %wide.trip.count.i355.i, 1
  %unroll_iter639 = and i64 %wide.trip.count.i355.i, 2147483646
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gq, %.lr.ph.i354.i
  %indvars.iv.i356.i = phi i64 [ 0, %.lr.ph.i354.i ], [ %indvars.iv.next.i364.i.1, %bb.gq ] ; 5 uses
  %.01624.i357.i = phi i64 [ -9223372036854775808, %.lr.ph.i354.i ], [ %.1.i363.i.1, %bb.gq ] ; 2 uses
  %.01723.i358.i = phi i64 [ 9223372036854775807, %.lr.ph.i354.i ], [ %.118.i362.i.1, %bb.gq ] ; 3 uses
  %.01922.i359.i = phi i32 [ 0, %.lr.ph.i354.i ], [ %.120.i361.i.1, %bb.gq ]
  %niter640 = phi i64 [ 0, %.lr.ph.i354.i ], [ %niter640.next.1, %bb.gq ]
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv.i356.i
  %i.afc = load i64, ptr %i.afb, align 8, !tbaa !76 ; 3 uses
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv.i356.i
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !76 ; 2 uses
  %i.aff = icmp slt i64 %i.afc, %.01723.i358.i
  br i1 %i.aff, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.afg = icmp eq i64 %i.afc, %.01723.i358.i
  %i.afh = icmp slt i64 %i.afe, %.01624.i357.i
  %or.cond.i360.i = select i1 %i.afg, i1 %i.afh, i1 false
  br i1 %or.cond.i360.i, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.afi = trunc nuw nsw i64 %indvars.iv.i356.i to i32
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.120.i361.i = phi i32 [ %i.afi, %bb.gm ], [ %.01922.i359.i, %bb.gl ]
  %.118.i362.i = phi i64 [ %i.afc, %bb.gm ], [ %.01723.i358.i, %bb.gl ] ; 3 uses
  %.1.i363.i = phi i64 [ %i.afe, %bb.gm ], [ %.01624.i357.i, %bb.gl ] ; 2 uses
  %indvars.iv.next.i364.i = or disjoint i64 %indvars.iv.i356.i, 1 ; 3 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv.next.i364.i
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !76 ; 3 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv.next.i364.i
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !76 ; 2 uses
  %i.afn = icmp slt i64 %i.afk, %.118.i362.i
  br i1 %i.afn, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.afo = icmp eq i64 %i.afk, %.118.i362.i
  %i.afp = icmp slt i64 %i.afm, %.1.i363.i
  %or.cond.i360.i.1 = select i1 %i.afo, i1 %i.afp, i1 false
  br i1 %or.cond.i360.i.1, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.afq = trunc nuw nsw i64 %indvars.iv.next.i364.i to i32
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.120.i361.i.1 = phi i32 [ %i.afq, %bb.gp ], [ %.120.i361.i, %bb.go ] ; 3 uses
  %.118.i362.i.1 = phi i64 [ %i.afk, %bb.gp ], [ %.118.i362.i, %bb.go ] ; 3 uses
  %.1.i363.i.1 = phi i64 [ %i.afm, %bb.gp ], [ %.1.i363.i, %bb.go ] ; 2 uses
  %indvars.iv.next.i364.i.1 = add nuw nsw i64 %indvars.iv.i356.i, 2 ; 4 uses
  %niter640.next.1 = add i64 %niter640, 2         ; 2 uses
  %niter640.ncmp.1 = icmp eq i64 %niter640.next.1, %unroll_iter639
  br i1 %niter640.ncmp.1, label %.lr.ph.i371.i.unr-lcssa, label %bb.gk, !llvm.loop !373

.lr.ph.i371.i.unr-lcssa:                          ; preds = %bb.gq
  %lcmp.mod636.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod636.not, label %.lr.ph.i371.i, label %.epil.preheader634

.epil.preheader634:                               ; preds = %.lr.ph.i371.i.unr-lcssa
  %lcmp.mod638 = trunc i32 %i.aex to i1
  tail call void @llvm.assume(i1 %lcmp.mod638)
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv.next.i364.i.1
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !76 ; 2 uses
  %i.aft = icmp slt i64 %i.afs, %.118.i362.i.1
  br i1 %i.aft, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %.epil.preheader634
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv.next.i364.i.1
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !76
  %i.afw = icmp eq i64 %i.afs, %.118.i362.i.1
  %i.afx = icmp slt i64 %i.afv, %.1.i363.i.1
  %or.cond.i360.i.epil = select i1 %i.afw, i1 %i.afx, i1 false
  br i1 %or.cond.i360.i.epil, label %bb.gs, label %.lr.ph.i371.i

bb.gs:                                            ; preds = %bb.gr, %.epil.preheader634
  %i.afy = trunc nuw nsw i64 %indvars.iv.next.i364.i.1 to i32
  br label %.lr.ph.i371.i

.lr.ph.i371.i:                                    ; preds = %bb.gr, %bb.gs, %.lr.ph.i371.i.unr-lcssa
  %.120.i361.i.lcssa = phi i32 [ %.120.i361.i.1, %.lr.ph.i371.i.unr-lcssa ], [ %i.afy, %bb.gs ], [ %.120.i361.i.1, %bb.gr ] ; 2 uses
  %i.afz = load ptr, ptr %i.tt, align 8, !tbaa !192
  %i.aga = zext i32 %.120.i361.i.lcssa to i64     ; 4 uses
  br label %bb.gt

bb.gt:                                            ; preds = %.loopexit.i386.i, %.lr.ph.i371.i
  %indvars.iv.i373.i = phi i64 [ 0, %.lr.ph.i371.i ], [ %indvars.iv.next.i391.i, %.loopexit.i386.i ] ; 3 uses
  %.03872.i374.i = phi i64 [ 9223372036854775807, %.lr.ph.i371.i ], [ %.4.i390.i, %.loopexit.i386.i ] ; 3 uses
  %.03971.i375.i = phi i64 [ -9223372036854775808, %.lr.ph.i371.i ], [ %.342.i389.i, %.loopexit.i386.i ] ; 3 uses
  %.04370.i376.i = phi i64 [ 9223372036854775807, %.lr.ph.i371.i ], [ %.447.i388.i, %.loopexit.i386.i ] ; 3 uses
  %.04869.i377.i = phi i64 [ -9223372036854775808, %.lr.ph.i371.i ], [ %.351.i387.i, %.loopexit.i386.i ] ; 3 uses
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.afz, i64 %indvars.iv.i373.i
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !115 ; 6 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 64
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !195
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 64
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !195
  %i.agh = icmp eq ptr %i.agg, %i.agc
  br i1 %i.agh, label %.loopexit.i386.i, label %.preheader.i378.i

.preheader.i378.i:                                ; preds = %bb.gt
  %i.agi = icmp eq i64 %indvars.iv.i373.i, %i.aga
  br i1 %i.agi, label %.preheader.split.us.i400.i, label %.preheader.split.i379.i

.preheader.split.us.i400.i:                       ; preds = %.preheader.i378.i, %.preheader.split.us.i400.i
  %.149.us.i401.i = phi i64 [ %spec.select64.us.i405.i, %.preheader.split.us.i400.i ], [ %.04869.i377.i, %.preheader.i378.i ]
  %.144.us.i402.i = phi i64 [ %spec.select.us.i404.i, %.preheader.split.us.i400.i ], [ %.04370.i376.i, %.preheader.i378.i ]
  %.0.us.i403.i = phi ptr [ %i.agk, %.preheader.split.us.i400.i ], [ %i.agc, %.preheader.i378.i ]
  %i.agj = getelementptr inbounds nuw i8, ptr %.0.us.i403.i, i64 64
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !195 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 32
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !117 ; 2 uses
  %spec.select.us.i404.i = tail call i64 @llvm.smin.i64(i64 %i.agm, i64 %.144.us.i402.i) ; 2 uses
  %spec.select64.us.i405.i = tail call i64 @llvm.smax.i64(i64 %i.agm, i64 %.149.us.i401.i) ; 2 uses
  %.not61.us.i406.i = icmp eq ptr %i.agk, %i.agc
  br i1 %.not61.us.i406.i, label %.loopexit.i386.i, label %.preheader.split.us.i400.i, !llvm.loop !383

.preheader.split.i379.i:                          ; preds = %.preheader.i378.i, %.preheader.split.i379.i
  %.140.i380.i = phi i64 [ %spec.select65.i384.i, %.preheader.split.i379.i ], [ %.03971.i375.i, %.preheader.i378.i ]
  %.1.i381.i = phi i64 [ %spec.select62.i383.i, %.preheader.split.i379.i ], [ %.03872.i374.i, %.preheader.i378.i ]
  %.0.i382.i = phi ptr [ %i.ago, %.preheader.split.i379.i ], [ %i.agc, %.preheader.i378.i ]
  %i.agn = getelementptr inbounds nuw i8, ptr %.0.i382.i, i64 64
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !195 ; 3 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 32
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !117 ; 2 uses
  %spec.select62.i383.i = tail call i64 @llvm.smin.i64(i64 %i.agq, i64 %.1.i381.i) ; 2 uses
  %spec.select65.i384.i = tail call i64 @llvm.smax.i64(i64 %i.agq, i64 %.140.i380.i) ; 2 uses
  %.not61.i385.i = icmp eq ptr %i.ago, %i.agc
  br i1 %.not61.i385.i, label %.loopexit.i386.i, label %.preheader.split.i379.i, !llvm.loop !383

.loopexit.i386.i:                                 ; preds = %.preheader.split.i379.i, %.preheader.split.us.i400.i, %bb.gt
  %.351.i387.i = phi i64 [ %.04869.i377.i, %bb.gt ], [ %spec.select64.us.i405.i, %.preheader.split.us.i400.i ], [ %.04869.i377.i, %.preheader.split.i379.i ] ; 4 uses
  %.447.i388.i = phi i64 [ %.04370.i376.i, %bb.gt ], [ %spec.select.us.i404.i, %.preheader.split.us.i400.i ], [ %.04370.i376.i, %.preheader.split.i379.i ] ; 4 uses
  %.342.i389.i = phi i64 [ %.03971.i375.i, %bb.gt ], [ %.03971.i375.i, %.preheader.split.us.i400.i ], [ %spec.select65.i384.i, %.preheader.split.i379.i ] ; 4 uses
  %.4.i390.i = phi i64 [ %.03872.i374.i, %bb.gt ], [ %.03872.i374.i, %.preheader.split.us.i400.i ], [ %spec.select62.i383.i, %.preheader.split.i379.i ] ; 4 uses
  %indvars.iv.next.i391.i = add nuw nsw i64 %indvars.iv.i373.i, 1 ; 2 uses
  %exitcond.not.i392.i = icmp eq i64 %indvars.iv.next.i391.i, %wide.trip.count.i355.i
  br i1 %exitcond.not.i392.i, label %._crit_edge.i393.i, label %bb.gt, !llvm.loop !384

._crit_edge.i393.i:                               ; preds = %.loopexit.i386.i
  %.not.i394.i = icmp sgt i64 %.4.i390.i, %.351.i387.i
  %.not58.i395.i = icmp sgt i64 %.351.i387.i, %.342.i389.i
  %or.cond.i396.i = select i1 %.not.i394.i, i1 true, i1 %.not58.i395.i
  br i1 %or.cond.i396.i, label %bb.gu, label %af_check_contour_horizontal_overlap.exit407.thread.i

bb.gu:                                            ; preds = %._crit_edge.i393.i
  %.not59.i397.i = icmp sgt i64 %.4.i390.i, %.447.i388.i
  %.not60.i398.i = icmp sgt i64 %.447.i388.i, %.342.i389.i
  %or.cond63.i399.i = select i1 %.not59.i397.i, i1 true, i1 %.not60.i398.i
  br i1 %or.cond63.i399.i, label %af_check_contour_horizontal_overlap.exit407.i, label %af_check_contour_horizontal_overlap.exit407.thread.i

af_check_contour_horizontal_overlap.exit407.i:    ; preds = %bb.gu
  %i.agr = icmp slt i64 %.351.i387.i, %.342.i389.i
  %i.ags = icmp sgt i64 %.447.i388.i, %.4.i390.i
  %.not420.i = select i1 %i.agr, i1 true, i1 %i.ags
  br i1 %.not420.i, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %af_check_contour_horizontal_overlap.exit407.thread.i

af_check_contour_horizontal_overlap.exit407.thread.i: ; preds = %af_check_contour_horizontal_overlap.exit407.i, %bb.gu, %._crit_edge.i393.i
  %i.agt = sext i32 %.120.i361.i.lcssa to i64     ; 2 uses
  %i.agu = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %i.agt
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !76
  %i.agw = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %i.agt
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !76 ; 9 uses
  %i.agy = sub i64 %i.agx, %i.agv                 ; 5 uses
  %i.agz = icmp sgt i64 %i.agy, %.1150
  br i1 %i.agz, label %af_glyph_hints_apply_vertical_separation_adjustments.exit, label %.lr.ph431.i.preheader

.lr.ph431.i.preheader:                            ; preds = %af_check_contour_horizontal_overlap.exit407.thread.i
  %xtraiter641 = and i64 %wide.trip.count.i355.i, 1
  %unroll_iter645 = and i64 %wide.trip.count.i355.i, 2147483646
  br label %.lr.ph431.i

.lr.ph431.i:                                      ; preds = %bb.gx, %.lr.ph431.i.preheader
  %indvars.iv440.i = phi i64 [ 0, %.lr.ph431.i.preheader ], [ %indvars.iv.next441.i.1, %bb.gx ] ; 5 uses
  %.0237430.i = phi i64 [ 64, %.lr.ph431.i.preheader ], [ %.2.i381.1, %bb.gx ] ; 3 uses
  %niter646 = phi i64 [ 0, %.lr.ph431.i.preheader ], [ %niter646.next.1, %bb.gx ]
  %i.aha = icmp eq i64 %indvars.iv440.i, %i.aga
  br i1 %i.aha, label %.lr.ph431.i.1, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph431.i
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv440.i
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !76
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv440.i
  %i.ahe = load i64, ptr %i.ahd, align 8, !tbaa !76
  %i.ahf = sub i64 %i.ahc, %i.agx                 ; 3 uses
  %i.ahg = icmp slt i64 %i.ahf, 64
  %i.ahh = icmp slt i64 %i.ahf, %.0237430.i
  %or.cond271.i = select i1 %i.ahg, i1 %i.ahh, i1 false
  %i.ahi = icmp sgt i64 %i.ahe, %i.agx
  %or.cond272.i = select i1 %or.cond271.i, i1 %i.ahi, i1 false
  %.1.i380 = select i1 %or.cond272.i, i64 %i.ahf, i64 %.0237430.i
  br label %.lr.ph431.i.1

.lr.ph431.i.1:                                    ; preds = %bb.gv, %.lr.ph431.i
  %.2.i381 = phi i64 [ %.1.i380, %bb.gv ], [ %.0237430.i, %.lr.ph431.i ] ; 3 uses
  %indvars.iv.next441.i = or disjoint i64 %indvars.iv440.i, 1 ; 3 uses
  %i.ahj = icmp eq i64 %indvars.iv.next441.i, %i.aga
  br i1 %i.ahj, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %.lr.ph431.i.1
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv.next441.i
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !76
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv.next441.i
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !76
  %i.aho = sub i64 %i.ahl, %i.agx                 ; 3 uses
  %i.ahp = icmp slt i64 %i.aho, 64
  %i.ahq = icmp slt i64 %i.aho, %.2.i381
  %or.cond271.i.1 = select i1 %i.ahp, i1 %i.ahq, i1 false
  %i.ahr = icmp sgt i64 %i.ahn, %i.agx
  %or.cond272.i.1 = select i1 %or.cond271.i.1, i1 %i.ahr, i1 false
  %.1.i380.1 = select i1 %or.cond272.i.1, i64 %i.aho, i64 %.2.i381
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.lr.ph431.i.1
  %.2.i381.1 = phi i64 [ %.1.i380.1, %bb.gw ], [ %.2.i381, %.lr.ph431.i.1 ] ; 5 uses
  %indvars.iv.next441.i.1 = add nuw nsw i64 %indvars.iv440.i, 2 ; 4 uses
  %niter646.next.1 = add i64 %niter646, 2         ; 2 uses
  %niter646.ncmp.1 = icmp eq i64 %niter646.next.1, %unroll_iter645
  br i1 %niter646.ncmp.1, label %._crit_edge432.i.unr-lcssa, label %.lr.ph431.i, !llvm.loop !386

._crit_edge432.i.unr-lcssa:                       ; preds = %bb.gx
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %._crit_edge432.i, label %.lr.ph431.i.epil.preheader

.lr.ph431.i.epil.preheader:                       ; preds = %._crit_edge432.i.unr-lcssa
  %lcmp.mod644 = trunc i32 %i.aex to i1
  tail call void @llvm.assume(i1 %lcmp.mod644)
  %i.ahs = icmp eq i64 %indvars.iv.next441.i.1, %i.aga
  br i1 %i.ahs, label %._crit_edge432.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph431.i.epil.preheader
  %i.aht = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %indvars.iv.next441.i.1
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !76
  %i.ahv = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv.next441.i.1
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !76
  %i.ahx = sub i64 %i.ahu, %i.agx                 ; 3 uses
  %i.ahy = icmp slt i64 %i.ahx, 64
  %i.ahz = icmp slt i64 %i.ahx, %.2.i381.1
  %or.cond271.i.epil = select i1 %i.ahy, i1 %i.ahz, i1 false
  %i.aia = icmp sgt i64 %i.ahw, %i.agx
  %or.cond272.i.epil = select i1 %or.cond271.i.epil, i1 %i.aia, i1 false
  %.1.i380.epil = select i1 %or.cond272.i.epil, i64 %i.ahx, i64 %.2.i381.1
  br label %._crit_edge432.i

._crit_edge432.i:                                 ; preds = %.lr.ph431.i.epil.preheader, %bb.gy, %._crit_edge432.i.unr-lcssa
  %.2.i381.lcssa = phi i64 [ %.2.i381.1, %._crit_edge432.i.unr-lcssa ], [ %.1.i380.epil, %bb.gy ], [ %.2.i381.1, %.lr.ph431.i.epil.preheader ] ; 2 uses
  %i.aib = sub nsw i64 64, %.2.i381.lcssa         ; 3 uses
  %i.aic = and i32 %.0248.i, 32
  %.not434.i = icmp eq i32 %i.aic, 0
  %i.aid = and i32 %.0248.i, 160
  %or.cond30.not.i = icmp eq i32 %i.aid, 0
  br i1 %or.cond30.not.i, label %bb.hb, label %bb.gz

bb.gz:                                            ; preds = %._crit_edge432.i
  %i.aie = sub i64 %i.agx, %i.aib
  %i.aif = and i64 %i.aie, 63
  %i.aig = icmp eq i64 %i.aif, 0
  %i.aih = icmp slt i64 %i.agy, 192
  %or.cond35.i = and i1 %i.aih, %i.aig
  br i1 %or.cond35.i, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aii = add nsw i64 %i.agy, 32
  %i.aij = and i64 %i.aii, -64
  %i.aik = sub nsw i64 %i.aij, %i.agy
  %i.ail = sdiv i64 %i.aik, 2
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz, %._crit_edge432.i
  %.0235.i = phi i64 [ %i.ail, %bb.ha ], [ 0, %bb.gz ], [ 0, %._crit_edge432.i ]
  %i.aim = select i1 %.not434.i, i64 0, i64 %.0235.i
  %.0236.i = add nsw i64 %i.aim, %i.aib           ; 3 uses
  %i.ain = icmp ne i64 %.0236.i, 0
  %i.aio = icmp sgt i64 %.0236.i, -3
  %or.cond43.i = and i1 %i.ain, %i.aio
  br i1 %or.cond43.i, label %bb.hc, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.hc:                                            ; preds = %bb.hb
  %i.aip = icmp slt i64 %.0236.i, 67
  %i.aiq = icmp sgt i64 %.2.i381.lcssa, -3
  %or.cond45.i = select i1 %i.aip, i1 true, i1 %i.aiq
  br i1 %or.cond45.i, label %bb.hd, label %af_glyph_hints_apply_vertical_separation_adjustments.exit

bb.hd:                                            ; preds = %bb.hc
  %i.air = sdiv i64 %i.agy, 8
  %i.ais = add i64 %i.air, %i.agx
  tail call fastcc void @af_move_contours_down(ptr noundef readonly %1, i64 noundef %i.ais, i64 noundef %i.aib)
  br label %af_glyph_hints_apply_vertical_separation_adjustments.exit

af_glyph_hints_apply_vertical_separation_adjustments.exit: ; preds = %bb.hd, %bb.hc, %bb.hb, %af_check_contour_horizontal_overlap.exit407.thread.i, %af_check_contour_horizontal_overlap.exit407.i, %bb.gj, %bb.gi, %af_check_contour_horizontal_overlap.exit.thread.i, %af_check_contour_horizontal_overlap.exit.i, %bb.dq, %af_glyph_hints_align_edge_points.exit
  br i1 %i.ty, label %bb.dp, label %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread, !llvm.loop !387

af_glyph_hints_apply_vertical_separation_adjustments.exit.thread: ; preds = %bb.du, %af_glyph_hints_apply_vertical_separation_adjustments.exit
  %i.ait = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.ait, align 4, !tbaa !121 ; 2 uses
  %i.aiu = getelementptr i8, ptr %1, i64 48
  %.val186 = load ptr, ptr %i.aiu, align 8, !tbaa !122 ; 2 uses
  %i.aiv = sext i32 %.val to i64
  %.idx.i406 = mul nuw nsw i64 %i.aiv, 80
  %i.aiw = getelementptr inbounds nuw i8, ptr %.val186, i64 %.idx.i406
  %i.aix = icmp sgt i32 %.val, 0
  br i1 %i.aix, label %.lr.ph.i408.preheader, label %af_latin_hints_compute_blue_edges.exit

.lr.ph.i408.preheader:                            ; preds = %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread
  %i.aiy = getelementptr i8, ptr %2, i64 16
  %.val188 = load ptr, ptr %i.aiy, align 8, !tbaa !124
  %i.aiz = getelementptr i8, ptr %2, i64 8
  %.val187 = load ptr, ptr %i.aiz, align 8, !tbaa !125
  br label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %.lr.ph.i408.preheader, %.lr.ph.i408
  %.03.i = phi ptr [ %i.aji, %.lr.ph.i408 ], [ %.val188, %.lr.ph.i408.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.ajh, %.lr.ph.i408 ], [ %.val187, %.lr.ph.i408.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.ajg, %.lr.ph.i408 ], [ %.val186, %.lr.ph.i408.preheader ] ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.ajb = load <2 x i64>, ptr %i.aja, align 8, !tbaa !76
  store <2 x i64> %i.ajb, ptr %.0192.i, align 8, !tbaa !76
  %i.ajc = load i16, ptr %.0201.i, align 8, !tbaa !118
  %i.ajd = zext i16 %i.ajc to i32                 ; 2 uses
  %i.aje = and i32 %i.ajd, 1
  %.not.i409 = icmp eq i32 %i.aje, 0
  %i.ajf = and i32 %i.ajd, 2
  %.not21.i = icmp eq i32 %i.ajf, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i409, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !68
  %i.ajg = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.aji = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.ajj = icmp ult ptr %i.ajg, %i.aiw
  br i1 %i.ajj, label %.lr.ph.i408, label %af_latin_hints_compute_blue_edges.exit, !llvm.loop !2

af_latin_hints_compute_blue_edges.exit:           ; preds = %.lr.ph.i408, %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread, %af_latin_ignore_bottom.exit360, %bb.a, %bb.c
  %.2 = phi i32 [ %i.a, %bb.a ], [ %i.kb, %af_latin_ignore_bottom.exit360 ], [ %i.h, %bb.c ], [ 0, %af_glyph_hints_apply_vertical_separation_adjustments.exit.thread ], [ 0, %.lr.ph.i408 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @af_autofitter_load_glyph(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %struct.AF_ScalerRec_, align 8      ; 11 uses
  %6 = alloca %struct.FT_Matrix_, align 8         ; 5 uses
  %7 = alloca %struct.FT_BBox_, align 16          ; 5 uses
  %8 = alloca %struct.FT_Vector_, align 16        ; 5 uses
  %9 = alloca [1 x %struct.AF_GlyphHintsRec_], align 16 ; 13 uses
  %10 = alloca [1 x %struct.AF_LoaderRec_], align 16 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5168) %i.d, i8 0, i64 5168, i1 false)
  store ptr %i.c, ptr %9, align 16, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.e, i8 0, i64 104, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.f, align 16, !tbaa !392
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !393  ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !210  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214  ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !394  ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !397  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !399  ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %._crit_edge269.i, label %bb.b

._crit_edge269.i:                                 ; preds = %bb.a
  %.pre270.i = lshr i32 %4, 16
  %.pre272.i = and i32 %.pre270.i, 15
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !400  ; 2 uses
  %i.w = lshr i32 %4, 16
  %i.x = and i32 %i.w, 15                         ; 2 uses
  %.not191.i = icmp eq i32 %i.v, %i.x
  br i1 %.not191.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge269.i
  %.pre-phi273.i = phi i32 [ %.pre272.i, %._crit_edge269.i ], [ %i.x, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %.pre-phi273.i, ptr %i.y, align 8, !tbaa !400
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false), !tbaa.struct !401
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !399
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi268.i = phi i32 [ %.pre-phi273.i, %bb.c ], [ %i.v, %bb.b ]
  %i.aa = phi i64 [ %.pre.i, %bb.c ], [ %i.t, %bb.b ]
  store ptr %i.h, ptr %5, align 8, !tbaa !150
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ac, align 8, !tbaa !402
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !403
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !149
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.ag, align 8, !tbaa !404
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i32 %.pre-phi268.i, ptr %i.ah, align 8, !tbaa !405
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.ai, align 4, !tbaa !215
  store ptr %i.h, ptr %10, align 16, !tbaa !406
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 216 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !216 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !217
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = call fastcc i32 @af_face_globals_new(ptr noundef nonnull %i.h, ptr noundef %i.al, ptr noundef nonnull %0) ; 2 uses
  %.not13.i.i = icmp eq i32 %i.am, 0
  br i1 %.not13.i.i, label %bb.f, label %af_loader_load_glyph.exit

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !217 ; 2 uses
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !216
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  store ptr @af_face_globals_free, ptr %i.ao, align 8, !tbaa !218
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ap = phi ptr [ %i.ak, %bb.d ], [ %i.an, %bb.f ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !171
  %.not.i214.i = icmp ult i32 %3, %i.ar
  br i1 %.not.i214.i, label %bb.h, label %af_face_globals_get_metrics.exit.thread233.i

bb.h:                                             ; preds = %bb.g
end_hunk_1
