Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidiln?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ubidi_getLogicalRun_78:bb.a
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  br label %ubidi_countRuns_78.exit.sink.split

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call zeroext i8 @ubidi_getParaLevelAtIndex_78(ptr noundef nonnull %0, i32 noundef %1)
  br label %ubidi_countRuns_78.exit.sink.split

bb.q:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.am = zext nneg i32 %1 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36
  br label %ubidi_countRuns_78.exit.sink.split

ubidi_countRuns_78.exit.sink.split:               ; preds = %bb.o, %bb.p, %bb.j, %bb.q
  %.sink = phi i8 [ %i.w, %bb.j ], [ %i.ao, %bb.q ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ]
  store i8 %.sink, ptr %3, align 1, !tbaa !36
  br label %ubidi_countRuns_78.exit

ubidi_countRuns_78.exit:                          ; preds = %ubidi_countRuns_78.exit.sink.split, %bb.e, %bb.d, %bb.a, %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define i32 @ubidi_countRuns_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp eq ptr %0, null
  br i1 %.not16, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  store i32 27, ptr %1, align 4, !tbaa !11
  br label %bb.j

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.h = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !11
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.l = load i32, ptr %i.k, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.a, %bb.b, %bb.i, %bb.g
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.a ], [ %i.l, %bb.i ], [ -1, %bb.b ], [ -1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define signext range(i8 0, 2) i8 @ubidi_getRuns_78(ptr noundef %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %.critedge159, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i32, ptr %i.d, align 8, !tbaa !44
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.g = load i8, ptr %i.f, align 1, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.h, ptr %i.i, align 8, !tbaa !35
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.j = and i8 %i.g, 1
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw i32 %i.k, 31
  store i32 %i.l, ptr %i.h, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.n, ptr %i.o, align 4, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.p, align 8, !tbaa !50
  br label %.critedge159.thread

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !27   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 9 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader327, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i8> [ <i8 poison, i8 poison, i8 poison, i8 -2>, %vector.ph ], [ %wide.load307, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi306 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %wide.load = load <4 x i8>, ptr %i.x, align 1, !tbaa !36 ; 3 uses
  %wide.load307 = load <4 x i8>, ptr %i.y, align 1, !tbaa !36 ; 4 uses
  %i.z = shufflevector <4 x i8> %vector.recur, <4 x i8> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = shufflevector <4 x i8> %wide.load, <4 x i8> %wide.load307, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = icmp ne <4 x i8> %wide.load, %i.z
  %i.ac = icmp ne <4 x i8> %wide.load307, %i.aa
  %i.ad = zext <4 x i1> %i.ab to <4 x i32>
  %i.ae = zext <4 x i1> %i.ac to <4 x i32>
  %i.af = add <4 x i32> %vec.phi, %i.ad           ; 2 uses
  %i.ag = add <4 x i32> %vec.phi306, %i.ae        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <4 x i8> %wide.load307, i64 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader327

.lr.ph.preheader327:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0136199.ph = phi i8 [ -2, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0138198.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader327, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader327 ] ; 2 uses
  %.0136199 = phi i8 [ %i.ak, %.lr.ph ], [ %.0136199.ph, %.lr.ph.preheader327 ]
  %.0138198 = phi i32 [ %spec.select, %.lr.ph ], [ %.0138198.ph, %.lr.ph.preheader327 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !36  ; 2 uses
  %.not153 = icmp ne i8 %i.ak, %.0136199
  %i.al = zext i1 %.not153 to i32
  %spec.select = add nuw nsw i32 %.0138198, %i.al ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.ai, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.am = icmp eq i32 %spec.select.lcssa, 1
  %i.an = icmp eq i32 %i.v, %i.r
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.ao = load i8, ptr %i.t, align 1, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !35
  store i32 1, ptr %i.a, align 8, !tbaa !43
  %i.ar = and i8 %i.ao, 1
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 31
  store i32 %i.at, ptr %i.ap, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.r, ptr %i.au, align 4, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.av, align 8, !tbaa !50
  br label %.critedge159.thread

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %.0138.lcssa252 = phi i32 [ %spec.select.lcssa, %._crit_edge ], [ 0, %bb.d ] ; 2 uses
  %i.aw = icmp slt i32 %i.v, %i.r                 ; 3 uses
  %i.ax = zext i1 %i.aw to i32
  %spec.select155 = add nuw nsw i32 %.0138.lcssa252, %i.ax ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !79
  %i.bc = mul i32 %spec.select155, 12
  %i.bd = tail call signext i8 @ubidi_getMemory_78(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i8 noundef signext %i.bb, i32 noundef %i.bc)
  %.not151.not = icmp eq i8 %i.bd, 0
  br i1 %.not151.not, label %.critedge159, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !80 ; 14 uses
  %i.bf = sext i32 %i.v to i64                    ; 2 uses
  %i.bg = load i8, ptr %i.t, align 1, !tbaa !36   ; 4 uses
  %spec.select156290 = tail call i8 @llvm.umin.i8(i8 %i.bg, i8 126) ; 2 uses
  %i.bh = icmp sgt i32 %i.v, 1
  br i1 %i.bh, label %.lr.ph278, label %._crit_edge279

.lr.ph278:                                        ; preds = %bb.f, %.critedge
  %indvars.iv.next225275295 = phi i64 [ %indvars.iv.next225275, %.critedge ], [ 1, %bb.f ]
  %.1131294 = phi i8 [ %.1131, %.critedge ], [ %i.bg, %bb.f ] ; 2 uses
  %spec.select156293 = phi i8 [ %spec.select156, %.critedge ], [ %spec.select156290, %bb.f ] ; 2 uses
  %i.bi = phi i8 [ %i.bt, %.critedge ], [ %i.bg, %bb.f ]
  %.1142292 = phi i32 [ %i.bn, %.critedge ], [ 0, %bb.f ] ; 3 uses
  %indvars.iv227291 = phi i64 [ %indvars.iv.next228, %.critedge ], [ 0, %bb.f ] ; 3 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next225 = add nsw i64 %indvars.iv.next225276, 1 ; 3 uses
  %i.bj = icmp slt i64 %indvars.iv.next225, %i.bf
  br i1 %i.bj, label %bb.h, label %._crit_edge279, !llvm.loop !68

bb.h:                                             ; preds = %.lr.ph278, %bb.g
  %indvars.iv.next225276 = phi i64 [ %indvars.iv.next225275295, %.lr.ph278 ], [ %indvars.iv.next225, %bb.g ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next225276
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !36
  %i.bm = icmp eq i8 %i.bl, %i.bi
  br i1 %i.bm, label %bb.g, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.h
  %i.bn = trunc nsw i64 %indvars.iv.next225276 to i32 ; 3 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv227291 ; 3 uses
  store i32 %.1142292, ptr %i.bo, align 4, !tbaa !48
  %i.bp = sub nsw i32 %i.bn, %.1142292
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 0, ptr %i.br, align 4, !tbaa !50
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227291, 1 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next225276
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !36  ; 3 uses
  %spec.select156 = tail call i8 @llvm.umin.i8(i8 %i.bt, i8 %spec.select156293) ; 2 uses
  %.1131 = tail call i8 @llvm.umax.i8(i8 %i.bt, i8 %.1131294) ; 2 uses
  %indvars.iv.next225275 = add nsw i64 %indvars.iv.next225276, 1 ; 3 uses
  %i.bu = icmp slt i64 %indvars.iv.next225275, %i.bf
  br i1 %i.bu, label %.lr.ph278, label %._crit_edge279

._crit_edge279:                                   ; preds = %.critedge, %bb.g, %bb.f
  %indvars.iv227.lcssa = phi i64 [ %indvars.iv227291, %bb.g ], [ 0, %bb.f ], [ %indvars.iv.next228, %.critedge ] ; 2 uses
  %.1142.lcssa = phi i32 [ %.1142292, %bb.g ], [ 0, %bb.f ], [ %i.bn, %.critedge ] ; 2 uses
  %spec.select156.lcssa = phi i8 [ %spec.select156293, %bb.g ], [ %spec.select156290, %bb.f ], [ %spec.select156, %.critedge ] ; 2 uses
  %.1131.lcssa = phi i8 [ %.1131294, %bb.g ], [ %i.bg, %bb.f ], [ %.1131, %.critedge ] ; 2 uses
  %indvars.iv.next225.lcssa = phi i64 [ %indvars.iv.next225, %bb.g ], [ 1, %bb.f ], [ %indvars.iv.next225275, %.critedge ]
  %i.bv = trunc nuw nsw i64 %indvars.iv227.lcssa to i32
  %i.bw = trunc nsw i64 %indvars.iv.next225.lcssa to i32
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv227.lcssa ; 3 uses
  store i32 %.1142.lcssa, ptr %i.bx, align 4, !tbaa !48
  %i.by = sub nsw i32 %i.bw, %.1142.lcssa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 0, ptr %i.ca, align 4, !tbaa !50
  %i.cb = add nuw nsw i32 %i.bv, 1                ; 3 uses
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge279
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.cc ; 2 uses
  store i32 %i.v, ptr %i.cd, align 4, !tbaa !48
  %i.ce = sub nsw i32 %i.r, %i.v
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34
  %spec.select157 = tail call i8 @llvm.umin.i8(i8 %i.ch, i8 %spec.select156.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge279
  %.2134 = phi i8 [ %spec.select156.lcssa, %._crit_edge279 ], [ %spec.select157, %bb.i ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.be, ptr %i.ci, align 8, !tbaa !35
  store i32 %spec.select155, ptr %i.a, align 8, !tbaa !43
  %i.cj = or i8 %.2134, 1
  %.not.i = icmp ugt i8 %.1131.lcssa, %i.cj
  br i1 %.not.i, label %bb.k, label %_ZL11reorderLineP5UBiDihh.exit

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !42  ; 2 uses
  %i.cl = load i32, ptr %i.u, align 4, !tbaa !45
  %i.cm = load i32, ptr %i.q, align 4, !tbaa !27
  %i.cn = icmp slt i32 %i.cl, %i.cm
  %i.co = sext i1 %i.cn to i32
  %spec.select.i = add i32 %spec.select155, %i.co ; 6 uses
  %i.cp = add i8 %.1131.lcssa, -1                 ; 2 uses
  %.not70.not83.i = icmp ugt i8 %i.cp, %.2134
  %i.cq = icmp sgt i32 %spec.select.i, 0
  %or.cond129.i = select i1 %.not70.not83.i, i1 %i.cq, i1 false
  br i1 %or.cond129.i, label %.preheader.us.preheader.i, label %._crit_edge84.i

.preheader.us.preheader.i:                        ; preds = %bb.k
  %i.cr = zext nneg i32 %spec.select.i to i64     ; 3 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.critedge.thread.us.i, %.preheader.us.preheader.i
  %i.cs = phi i8 [ %i.do, %.critedge.thread.us.i ], [ %i.cp, %.preheader.us.preheader.i ] ; 3 uses
  br label %.lr.ph.us.i

bb.l:                                             ; preds = %.lr.ph.us.i, %bb.m
  %indvars.iv.i = phi i64 [ %i.dq, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.m ] ; 7 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ct = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.ck, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !36
  %i.cy = icmp ult i8 %i.cx, %i.cs
  br i1 %i.cy, label %bb.m, label %.critedge.preheader.us.i

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp slt i64 %indvars.iv.next.i, %i.cr
  br i1 %i.cz, label %bb.l, label %.critedge.thread.us.i, !llvm.loop !69

.critedge.us.i:                                   ; preds = %.lr.ph304
  %indvars.iv.next93.i = add nsw i64 %indvars.iv.next93.i303, 1 ; 2 uses
  %i.da = icmp slt i64 %indvars.iv.next93.i, %i.cr
  br i1 %i.da, label %.lr.ph304, label %.critedge2.us.i, !llvm.loop !70

.lr.ph304:                                        ; preds = %.critedge.preheader.us.i, %.critedge.us.i
  %indvars.iv.next93.i303 = phi i64 [ %indvars.iv.next93.i, %.critedge.us.i ], [ %indvars.iv.next93.i301, %.critedge.preheader.us.i ] ; 5 uses
  %indvars.iv92.i302 = phi i64 [ %indvars.iv.next93.i303, %.critedge.us.i ], [ %indvars.iv.i, %.critedge.preheader.us.i ]
  %i.db = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv.next93.i303
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !48
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.ck, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !36
  %.not73.us.i = icmp ult i8 %i.df, %i.cs
  br i1 %.not73.us.i, label %.critedge2.us.split.loop.exit.i, label %.critedge.us.i, !llvm.loop !70

.critedge2.us.split.loop.exit.i:                  ; preds = %.lr.ph304
  %i.dg = trunc nsw i64 %indvars.iv.next93.i303 to i32
  br label %.critedge2.us.i

.critedge2.us.i:                                  ; preds = %.critedge.us.i, %.critedge.preheader.us.i, %.critedge2.us.split.loop.exit.i
  %indvars.iv92.i273 = phi i64 [ %indvars.iv92.i302, %.critedge2.us.split.loop.exit.i ], [ %indvars.iv.i, %.critedge.preheader.us.i ], [ %indvars.iv.next93.i303, %.critedge.us.i ] ; 3 uses
  %.lcssa.i = phi i32 [ %i.dg, %.critedge2.us.split.loop.exit.i ], [ %smax.i, %.critedge.preheader.us.i ], [ %smax.i, %.critedge.us.i ]
  %.lcssa122.i = trunc i64 %indvars.iv92.i273 to i32
  %i.dh = icmp slt i64 %indvars.iv.i, %indvars.iv92.i273
  br i1 %i.dh, label %.lr.ph81.us.i, label %._crit_edge.us.i

.lr.ph81.us.i:                                    ; preds = %.critedge2.us.i, %.lr.ph81.us.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.lr.ph81.us.i ], [ %indvars.iv.i, %.critedge2.us.i ] ; 2 uses
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph81.us.i ], [ %indvars.iv92.i273, %.critedge2.us.i ] ; 2 uses
  %i.di = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv102.i ; 2 uses
  %.sroa.0.0.copyload333 = load <3 x i32>, ptr %i.di, align 4
  %i.dj = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv98.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.di, ptr noundef nonnull align 4 dereferenceable(12) %i.dj, i64 12, i1 false), !tbaa.struct !81
  store <3 x i32> %.sroa.0.0.copyload333, ptr %i.dj, align 4
  %indvars.iv.next103.i = add nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %indvars.iv.next99.i = add nsw i64 %indvars.iv98.i, -1 ; 2 uses
  %i.dk = icmp slt i64 %indvars.iv.next103.i, %indvars.iv.next99.i
  br i1 %i.dk, label %.lr.ph81.us.i, label %._crit_edge.us.i, !llvm.loop !71

._crit_edge.us.i:                                 ; preds = %.lr.ph81.us.i, %.critedge2.us.i
  %i.dl = icmp ne i32 %.lcssa.i, %spec.select.i
  %i.dm = add nsw i32 %.lcssa122.i, 2             ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %spec.select.i
  %or.cond.i = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond.i, label %.lr.ph.us.i, label %.critedge.thread.us.i, !llvm.loop !72

.critedge.thread.us.i:                            ; preds = %._crit_edge.us.i, %bb.m
  %i.do = add i8 %i.cs, -1                        ; 2 uses
  %.not70.not.us.i = icmp ugt i8 %i.do, %.2134
  br i1 %.not70.not.us.i, label %.preheader.us.i, label %._crit_edge84.i, !llvm.loop !73

.critedge.preheader.us.i:                         ; preds = %bb.l
  %indvars = trunc i64 %indvars.iv.next.i to i32
  %smax.i = tail call i32 @llvm.smax.i32(i32 %indvars, i32 %spec.select.i) ; 2 uses
  %indvars.iv.next93.i301 = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dp = icmp slt i64 %indvars.iv.next93.i301, %i.cr
  br i1 %i.dp, label %.lr.ph304, label %.critedge2.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.preheader.us.i
  %.06282.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.dm, %._crit_edge.us.i ]
  %i.dq = sext i32 %.06282.us.i to i64
  br label %bb.l

._crit_edge84.i:                                  ; preds = %.critedge.thread.us.i, %bb.k
  %i.dr = and i8 %.2134, 1
  %.not71.not.i = icmp eq i8 %i.dr, 0
  br i1 %.not71.not.i, label %_ZL11reorderLineP5UBiDihh.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge84.i
  %i.ds = load i32, ptr %i.u, align 4, !tbaa !45
  %i.dt = load i32, ptr %i.q, align 4, !tbaa !27
  %i.du = icmp eq i32 %i.ds, %i.dt
  %i.dv = sext i1 %i.du to i32
  %spec.select74.i = add nsw i32 %spec.select.i, %i.dv ; 2 uses
  %i.dw = icmp sgt i32 %spec.select74.i, 0
  br i1 %i.dw, label %.lr.ph.preheader.i, label %_ZL11reorderLineP5UBiDihh.exit

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.dx = zext nneg i32 %spec.select74.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv109.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next110.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv107.i = phi i64 [ %i.dx, %.lr.ph.preheader.i ], [ %indvars.iv.next108.i, %.lr.ph.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv109.i ; 2 uses
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds [12 x i8], ptr %i.be, i64 %indvars.iv107.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dy, ptr noundef nonnull align 4 dereferenceable(12) %i.dz, i64 12, i1 false), !tbaa.struct !81
  store <3 x i32> %.sroa.0.0.copyload, ptr %i.dz, align 4
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %indvars.iv.next108.i = add nsw i64 %indvars.iv107.i, -1 ; 2 uses
  %i.ea = icmp slt i64 %indvars.iv.next110.i, %indvars.iv.next108.i
  br i1 %i.ea, label %.lr.ph.i, label %_ZL11reorderLineP5UBiDihh.exit, !llvm.loop !74

_ZL11reorderLineP5UBiDihh.exit:                   ; preds = %.lr.ph.i, %bb.j, %._crit_edge84.i, %bb.n
  %.not210 = icmp eq i32 %spec.select155, 0
  br i1 %.not210, label %._crit_edge203, label %.lr.ph202.preheader

.lr.ph202.preheader:                              ; preds = %_ZL11reorderLineP5UBiDihh.exit
  %wide.trip.count234 = zext i32 %spec.select155 to i64 ; 2 uses
  %2 = zext i32 %.0138.lcssa252 to i64
  %i.eb = zext i1 %i.aw to i64
  %3 = add nuw nsw i64 %2, %i.eb
  %xtraiter = and i64 %wide.trip.count234, 1
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %.lr.ph202.epil.preheader, label %.lr.ph202.preheader.new

.lr.ph202.preheader.new:                          ; preds = %.lr.ph202.preheader
  %unroll_iter = and i64 %wide.trip.count234, 4294967294
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %.lr.ph202, %.lr.ph202.preheader.new
  %indvars.iv230 = phi i64 [ 0, %.lr.ph202.preheader.new ], [ %indvars.iv.next231.1, %.lr.ph202 ] ; 3 uses
  %.0145200 = phi i32 [ 0, %.lr.ph202.preheader.new ], [ %i.fa, %.lr.ph202 ]
  %niter = phi i64 [ 0, %.lr.ph202.preheader.new ], [ %niter.next.1, %.lr.ph202 ]
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv230 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !48 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.t, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !36
  %i.eh = and i8 %i.eg, 1
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = shl nuw i32 %i.ei, 31
  %i.ek = or i32 %i.ej, %i.ed
  store i32 %i.ek, ptr %i.ec, align 4, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !49
  %i.en = add nsw i32 %i.em, %.0145200            ; 2 uses
  store i32 %i.en, ptr %i.el, align 4, !tbaa !49
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv230 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !48 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.t, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !36
  %i.eu = and i8 %i.et, 1
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = shl nuw i32 %i.ev, 31
  %i.ex = or i32 %i.ew, %i.eq
  store i32 %i.ex, ptr %i.ep, align 4, !tbaa !48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !49
  %i.fa = add nsw i32 %i.ez, %i.en                ; 3 uses
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !49
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge203.loopexit.unr-lcssa, label %.lr.ph202, !llvm.loop !75

._crit_edge203.loopexit.unr-lcssa:                ; preds = %.lr.ph202
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge203, label %.lr.ph202.epil.preheader

.lr.ph202.epil.preheader:                         ; preds = %._crit_edge203.loopexit.unr-lcssa, %.lr.ph202.preheader
  %indvars.iv230.epil.init = phi i64 [ 0, %.lr.ph202.preheader ], [ %indvars.iv.next231.1, %._crit_edge203.loopexit.unr-lcssa ]
  %.0145200.epil.init = phi i32 [ 0, %.lr.ph202.preheader ], [ %i.fa, %._crit_edge203.loopexit.unr-lcssa ]
  %lcmp.mod331 = trunc i32 %spec.select155 to i1
  tail call void @llvm.assume(i1 %lcmp.mod331)
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %indvars.iv230.epil.init ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !48 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds i8, ptr %i.t, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !36
  %i.fg = and i8 %i.ff, 1
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = shl nuw i32 %i.fh, 31
  %i.fj = or i32 %i.fi, %i.fc
  store i32 %i.fj, ptr %i.fb, align 4, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !49
  %i.fm = add nsw i32 %i.fl, %.0145200.epil.init
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !49
  br label %._crit_edge203

._crit_edge203:                                   ; preds = %.lr.ph202.epil.preheader, %._crit_edge203.loopexit.unr-lcssa, %_ZL11reorderLineP5UBiDihh.exit
  %i.fn = icmp samesign ult i32 %i.cb, %spec.select155
  br i1 %i.fn, label %bb.o, label %.critedge159.thread

bb.o:                                             ; preds = %._crit_edge203
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !34
  %i.fq = and i8 %i.fp, 1                         ; 2 uses
  %i.fr = zext nneg i8 %i.fq to i32
  %.not152 = icmp eq i8 %i.fq, 0
  %i.fs = shl nuw i32 %i.fr, 31
  %i.ft = zext nneg i32 %i.cb to i64
  %i.fu = select i1 %.not152, i64 %i.ft, i64 0
  %i.fv = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !48
  %i.fx = or i32 %i.fs, %i.fw
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !48
  br label %.critedge159.thread

.critedge159.thread:                              ; preds = %bb.e, %._crit_edge203, %bb.o, %bb.c
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !53 ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph206, label %.loopexit

.lr.ph206:                                        ; preds = %.critedge159.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !82 ; 2 uses
  %i.gd = zext nneg i32 %i.fz to i64
  %.idx = shl nuw nsw i64 %i.gd, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx
  %.val165 = load i32, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.gf = getelementptr i8, ptr %0, i64 304
  %.val166 = load ptr, ptr %i.gf, align 8, !tbaa !35
  %i.gg = icmp sgt i32 %.val165, 0
  %wide.trip.count.i = zext nneg i32 %.val165 to i64
  br i1 %i.gg, label %.lr.ph.preheader.i167, label %._crit_edge.i

.lr.ph.preheader.i167:                            ; preds = %.lr.ph206, %_ZL22getRunFromLogicalIndexP5UBiDii.exit
  %.0126204 = phi ptr [ %i.gv, %_ZL22getRunFromLogicalIndexP5UBiDii.exit ], [ %i.gc, %.lr.ph206 ] ; 3 uses
  %i.gh = load i32, ptr %.0126204, align 4, !tbaa !84 ; 2 uses
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.q, %.lr.ph.preheader.i167
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.preheader.i167 ], [ %indvars.iv.next.i171, %bb.q ] ; 2 uses
  %.0172.i = phi i32 [ 0, %.lr.ph.preheader.i167 ], [ %i.gk, %bb.q ]
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %.val166, i64 %indvars.iv.i169 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !49 ; 2 uses
  %i.gl = load i32, ptr %i.gi, align 4, !tbaa !48
  %i.gm = and i32 %i.gl, 2147483647               ; 2 uses
  %.not.i170 = icmp slt i32 %i.gh, %i.gm
  br i1 %.not.i170, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i168
  %i.gn = sub i32 %i.gk, %.0172.i
  %i.go = add nsw i32 %i.gn, %i.gm
  %i.gp = icmp slt i32 %i.gh, %i.go
  br i1 %i.gp, label %_ZL22getRunFromLogicalIndexP5UBiDii.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i168
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i168, !llvm.loop !76

._crit_edge.i:                                    ; preds = %bb.q, %.lr.ph206
  tail call void @abort() #9
  unreachable

_ZL22getRunFromLogicalIndexP5UBiDii.exit:         ; preds = %bb.p
  %i.gq = getelementptr inbounds nuw i8, ptr %.0126204, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !85
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !50
  %i.gu = or i32 %i.gt, %i.gr
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %.0126204, i64 8 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %i.ge
  br i1 %i.gw, label %.lr.ph.preheader.i167, label %.loopexit, !llvm.loop !77

.loopexit:                                        ; preds = %_ZL22getRunFromLogicalIndexP5UBiDii.exit, %.critedge159.thread
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !37
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %bb.r, label %.critedge159

bb.r:                                             ; preds = %.loopexit
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !28 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !27 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %.idx211 = shl nsw i64 %i.he, 1
  %i.hf = getelementptr inbounds i8, ptr %i.hb, i64 %.idx211
  %i.hg = icmp sgt i32 %i.hd, 0
  br i1 %i.hg, label %.lr.ph209, label %.critedge159

.lr.ph209:                                        ; preds = %bb.r
  %i.hh = ptrtoint ptr %i.hb to i64
  %i.hi = getelementptr i8, ptr %0, i64 304
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph209, %bb.w
  %.0207 = phi ptr [ %i.hb, %.lr.ph209 ], [ %i.ic, %bb.w ] ; 3 uses
  %i.hj = load i16, ptr %.0207, align 2, !tbaa !39
  %.fr183 = freeze i16 %i.hj                      ; 2 uses
  %i.hk = and i16 %.fr183, -4
  %i.hl = icmp eq i16 %i.hk, 8204
  br i1 %i.hl, label %bb.t, label %switch.early.test

switch.early.test:                                ; preds = %bb.s
  switch i16 %.fr183, label %bb.w [
    i16 8297, label %bb.t
    i16 8296, label %bb.t
    i16 8295, label %bb.t
    i16 8294, label %bb.t
    i16 8238, label %bb.t
    i16 8237, label %bb.t
    i16 8236, label %bb.t
    i16 8235, label %bb.t
    i16 8234, label %bb.t
  ]

bb.t:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.s
  %i.hm = ptrtoint ptr %.0207 to i64
  %i.hn = sub i64 %i.hm, %i.hh
  %i.ho = lshr exact i64 %i.hn, 1
  %i.hp = trunc i64 %i.ho to i32                  ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %.val164 = load ptr, ptr %i.hi, align 8, !tbaa !35
  %i.hq = icmp sgt i32 %.val, 0
  br i1 %i.hq, label %.lr.ph.preheader.i173, label %._crit_edge.i172

.lr.ph.preheader.i173:                            ; preds = %bb.t
  %wide.trip.count.i174 = zext nneg i32 %.val to i64
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.v, %.lr.ph.preheader.i173
  %indvars.iv.i176 = phi i64 [ 0, %.lr.ph.preheader.i173 ], [ %indvars.iv.next.i179, %bb.v ] ; 2 uses
  %.0172.i177 = phi i32 [ 0, %.lr.ph.preheader.i173 ], [ %i.ht, %bb.v ]
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %.val164, i64 %indvars.iv.i176 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !49 ; 2 uses
  %i.hu = load i32, ptr %i.hr, align 4, !tbaa !48
  %i.hv = and i32 %i.hu, 2147483647               ; 2 uses
  %.not.i178 = icmp sgt i32 %i.hv, %i.hp
  br i1 %.not.i178, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i175
  %i.hw = sub i32 %i.ht, %.0172.i177
  %i.hx = add nsw i32 %i.hw, %i.hv
  %i.hy = icmp sgt i32 %i.hx, %i.hp
  br i1 %i.hy, label %_ZL22getRunFromLogicalIndexP5UBiDii.exit181, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i175
  %indvars.iv.next.i179 = add nuw nsw i64 %indvars.iv.i176, 1 ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %indvars.iv.next.i179, %wide.trip.count.i174
  br i1 %exitcond.not.i180, label %._crit_edge.i172, label %.lr.ph.i175, !llvm.loop !76

._crit_edge.i172:                                 ; preds = %bb.t, %bb.v
  tail call void @abort() #9
  unreachable

_ZL22getRunFromLogicalIndexP5UBiDii.exit181:      ; preds = %bb.u
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !50
  %i.ib = add nsw i32 %i.ia, -1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !50
  br label %bb.w

bb.w:                                             ; preds = %switch.early.test, %_ZL22getRunFromLogicalIndexP5UBiDii.exit181
  %i.ic = getelementptr inbounds nuw i8, ptr %.0207, i64 2 ; 2 uses
  %i.id = icmp ult ptr %i.ic, %i.hf
  br i1 %i.id, label %bb.s, label %.critedge159, !llvm.loop !78

.critedge159:                                     ; preds = %bb.w, %bb.r, %._crit_edge.thread, %.loopexit, %bb.a
  %.3 = phi i8 [ 1, %.loopexit ], [ 1, %bb.a ], [ 0, %._crit_edge.thread ], [ 1, %bb.r ], [ 1, %bb.w ]
  ret i8 %.3
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ubidi_getVisualRun_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
end_hunk_0
