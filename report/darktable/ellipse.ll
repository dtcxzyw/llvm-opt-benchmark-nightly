Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ellipse?download=true
inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_modify_property:bb.a
  %.not128 = icmp eq i32 %i.bs, 0
  %i.bt = select i1 %.not128, ptr @.str.9, ptr @.str.8
  %i.bu = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.bt) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bv = phi float [ %i.bk, %bb.h ], [ %i.bq, %bb.i ] ; 2 uses
  %i.bw = phi reassoc nsz arcp contract afn float [ %i.bm, %bb.h ], [ %i.bu, %bb.i ]
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.d ; 3 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bv, %i.z ; 3 uses
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.bx, %i.by
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bv, 1.000000e-03 ; 3 uses
  %i.cb = fcmp reassoc nsz arcp contract afn olt float %i.bx, %i.ca
  %. = select reassoc nsz arcp contract afn i1 %i.cb, float %i.ca, float %i.bx
  %i.cc = select reassoc nsz arcp contract afn i1 %i.bz, float %i.by, float %. ; 5 uses
  br i1 %.not122133137, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store float %i.cc, ptr %i.cd, align 4, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ce = load i32, ptr %i.w, align 8, !tbaa !27
  %i.cf = and i32 %i.ce, 136
  %.not129 = icmp eq i32 %i.cf, 0
  %i.cg = select i1 %.not129, ptr @.str.9, ptr @.str.8
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.cg, float noundef %i.cc) #12
  %i.ch = load float, ptr %4, align 4, !tbaa !26
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %i.cc
  store float %i.ci, ptr %4, align 4, !tbaa !26
  %i.cj = load float, ptr %7, align 4, !tbaa !26
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.by, %i.cc
  %i.cl = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cj, float %i.ck)
  store float %i.cl, ptr %7, align 4, !tbaa !26
  %i.cm = load float, ptr %6, align 4, !tbaa !26
  %i.cn = fdiv reassoc nsz arcp contract afn float %i.ca, %i.cc
  %i.co = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cm, float %i.cn)
  store float %i.co, ptr %6, align 4, !tbaa !26
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.cp = fsub reassoc nsz arcp contract afn float 3.600000e+02, %2
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %3 ; 2 uses
  br i1 %.not122133137, label %.thread141, label %bb.n

.thread141:                                       ; preds = %bb.m
  %i.cr = select i1 %.not125, ptr @.str.1, ptr @.str
  %i.cs = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.cr) #12
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cq, %i.cs
  %i.cu = frem reassoc nsz arcp contract afn float %i.ct, 3.600000e+02
  %.pre = load i32, ptr %i.w, align 8, !tbaa !27
  %.pre142 = and i32 %.pre, 136
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !31
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cq, %i.cw
  %i.cy = frem reassoc nsz arcp contract afn float %i.cx, 3.600000e+02 ; 2 uses
  store float %i.cy, ptr %i.cv, align 4, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %.thread141, %bb.n
  %.pre-phi = phi i32 [ %.pre142, %.thread141 ], [ %i.y, %bb.n ]
  %i.cz = phi float [ %i.cu, %.thread141 ], [ %i.cy, %bb.n ] ; 2 uses
  %.not126 = icmp eq i32 %.pre-phi, 0
  %i.da = select i1 %.not126, ptr @.str.1, ptr @.str
  tail call void @dt_conf_set_float(ptr noundef nonnull %i.da, float noundef %i.cz) #12
  %i.db = load float, ptr %4, align 4, !tbaa !26
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, %i.cz
  store float %i.dc, ptr %4, align 4, !tbaa !26
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.l, %bb.o
  %i.dd = load i32, ptr %5, align 4, !tbaa !32
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %5, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ellipse_duplicate_points(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %.010 = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !23
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.012 = phi ptr [ %.0, %.lr.ph ], [ %.010, %.lr.ph.preheader ] ; 2 uses
  %i.b = load ptr, ptr %.012, align 8, !tbaa !25
  %i.c = tail call noalias dereferenceable_or_null(28) ptr @malloc(i64 noundef 28) #13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, ptr noundef nonnull align 4 dereferenceable(28) %i.b, i64 28, i1 false)
  %i.d = tail call ptr @g_list_append(ptr noundef %i.a, ptr noundef nonnull %i.c) #12 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %.0 = load ptr, ptr %i.e, align 8, !tbaa !33    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define internal void @_ellipse_initial_source_pos(float noundef %0, float noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) #0 {
bb.a:
  %i.a = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.4) #12
  %i.b = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.6) #12
  %i.c = fmul reassoc nsz arcp contract afn float %i.a, %0
  store float %i.c, ptr %2, align 4, !tbaa !26
  %i.d = fneg reassoc nsz arcp contract afn float %1
  %i.e = fmul reassoc nsz arcp contract afn float %i.b, %i.d
  store float %i.e, ptr %3, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ellipse_get_distance(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr noundef initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef captures(none) initializes((0, 4)) %10) #0 {
bb.a:
  store float f0x7F7FFFFF, ptr %10, align 4, !tbaa !26
  store i32 0, ptr %6, align 4, !tbaa !32
  store i32 0, ptr %7, align 4, !tbaa !32
  store i32 0, ptr %9, align 4, !tbaa !32
  store i32 -1, ptr %8, align 4, !tbaa !32
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !34
  %i.b = tail call ptr @g_list_nth_data(ptr noundef %i.a, i32 noundef %4) #12 ; 6 uses
  %.not69 = icmp eq ptr %i.b, null
  br i1 %.not69, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 10
  br i1 %i.e, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 10 uses
  %i.i = shl nuw i32 %i.d, 1
  %i.j = add i32 %i.i, -12
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %.val20.i = load float, ptr %i.l, align 4, !tbaa !26 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val21.i = load float, ptr %i.m, align 4, !tbaa !26 ; 5 uses
  %.val22.i = load float, ptr %i.h, align 4, !tbaa !26 ; 4 uses
  %i.n = getelementptr i8, ptr %i.g, i64 44
  %.val23.i = load float, ptr %i.n, align 4, !tbaa !26 ; 4 uses
  %i.o = fcmp reassoc nsz arcp contract afn oeq float %1, %.val21.i
  %i.p = fcmp reassoc nsz arcp contract afn oeq float %.val21.i, %.val23.i
  %or.cond.i.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = fcmp reassoc nsz arcp contract afn ugt float %.val20.i, %0
  %i.r = fcmp reassoc nsz arcp contract afn ugt float %0, %.val22.i
  %or.cond56.i.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond56.i.i, label %bb.f, label %iter.check

bb.f:                                             ; preds = %bb.e
  %i.s = fcmp reassoc nsz arcp contract afn ugt float %.val22.i, %0
  %i.t = fcmp reassoc nsz arcp contract afn ugt float %0, %.val20.i
  %or.cond57.i.i = select i1 %i.s, i1 true, i1 %i.t
  %spec.select.i.neg.i = sext i1 %or.cond57.i.i to i32
  br label %iter.check

bb.g:                                             ; preds = %bb.d
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %.val21.i, %.val23.i
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.047.i.i = phi nsz float [ %.val22.i, %bb.h ], [ %.val20.i, %bb.g ] ; 2 uses
  %.046.i.i = phi nsz float [ %.val23.i, %bb.h ], [ %.val21.i, %bb.g ] ; 3 uses
  %.045.i.i = phi nsz float [ %.val20.i, %bb.h ], [ %.val22.i, %bb.g ]
  %.044.i.i = phi nsz float [ %.val21.i, %bb.h ], [ %.val23.i, %bb.g ] ; 2 uses
  %i.v = fcmp reassoc nsz arcp contract afn oeq float %1, %.046.i.i
  %i.w = fcmp reassoc nsz arcp contract afn oeq float %0, %.047.i.i
  %or.cond58.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond58.i.i, label %iter.check, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = fcmp reassoc nsz arcp contract afn ole float %1, %.046.i.i
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %1, %.044.i.i
  %or.cond59.i.i = or i1 %i.x, %i.y
  br i1 %or.cond59.i.i, label %iter.check, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = fsub reassoc nsz arcp contract afn float %.047.i.i, %0
  %i.aa = fsub reassoc nsz arcp contract afn float %.044.i.i, %1
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = fsub reassoc nsz arcp contract afn float %.046.i.i, %1
  %i.ad = fsub reassoc nsz arcp contract afn float %.045.i.i, %0
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.ac
  %i.af = fsub reassoc nsz arcp contract afn float %i.ab, %i.ae ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt float %i.af, 0.000000e+00
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.af, 0.000000e+00
  %..i.neg.i = sext i1 %i.ah to i32
  %.0.i.neg.i = select i1 %i.ag, i32 1, i32 %..i.neg.i
  br label %iter.check

iter.check:                                       ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  %.1.i.neg.i = phi i32 [ %.0.i.neg.i, %bb.k ], [ -1, %bb.j ], [ 0, %bb.e ], [ 0, %bb.i ], [ %spec.select.i.neg.i, %bb.f ] ; 3 uses
  %i.ai = add nsw i32 %i.d, -7                    ; 3 uses
  %wide.trip.count.i = zext i32 %i.ai to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.ai, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i32 %i.ai, 16
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  %i.ak = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %.1.i.neg.i, i64 0
  %broadcast.splatinsert = insertelement <8 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 12 uses
  %broadcast.splatinsert81 = insertelement <8 x float> poison, float %0, i64 0
  %broadcast.splat82 = shufflevector <8 x float> %broadcast.splatinsert81, <8 x float> poison, <8 x i32> zeroinitializer ; 14 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i32> [ %i.ak, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi83 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %i.dh, %vector.body ]
  %i.al = shl nuw nsw i64 %index, 3
  %i.am = shl i64 %index, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = shl i64 %index, 3
  %i.ar = shl i64 %index, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %wide.vec = load <16 x float>, ptr %i.an, align 4, !tbaa !26 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec84 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %wide.vec85 = load <16 x float>, ptr %i.ap, align 4, !tbaa !26 ; 2 uses
  %strided.vec86 = shufflevector <16 x float> %wide.vec85, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec87 = shufflevector <16 x float> %wide.vec85, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %wide.vec88 = load <16 x float>, ptr %i.at, align 4, !tbaa !26 ; 2 uses
  %strided.vec89 = shufflevector <16 x float> %wide.vec88, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec90 = shufflevector <16 x float> %wide.vec88, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %wide.vec91 = load <16 x float>, ptr %i.av, align 4, !tbaa !26 ; 2 uses
  %strided.vec92 = shufflevector <16 x float> %wide.vec91, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec93 = shufflevector <16 x float> %wide.vec91, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.aw = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat, %strided.vec84
  %i.ax = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat, %strided.vec87
  %i.ay = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec84, %strided.vec90
  %i.az = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec87, %strided.vec93
  %i.ba = select <8 x i1> %i.aw, <8 x i1> %i.ay, <8 x i1> zeroinitializer ; 3 uses
  %i.bb = select <8 x i1> %i.ax, <8 x i1> %i.az, <8 x i1> zeroinitializer ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec84, %strided.vec90 ; 4 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec87, %strided.vec93 ; 4 uses
  %predphi = select nsz <8 x i1> %i.bc, <8 x float> %strided.vec89, <8 x float> %strided.vec ; 2 uses
  %predphi94 = select nsz <8 x i1> %i.bd, <8 x float> %strided.vec92, <8 x float> %strided.vec86 ; 2 uses
  %predphi95 = select nsz <8 x i1> %i.bc, <8 x float> %strided.vec90, <8 x float> %strided.vec84 ; 3 uses
  %predphi96 = select nsz <8 x i1> %i.bd, <8 x float> %strided.vec93, <8 x float> %strided.vec87 ; 3 uses
  %predphi97 = select nsz <8 x i1> %i.bc, <8 x float> %strided.vec, <8 x float> %strided.vec89
  %predphi98 = select nsz <8 x i1> %i.bd, <8 x float> %strided.vec86, <8 x float> %strided.vec92
  %predphi99 = select nsz <8 x i1> %i.bc, <8 x float> %strided.vec84, <8 x float> %strided.vec90 ; 2 uses
  %predphi100 = select nsz <8 x i1> %i.bd, <8 x float> %strided.vec87, <8 x float> %strided.vec93 ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat, %predphi95
  %i.bf = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat, %predphi96
  %i.bg = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat82, %predphi
  %i.bh = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat82, %predphi94
  %i.bi = select <8 x i1> %i.be, <8 x i1> %i.bg, <8 x i1> zeroinitializer ; 2 uses
  %i.bj = select <8 x i1> %i.bf, <8 x i1> %i.bh, <8 x i1> zeroinitializer ; 2 uses
  %i.bk = select <8 x i1> %i.ba, <8 x i1> splat (i1 true), <8 x i1> %i.bi
  %i.bl = select <8 x i1> %i.bb, <8 x i1> splat (i1 true), <8 x i1> %i.bj
  %i.bm = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat, %predphi95
  %i.bn = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat, %predphi96
  %i.bo = fcmp reassoc nsz arcp contract afn ule <8 x float> %broadcast.splat, %predphi99
  %i.bp = fcmp reassoc nsz arcp contract afn ule <8 x float> %broadcast.splat, %predphi100
  %.not134 = and <8 x i1> %i.bm, %i.bo
  %.not139 = and <8 x i1> %i.bn, %i.bp
  %i.bq = fsub reassoc nsz arcp contract afn <8 x float> %predphi, %broadcast.splat82
  %i.br = fsub reassoc nsz arcp contract afn <8 x float> %predphi94, %broadcast.splat82
  %i.bs = fsub reassoc nsz arcp contract afn <8 x float> %predphi99, %broadcast.splat
  %i.bt = fsub reassoc nsz arcp contract afn <8 x float> %predphi100, %broadcast.splat
  %i.bu = fmul reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bq
  %i.bv = fmul reassoc nsz arcp contract afn <8 x float> %i.bt, %i.br
  %i.bw = fsub reassoc nsz arcp contract afn <8 x float> %predphi95, %broadcast.splat
  %i.bx = fsub reassoc nsz arcp contract afn <8 x float> %predphi96, %broadcast.splat
  %i.by = fsub reassoc nsz arcp contract afn <8 x float> %predphi97, %broadcast.splat82
  %i.bz = fsub reassoc nsz arcp contract afn <8 x float> %predphi98, %broadcast.splat82
  %i.ca = fmul reassoc nsz arcp contract afn <8 x float> %i.by, %i.bw
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, %i.bx
  %i.cc = fsub reassoc nsz arcp contract afn <8 x float> %i.bu, %i.ca ; 2 uses
  %i.cd = fsub reassoc nsz arcp contract afn <8 x float> %i.bv, %i.cb ; 2 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cc, zeroinitializer
  %i.cf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cd, zeroinitializer
  %i.cg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cc, zeroinitializer
  %i.ch = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cd, zeroinitializer
  %i.ci = zext <8 x i1> %i.cg to <8 x i32>
  %i.cj = zext <8 x i1> %i.ch to <8 x i32>
  %i.ck = select <8 x i1> %i.ce, <8 x i32> splat (i32 -1), <8 x i32> %i.ci
  %i.cl = select <8 x i1> %i.cf, <8 x i32> splat (i32 -1), <8 x i32> %i.cj
  %i.cm = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec, %broadcast.splat82
  %i.cn = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec86, %broadcast.splat82
  %i.co = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat82, %strided.vec89
  %i.cp = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat82, %strided.vec92
  %i.cq = select <8 x i1> %i.cm, <8 x i1> splat (i1 true), <8 x i1> %i.co ; 2 uses
  %i.cr = select <8 x i1> %i.cn, <8 x i1> splat (i1 true), <8 x i1> %i.cp ; 2 uses
  %i.cs = select <8 x i1> %i.ba, <8 x i1> %i.cq, <8 x i1> zeroinitializer
  %i.ct = select <8 x i1> %i.bb, <8 x i1> %i.cr, <8 x i1> zeroinitializer
  %i.cu = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec89, %broadcast.splat82
  %i.cv = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec92, %broadcast.splat82
  %i.cw = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat82, %strided.vec
  %i.cx = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat82, %strided.vec86
  %i.cy = select <8 x i1> %i.cu, <8 x i1> splat (i1 true), <8 x i1> %i.cw
  %i.cz = select <8 x i1> %i.cv, <8 x i1> splat (i1 true), <8 x i1> %i.cx
  %i.da = zext <8 x i1> %i.cy to <8 x i32>
  %i.db = zext <8 x i1> %i.cz to <8 x i32>
  %i.dc = xor <8 x i1> %i.cq, splat (i1 true)
  %i.dd = xor <8 x i1> %i.cr, splat (i1 true)
  %.not131 = select <8 x i1> %i.bk, <8 x i1> splat (i1 true), <8 x i1> %.not134
  %.not136 = select <8 x i1> %i.bl, <8 x i1> splat (i1 true), <8 x i1> %.not139
  %i.de = select <8 x i1> %i.ba, <8 x i1> %i.dc, <8 x i1> %i.bi
  %i.df = select <8 x i1> %i.bb, <8 x i1> %i.dd, <8 x i1> %i.bj
  %predphi101 = select <8 x i1> %.not131, <8 x i32> %i.ck, <8 x i32> splat (i32 1)
  %predphi102 = select <8 x i1> %i.de, <8 x i32> zeroinitializer, <8 x i32> %predphi101
  %predphi103 = select <8 x i1> %i.cs, <8 x i32> %i.da, <8 x i32> %predphi102
  %predphi104 = select <8 x i1> %.not136, <8 x i32> %i.cl, <8 x i32> splat (i32 1)
  %predphi105 = select <8 x i1> %i.df, <8 x i32> zeroinitializer, <8 x i32> %predphi104
  %predphi106 = select <8 x i1> %i.ct, <8 x i32> %i.db, <8 x i32> %predphi105
  %i.dg = mul <8 x i32> %predphi103, %vec.phi     ; 2 uses
  %i.dh = mul <8 x i32> %predphi106, %vec.phi83   ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i32> %i.dh, %i.dg
  %i.dj = tail call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ellipse_point_in_polygon.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !181

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.dj, %vec.epilog.iter.check ], [ %.1.i.neg.i, %vector.main.loop.iter.check ]
  %n.vec107 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  %i.dk = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx, i64 0
  %broadcast.splatinsert108 = insertelement <8 x float> poison, float %1, i64 0
  %broadcast.splat109 = shufflevector <8 x float> %broadcast.splatinsert108, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert110 = insertelement <8 x float> poison, float %0, i64 0
  %broadcast.splat111 = shufflevector <8 x float> %broadcast.splatinsert110, <8 x float> poison, <8 x i32> zeroinitializer ; 7 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi113 = phi <8 x i32> [ %i.dk, %vec.epilog.ph ], [ %i.ev, %vec.epilog.vector.body ]
  %i.dl = shl nuw nsw i64 %index112, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dl
  %i.dn = shl i64 %index112, 3
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %wide.vec114 = load <16 x float>, ptr %i.dm, align 4, !tbaa !26 ; 2 uses
  %strided.vec115 = shufflevector <16 x float> %wide.vec114, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec116 = shufflevector <16 x float> %wide.vec114, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 5 uses
  %wide.vec117 = load <16 x float>, ptr %i.dp, align 4, !tbaa !26 ; 2 uses
  %strided.vec118 = shufflevector <16 x float> %wide.vec117, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 4 uses
  %strided.vec119 = shufflevector <16 x float> %wide.vec117, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 4 uses
  %i.dq = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat109, %strided.vec116
  %i.dr = fcmp reassoc nsz arcp contract afn oeq <8 x float> %strided.vec116, %strided.vec119
  %i.ds = select <8 x i1> %i.dq, <8 x i1> %i.dr, <8 x i1> zeroinitializer ; 3 uses
  %i.dt = fcmp reassoc nsz arcp contract afn ogt <8 x float> %strided.vec116, %strided.vec119 ; 4 uses
  %predphi120 = select nsz <8 x i1> %i.dt, <8 x float> %strided.vec118, <8 x float> %strided.vec115 ; 2 uses
  %predphi121 = select nsz <8 x i1> %i.dt, <8 x float> %strided.vec119, <8 x float> %strided.vec116 ; 3 uses
  %predphi122 = select nsz <8 x i1> %i.dt, <8 x float> %strided.vec115, <8 x float> %strided.vec118
  %predphi123 = select nsz <8 x i1> %i.dt, <8 x float> %strided.vec116, <8 x float> %strided.vec119 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat109, %predphi121
  %i.dv = fcmp reassoc nsz arcp contract afn oeq <8 x float> %broadcast.splat111, %predphi120
  %i.dw = select <8 x i1> %i.du, <8 x i1> %i.dv, <8 x i1> zeroinitializer ; 2 uses
  %i.dx = select <8 x i1> %i.ds, <8 x i1> splat (i1 true), <8 x i1> %i.dw
  %i.dy = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat109, %predphi121
  %i.dz = fcmp reassoc nsz arcp contract afn ule <8 x float> %broadcast.splat109, %predphi123
  %.not144 = and <8 x i1> %i.dy, %i.dz
  %i.ea = fsub reassoc nsz arcp contract afn <8 x float> %predphi120, %broadcast.splat111
  %i.eb = fsub reassoc nsz arcp contract afn <8 x float> %predphi123, %broadcast.splat109
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %i.eb, %i.ea
  %i.ed = fsub reassoc nsz arcp contract afn <8 x float> %predphi121, %broadcast.splat109
  %i.ee = fsub reassoc nsz arcp contract afn <8 x float> %predphi122, %broadcast.splat111
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ed
  %i.eg = fsub reassoc nsz arcp contract afn <8 x float> %i.ec, %i.ef ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.eg, zeroinitializer
  %i.ei = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.eg, zeroinitializer
  %i.ej = zext <8 x i1> %i.ei to <8 x i32>
  %i.ek = select <8 x i1> %i.eh, <8 x i32> splat (i32 -1), <8 x i32> %i.ej
  %i.el = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec115, %broadcast.splat111
  %i.em = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat111, %strided.vec118
  %i.en = select <8 x i1> %i.el, <8 x i1> splat (i1 true), <8 x i1> %i.em ; 2 uses
  %i.eo = select <8 x i1> %i.ds, <8 x i1> %i.en, <8 x i1> zeroinitializer
  %i.ep = fcmp reassoc nsz arcp contract afn ugt <8 x float> %strided.vec118, %broadcast.splat111
  %i.eq = fcmp reassoc nsz arcp contract afn ugt <8 x float> %broadcast.splat111, %strided.vec115
  %i.er = select <8 x i1> %i.ep, <8 x i1> splat (i1 true), <8 x i1> %i.eq
  %i.es = zext <8 x i1> %i.er to <8 x i32>
  %i.et = xor <8 x i1> %i.en, splat (i1 true)
  %.not141 = select <8 x i1> %i.dx, <8 x i1> splat (i1 true), <8 x i1> %.not144
  %i.eu = select <8 x i1> %i.ds, <8 x i1> %i.et, <8 x i1> %i.dw
  %predphi124 = select <8 x i1> %.not141, <8 x i32> %i.ek, <8 x i32> splat (i32 1)
  %predphi125 = select <8 x i1> %i.eu, <8 x i32> zeroinitializer, <8 x i32> %predphi124
  %predphi126 = select <8 x i1> %i.eo, <8 x i32> %i.es, <8 x i32> %predphi125
  %i.ev = mul <8 x i32> %predphi126, %vec.phi113  ; 2 uses
  %index.next127 = add nuw i64 %index112, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next127, %n.vec107
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !179

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ex = tail call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %i.ev) ; 2 uses
  %cmp.n128 = icmp eq i64 %n.vec107, %wide.trip.count.i
  br i1 %cmp.n128, label %_ellipse_point_in_polygon.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec107, %vec.epilog.middle.block ]
  %.01638.i.ph = phi i32 [ %.1.i.neg.i, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ellipse_cross_test.exit37.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ellipse_cross_test.exit37.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01638.i = phi i32 [ %i.fw, %_ellipse_cross_test.exit37.i ], [ %.01638.i.ph, %.lr.ph.i.preheader ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %.idx41.i = shl nuw nsw i64 %indvars.iv.next.i, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx41.i ; 2 uses
  %.val.i = load float, ptr %i.ey, align 4, !tbaa !26 ; 4 uses
  %i.fa = getelementptr i8, ptr %i.ey, i64 4
  %.val17.i = load float, ptr %i.fa, align 4, !tbaa !26 ; 5 uses
  %.val18.i = load float, ptr %i.ez, align 4, !tbaa !26 ; 4 uses
  %i.fb = getelementptr i8, ptr %i.ez, i64 4
  %.val19.i = load float, ptr %i.fb, align 4, !tbaa !26 ; 4 uses
  %i.fc = fcmp reassoc nsz arcp contract afn oeq float %1, %.val17.i
  %i.fd = fcmp reassoc nsz arcp contract afn oeq float %.val17.i, %.val19.i
  %or.cond.i24.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i24.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i
  %i.fe = fcmp reassoc nsz arcp contract afn ugt float %.val.i, %0
  %i.ff = fcmp reassoc nsz arcp contract afn ugt float %0, %.val18.i
  %or.cond56.i34.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond56.i34.i, label %bb.m, label %_ellipse_cross_test.exit37.i

bb.m:                                             ; preds = %bb.l
  %i.fg = fcmp reassoc nsz arcp contract afn ugt float %.val18.i, %0
  %i.fh = fcmp reassoc nsz arcp contract afn ugt float %0, %.val.i
  %or.cond57.i35.i = select i1 %i.fg, i1 true, i1 %i.fh
  %spec.select.i36.i = zext i1 %or.cond57.i35.i to i32
  br label %_ellipse_cross_test.exit37.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.fi = fcmp reassoc nsz arcp contract afn ogt float %.val17.i, %.val19.i
  br i1 %i.fi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.047.i25.i = phi nsz float [ %.val18.i, %bb.o ], [ %.val.i, %bb.n ] ; 2 uses
  %.046.i26.i = phi nsz float [ %.val19.i, %bb.o ], [ %.val17.i, %bb.n ] ; 3 uses
  %.045.i27.i = phi nsz float [ %.val.i, %bb.o ], [ %.val18.i, %bb.n ]
  %.044.i28.i = phi nsz float [ %.val17.i, %bb.o ], [ %.val19.i, %bb.n ] ; 2 uses
  %i.fj = fcmp reassoc nsz arcp contract afn oeq float %1, %.046.i26.i
  %i.fk = fcmp reassoc nsz arcp contract afn oeq float %0, %.047.i25.i
  %or.cond58.i29.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond58.i29.i, label %_ellipse_cross_test.exit37.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = fcmp reassoc nsz arcp contract afn ole float %1, %.046.i26.i
  %i.fm = fcmp reassoc nsz arcp contract afn ogt float %1, %.044.i28.i
  %or.cond59.i30.i = or i1 %i.fl, %i.fm
  br i1 %or.cond59.i30.i, label %_ellipse_cross_test.exit37.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fn = fsub reassoc nsz arcp contract afn float %.047.i25.i, %0
  %i.fo = fsub reassoc nsz arcp contract afn float %.044.i28.i, %1
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fo, %i.fn
  %i.fq = fsub reassoc nsz arcp contract afn float %.046.i26.i, %1
  %i.fr = fsub reassoc nsz arcp contract afn float %.045.i27.i, %0
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.fq
  %i.ft = fsub reassoc nsz arcp contract afn float %i.fp, %i.fs ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.ft, 0.000000e+00
  %i.fv = fcmp reassoc nsz arcp contract afn olt float %i.ft, 0.000000e+00
  %..i31.i = zext i1 %i.fv to i32
  %.0.i32.i = select i1 %i.fu, i32 -1, i32 %..i31.i
  br label %_ellipse_cross_test.exit37.i

_ellipse_cross_test.exit37.i:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.m, %bb.l
  %.1.i33.i = phi i32 [ %.0.i32.i, %bb.r ], [ 1, %bb.q ], [ 0, %bb.l ], [ 0, %bb.p ], [ %spec.select.i36.i, %bb.m ]
  %i.fw = mul nsw i32 %.1.i33.i, %.01638.i        ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ellipse_point_in_polygon.exit, label %.lr.ph.i, !llvm.loop !180

_ellipse_point_in_polygon.exit:                   ; preds = %_ellipse_cross_test.exit37.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.ex, %vec.epilog.middle.block ], [ %i.dj, %middle.block ], [ %i.fw, %_ellipse_cross_test.exit37.i ]
  %i.fx = icmp sgt i32 %.lcssa, -1
  br i1 %i.fx, label %.loopexit.loopexit, label %bb.s

.loopexit.loopexit:                               ; preds = %_ellipse_point_in_polygon.exit
  store i32 1, ptr %9, align 4, !tbaa !32
  store i32 1, ptr %6, align 4, !tbaa !32
  store i32 0, ptr %7, align 4, !tbaa !32
  store i32 -1, ptr %8, align 4, !tbaa !32
  %.promoted73 = load float, ptr %10, align 4, !tbaa !26
  %i.fy = load float, ptr %i.g, align 4, !tbaa !26
  %i.fz = fsub reassoc nsz arcp contract afn float %0, %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !26
  %i.gc = fsub reassoc nsz arcp contract afn float %1, %i.gb ; 2 uses
  %i.gd = fmul reassoc nsz arcp contract afn float %i.fz, %i.fz
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gc, %i.gc
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.gd
  %i.gg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.promoted73, float %i.gf) ; 2 uses
  store float %i.gg, ptr %10, align 4, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !26
  %i.gj = fsub reassoc nsz arcp contract afn float %0, %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !26
  %i.gm = fsub reassoc nsz arcp contract afn float %1, %i.gl ; 2 uses
  %i.gn = fmul reassoc nsz arcp contract afn float %i.gj, %i.gj
  %i.go = fmul reassoc nsz arcp contract afn float %i.gm, %i.gm
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.gn
  %i.gq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gg, float %i.gp) ; 2 uses
  store float %i.gq, ptr %10, align 4, !tbaa !26
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !26
  %i.gt = fsub reassoc nsz arcp contract afn float %0, %i.gs ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !26
  %i.gw = fsub reassoc nsz arcp contract afn float %1, %i.gv ; 2 uses
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %i.gz = fadd reassoc nsz arcp contract afn float %i.gy, %i.gx
  %i.ha = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gq, float %i.gz) ; 2 uses
  store float %i.ha, ptr %10, align 4, !tbaa !26
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !26
  %i.hd = fsub reassoc nsz arcp contract afn float %0, %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.hf = load float, ptr %i.he, align 4, !tbaa !26
  %i.hg = fsub reassoc nsz arcp contract afn float %1, %i.hf ; 2 uses
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hd, %i.hd
  %i.hi = fmul reassoc nsz arcp contract afn float %i.hg, %i.hg
  %i.hj = fadd reassoc nsz arcp contract afn float %i.hi, %i.hh
  %i.hk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ha, float %i.hj) ; 2 uses
  store float %i.hk, ptr %10, align 4, !tbaa !26
  %i.hl = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !26
  %i.hn = fsub reassoc nsz arcp contract afn float %0, %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !26
  %i.hq = fsub reassoc nsz arcp contract afn float %1, %i.hp ; 2 uses
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hn, %i.hn
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hq, %i.hq
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, %i.hr
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hk, float %i.ht)
  store float %i.hu, ptr %10, align 4, !tbaa !26
  br label %.loopexit

bb.s:                                             ; preds = %_ellipse_point_in_polygon.exit, %bb.c
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !41  ; 10 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !42 ; 10 uses
  %.promoted = load float, ptr %10, align 4, !tbaa !26
  %i.hy = load float, ptr %i.hv, align 4, !tbaa !26
  %i.hz = fsub reassoc nsz arcp contract afn float %0, %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !26
  %i.ic = fsub reassoc nsz arcp contract afn float %1, %i.ib ; 2 uses
  %i.id = fmul reassoc nsz arcp contract afn float %i.hz, %i.hz
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ic, %i.ic
  %i.if = fadd reassoc nsz arcp contract afn float %i.ie, %i.id
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.promoted, float %i.if) ; 2 uses
  store float %i.ig, ptr %10, align 4, !tbaa !26
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !26
  %i.ij = fsub reassoc nsz arcp contract afn float %1, %i.ii ; 2 uses
  %i.ik = load float, ptr %i.hx, align 4, !tbaa !26
  %i.il = fsub reassoc nsz arcp contract afn float %0, %i.ik ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.il
  %i.in = fmul reassoc nsz arcp contract afn float %i.ij, %i.ij
  %i.io = fadd reassoc nsz arcp contract afn float %i.im, %i.in
  %i.ip = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ig, float %i.io) ; 2 uses
  store float %i.ip, ptr %10, align 4, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !26
  %i.is = fsub reassoc nsz arcp contract afn float %0, %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  %i.iu = load float, ptr %i.it, align 4, !tbaa !26
  %i.iv = fsub reassoc nsz arcp contract afn float %1, %i.iu ; 2 uses
  %i.iw = fmul reassoc nsz arcp contract afn float %i.is, %i.is
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iv, %i.iv
  %i.iy = fadd reassoc nsz arcp contract afn float %i.ix, %i.iw
  %i.iz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ip, float %i.iy) ; 2 uses
  store float %i.iz, ptr %10, align 4, !tbaa !26
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !26
  %i.jc = fsub reassoc nsz arcp contract afn float %1, %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.je = load float, ptr %i.jd, align 4, !tbaa !26
  %i.jf = fsub reassoc nsz arcp contract afn float %0, %i.je ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.jf
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jc, %i.jc
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jg, %i.jh
  %i.jj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.iz, float %i.ji) ; 2 uses
  store float %i.jj, ptr %10, align 4, !tbaa !26
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !26
  %i.jm = fsub reassoc nsz arcp contract afn float %0, %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !26
  %i.jp = fsub reassoc nsz arcp contract afn float %1, %i.jo ; 2 uses
  %i.jq = fmul reassoc nsz arcp contract afn float %i.jm, %i.jm
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jp, %i.jp
  %i.js = fadd reassoc nsz arcp contract afn float %i.jr, %i.jq
  %i.jt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jj, float %i.js) ; 2 uses
  store float %i.jt, ptr %10, align 4, !tbaa !26
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hx, i64 20
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !26
  %i.jw = fsub reassoc nsz arcp contract afn float %1, %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !26
  %i.jz = fsub reassoc nsz arcp contract afn float %0, %i.jy ; 2 uses
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.jz
  %i.kb = fmul reassoc nsz arcp contract afn float %i.jw, %i.jw
  %i.kc = fadd reassoc nsz arcp contract afn float %i.ka, %i.kb
  %i.kd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.jt, float %i.kc) ; 2 uses
  store float %i.kd, ptr %10, align 4, !tbaa !26
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !26
  %i.kg = fsub reassoc nsz arcp contract afn float %0, %i.kf ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !26
  %i.kj = fsub reassoc nsz arcp contract afn float %1, %i.ki ; 2 uses
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kg, %i.kg
  %i.kl = fmul reassoc nsz arcp contract afn float %i.kj, %i.kj
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %i.kk
  %i.kn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kd, float %i.km) ; 2 uses
  store float %i.kn, ptr %10, align 4, !tbaa !26
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !26
  %i.kq = fsub reassoc nsz arcp contract afn float %1, %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !26
  %i.kt = fsub reassoc nsz arcp contract afn float %0, %i.ks ; 2 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.kt
  %i.kv = fmul reassoc nsz arcp contract afn float %i.kq, %i.kq
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ku, %i.kv
  %i.kx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kn, float %i.kw) ; 2 uses
  store float %i.kx, ptr %10, align 4, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !26
  %i.la = fsub reassoc nsz arcp contract afn float %0, %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hv, i64 36
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !26
  %i.ld = fsub reassoc nsz arcp contract afn float %1, %i.lc ; 2 uses
  %i.le = fmul reassoc nsz arcp contract afn float %i.la, %i.la
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ld, %i.ld
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lf, %i.le
  %i.lh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kx, float %i.lg) ; 2 uses
  store float %i.lh, ptr %10, align 4, !tbaa !26
  %i.li = getelementptr inbounds nuw i8, ptr %i.hx, i64 36
  %i.lj = load float, ptr %i.li, align 4, !tbaa !26
  %i.lk = fsub reassoc nsz arcp contract afn float %1, %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !26
  %i.ln = fsub reassoc nsz arcp contract afn float %0, %i.lm ; 2 uses
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ln, %i.ln
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lk, %i.lk
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lo, %i.lp
end_hunk_0
