Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@qrfRenderValue:bb.a
  %.02034.i = phi i32 [ %.222.i, %bb.bd ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.ld = add nsw i32 %.02034.i, %.01935.i
  %i.le = sdiv i32 %i.ld, 2                       ; 3 uses
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !49 ; 2 uses
  %i.lj = icmp slt i32 %i.li, %.sink.i205
  br i1 %i.lj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i206
  %i.lk = icmp sgt i32 %i.li, %.sink.i205
  br i1 %i.lk, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.ll = add nsw i32 %i.le, -1
  br label %bb.bd

.thread.i:                                        ; preds = %bb.bb
  %i.lm = load i8, ptr %i.lg, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.bd:                                            ; preds = %bb.bc, %.preheader.i206
  %.222.i = phi i32 [ %i.le, %.preheader.i206 ], [ %.02034.i, %bb.bc ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i206 ], [ %i.ll, %bb.bc ] ; 3 uses
  %i.ln = add nsw i32 %.2.i, -1
  %i.lo = icmp slt i32 %.222.i, %i.ln
  br i1 %i.lo, label %.preheader.i206, label %bb.be, !llvm.loop !0

bb.be:                                            ; preds = %bb.bd
  %i.lp = sext i32 %.2.i to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !49
  %i.lt = icmp sgt i32 %i.ls, %.sink.i205
  br i1 %i.lt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lu = sext i32 %.222.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.bg:                                            ; preds = %bb.be
  %i.lx = load i8, ptr %i.lq, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.bf, %bb.bg
  %.0.i218 = phi i32 [ %.0.i, %bb.bg ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.bf ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %.225.shrunk.i = phi i8 [ %i.lx, %bb.bg ], [ %i.lm, %.thread.i ], [ %i.lw, %bb.bf ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ly = add nsw i32 %.0, %.225.i                ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, %spec.store.select
  br i1 %i.lz, label %bb.bh, label %.thread213

.thread213:                                       ; preds = %bb.ao, %.thread212, %.critedge2.i, %bb.al, %sqlite3_qrf_wcwidth.exit
  %.pn.pn = phi i32 [ %.0.i218, %sqlite3_qrf_wcwidth.exit ], [ 1, %.thread212 ], [ %i.it, %.critedge2.i ], [ 1, %bb.al ], [ 1, %bb.ao ]
  %.1 = phi i32 [ %i.ly, %sqlite3_qrf_wcwidth.exit ], [ %.0, %.thread212 ], [ %.0, %.critedge2.i ], [ %.0, %bb.al ], [ %i.iv, %bb.ao ]
  %.4 = add nsw i32 %.pn.pn, %.0171
  br label %bb.ak

bb.bh:                                            ; preds = %bb.al, %sqlite3_qrf_wcwidth.exit, %bb.ao
  %.2 = phi i32 [ %i.ly, %sqlite3_qrf_wcwidth.exit ], [ %i.iv, %bb.ao ], [ %.0, %bb.al ]
  %i.ma = icmp sgt i32 %.2, %spec.store.select
  br i1 %i.ma, label %bb.bi, label %.critedge200

bb.bi:                                            ; preds = %bb.bh
  %i.mb = add nsw i32 %.0171, %i.b
  call void @sqlite3_str_truncate(ptr noundef %1, i32 noundef %i.mb) #45
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.178, i32 noundef 3) #45
  br label %.critedge200

.critedge200:                                     ; preds = %bb.c, %bb.ac, %bb.y, %.loopexit, %bb.ai, %bb.bi, %bb.bh
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qrfLoadAlignment(i32 %.8.val, ptr nofree writeonly captures(none) %.64.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #28 {
bb.a:
  %i.a = sext i32 %.8.val to i64
  %i.b = icmp sgt i32 %.8.val, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.d = load i8, ptr %i.c, align 1, !tbaa !105   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !106
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = and i8 %i.d, 12                          ; 2 uses
  %i.k = or disjoint i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.g ] ; 6 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.64.val, i64 %.01
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i8 %i.d, ptr %i.n, align 8, !tbaa !95
  %i.o = icmp slt i64 %.01, %i.g
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1029
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = and i8 %i.r, 3                           ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = or disjoint i8 %i.s, %i.j
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 8, !tbaa !97
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %.01, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !1030
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.01
  %i.z = load i16, ptr %i.y, align 2, !tbaa !98
  %i.aa = icmp slt i16 %i.z, 0
  br i1 %i.aa, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.sink = phi i8 [ %i.t, %bb.d ], [ %i.k, %bb.f ]
  store i8 %.sink, ptr %i.n, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.e
  %i.ab = add nuw nsw i64 %.01, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfSplitColumn(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !74
  %i.c = tail call ptr @sqlite3_malloc64(i64 noundef 8) #45 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

.loopexit:                                        ; preds = %bb.h
  %i.g = trunc nsw i64 %indvars.iv.next to i32
  %i.h = load i16, ptr %i.a, align 8, !tbaa !74
  %i.i = shl nsw i64 %indvars.iv.next, 2
  %i.j = tail call ptr @sqlite3_malloc64(i64 noundef %i.i) #45 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %bb.b, !llvm.loop !1031

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0135.lcssa = phi ptr [ null, %bb.a ], [ %i.l, %.loopexit ]
  %.0129.lcssa = phi i64 [ 1, %bb.a ], [ %i.az, %.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.0132174, %.loopexit ]
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %qrfValidLayout.exit.thread

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.j, %.loopexit ] ; 8 uses
  %i.m = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.in = phi i16 [ %i.b, %.lr.ph ], [ %i.h, %.loopexit ]
  %.0176 = phi i32 [ 1, %.lr.ph ], [ %.0132174, %.loopexit ]
  %.0129175 = phi i64 [ 1, %.lr.ph ], [ %i.az, %.loopexit ]
  %.0132174 = phi i32 [ 2, %.lr.ph ], [ %i.g, %.loopexit ] ; 8 uses
  %.0135173 = phi ptr [ null, %.lr.ph ], [ %i.l, %.loopexit ] ; 2 uses
  %i.n = sext i16 %.in to i32
  %i.o = load i64, ptr %i.e, align 8, !tbaa !91   ; 4 uses
  %i.p = add nsw i64 %i.m, -1                     ; 2 uses
  %i.q = add i64 %i.p, %i.o
  %i.r = sdiv i64 %i.q, %i.m
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp sgt i64 %i.o, 0
  br i1 %i.t, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53   ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %i.o, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.c, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 1, %bb.c ] ; 4 uses
  %.03847.i = phi i32 [ %.1.i, %bb.f ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.x = srem i32 %i.w, %i.s
  %i.y = sdiv i32 %i.w, %i.s
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.peel.next.i
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [4 x i8], ptr %i.l, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  store i32 %.03847.i, ptr %i.ac, align 4, !tbaa !53
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %.peel.next.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.03847.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.ae, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !1032

._crit_edge.i:                                    ; preds = %bb.f, %bb.c, %bb.b
  %.038.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.v, %bb.c ], [ %.1.i, %bb.f ]
  %i.ah = add nsw i32 %.0132174, -1               ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ai
  store i32 %.038.lcssa.i, ptr %i.aj, align 4, !tbaa !53
  %i.ak = icmp sgt i32 %.0132174, 0
  br i1 %i.ak, label %.lr.ph51.preheader.i, label %._crit_edge52.i

.lr.ph51.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i = zext nneg i32 %.0132174 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.0132174, 8
  br i1 %min.iters.check, label %.lr.ph51.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi252 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !53
  %wide.load253 = load <4 x i32>, ptr %i.am, align 4, !tbaa !53
  %i.an = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ao = add <4 x i32> %wide.load253, %vec.phi252 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1033

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge52.i, label %.lr.ph51.i.preheader

.lr.ph51.i.preheader:                             ; preds = %.lr.ph51.preheader.i, %middle.block
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph51.preheader.i ], [ %n.vec, %middle.block ]
  %.049.i.ph = phi i32 [ 0, %.lr.ph51.preheader.i ], [ %i.aq, %middle.block ]
  br label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.lr.ph51.i.preheader, %.lr.ph51.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %.lr.ph51.i ], [ %indvars.iv56.i.ph, %.lr.ph51.i.preheader ] ; 2 uses
  %.049.i = phi i32 [ %i.at, %.lr.ph51.i ], [ %.049.i.ph, %.lr.ph51.i.preheader ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv56.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !53
  %i.at = add nsw i32 %i.as, %.049.i              ; 2 uses
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count.i
  br i1 %exitcond59.not.i, label %._crit_edge52.i, label %.lr.ph51.i, !llvm.loop !1034

._crit_edge52.i:                                  ; preds = %.lr.ph51.i, %middle.block, %._crit_edge.i
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %i.aq, %middle.block ], [ %i.at, %.lr.ph51.i ]
  %i.au = shl nsw i32 %i.ah, 1
  %i.av = add nsw i32 %.0.lcssa.i, %i.au
  %i.aw = icmp sgt i32 %i.av, %i.n
  br i1 %i.aw, label %bb.g, label %qrfValidLayout.exit

bb.g:                                             ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef nonnull %i.l) #45
  br label %qrfValidLayout.exit.thread

qrfValidLayout.exit:                              ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef %.0135173) #45
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !91  ; 2 uses
  %i.ay = add i64 %i.p, %i.ax
  %i.az = sdiv i64 %i.ay, %i.m                    ; 4 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %qrfValidLayout.exit.thread, label %.preheader157

.preheader157:                                    ; preds = %qrfValidLayout.exit
  %i.bb = sext i32 %.0132174 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader157, %bb.h
  %indvars.iv = phi i64 [ %i.bb, %.preheader157 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.bc = add i64 %i.ax, %indvars.iv
  %i.bd = sdiv i64 %i.bc, %indvars.iv.next
  %i.be = icmp eq i64 %i.bd, %i.az
  br i1 %i.be, label %bb.h, label %.loopexit, !llvm.loop !1031

qrfValidLayout.exit.thread:                       ; preds = %qrfValidLayout.exit, %bb.g, %._crit_edge
  %.1136.ph = phi ptr [ %.0135173, %bb.g ], [ %.0135.lcssa, %._crit_edge ], [ %i.l, %qrfValidLayout.exit ] ; 5 uses
  %.1130.ph = phi i64 [ %.0129175, %bb.g ], [ %.0129.lcssa, %._crit_edge ], [ 1, %qrfValidLayout.exit ] ; 5 uses
  %.1.ph = phi i32 [ %.0176, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ %.0132174, %qrfValidLayout.exit ] ; 9 uses
  %i.bf = icmp eq i32 %.1.ph, 1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %qrfValidLayout.exit.thread
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #45
  br label %bb.v

bb.j:                                             ; preds = %qrfValidLayout.exit.thread
  %i.bg = sext i32 %.1.ph to i64                  ; 8 uses
  %i.bh = mul nsw i64 %.1130.ph, %i.bg            ; 7 uses
  %i.bi = shl i64 %i.bh, 3
  %i.bj = tail call ptr @sqlite3_malloc64(i64 noundef %i.bi) #45 ; 7 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bl = shl i64 %i.bh, 2
  %i.bm = tail call ptr @sqlite3_malloc64(i64 noundef %i.bl) #45 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #45
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bo = mul nsw i64 %i.bg, 24
  %i.bp = tail call ptr @sqlite3_malloc64(i64 noundef %i.bo) #45 ; 15 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #45
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.br = tail call ptr @sqlite3_malloc64(i64 noundef %i.bh) #45 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %.preheader156

.preheader156:                                    ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !91
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph180, label %.preheader155

.lr.ph180:                                        ; preds = %.preheader156
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !93
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #45
  tail call void @sqlite3_free(ptr noundef nonnull %i.bp) #45
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %bb.v

.preheader155:                                    ; preds = %bb.r, %.preheader156
  %.0127.lcssa = phi i64 [ 0, %.preheader156 ], [ %i.cs, %bb.r ] ; 2 uses
  %i.bz = icmp slt i64 %.0127.lcssa, %i.bh
  br i1 %i.bz, label %.lr.ph183, label %.preheader

bb.r:                                             ; preds = %.lr.ph180, %bb.r
  %i.ca = phi ptr [ %.pre, %.lr.ph180 ], [ %i.cm, %bb.r ]
  %.0127179 = phi i64 [ 0, %.lr.ph180 ], [ %i.cs, %bb.r ] ; 7 uses
  %i.cb = srem i64 %.0127179, %.1130.ph
  %i.cc = mul nsw i64 %i.cb, %i.bg
  %i.cd = sdiv i64 %.0127179, %.1130.ph
  %i.ce = add nsw i64 %i.cc, %i.cd                ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0127179
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ce
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !88
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0127179
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 %i.ce
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !52
end_hunk_0
begin_hunk_1_@tryToCloneData:bb.a
  unreachable

strlen30.exit79:                                  ; preds = %bb.e
  %i.x = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %.0.i, ptr noundef nonnull %i.v, ptr noundef nonnull @.str.1411, ptr noundef %2) #45 ; 0 uses
  %i.y = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.v) #46
  %i.z = call i64 @llvm.umin.i64(i64 %i.y, i64 1073741823) ; 6 uses
  %i.aa = icmp sgt i32 %i.r, 1
  br i1 %i.aa, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %strlen30.exit79
  %i.ab = add nsw i32 %i.r, -1
  %i.ac = zext i32 %i.ab to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check120 = icmp ult i32 %i.r, 17
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 4294967280              ; 5 uses
  %i.ae = shl nuw nsw i64 %n.vec, 1
  %i.af = add nuw nsw i64 %i.z, %i.ae             ; 2 uses
  %i.ag = trunc nuw i64 %n.vec to i32
  %i.ah = or disjoint i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl nuw i64 %index, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <8 x i16> splat (i16 16172), ptr %i.ak, align 1
  store <8 x i16> splat (i16 16172), ptr %i.al, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !686

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ac, 4294967292           ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec122, 1
  %i.ao = add nuw nsw i64 %i.z, %i.an             ; 2 uses
  %i.ap = trunc nuw i64 %n.vec122 to i32
  %i.aq = or disjoint i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next124, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl nuw i64 %index123, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store <4 x i16> splat (i16 16172), ptr %i.at, align 1
  %index.next124 = add nuw i64 %index123, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next124, %n.vec122
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1302

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n125 = icmp eq i64 %n.vec122, %i.ac
  br i1 %cmp.n125, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.z, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.06790.ph = phi i32 [ 1, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.06790 = phi i32 [ %i.aw, %.lr.ph ], [ %.06790.ph, %.lr.ph.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  store i16 16172, ptr %i.av, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aw = add nuw nsw i32 %.06790, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1303

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %strlen30.exit79
  %.068.lcssa.in = phi i64 [ %i.z, %strlen30.exit79 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.ax = and i64 %.068.lcssa.in, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @.str.1413, i64 3, i1 false)
  %i.az = call i32 @sqlite3_prepare_v2(ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #45
  %.not75 = icmp eq i32 %i.az, 0
  br i1 %.not75, label %.preheader82, label %bb.g

.preheader82:                                     ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %i.r, 0                    ; 2 uses
  br label %bb.r

bb.g:                                             ; preds = %._crit_edge
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.bc = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.bd = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.1410, i32 noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.v)
  br label %.loopexit

.preheader81.1:                                   ; preds = %shell_check_oom.exit80, %.preheader81.1.backedge
  %.1.1 = phi i32 [ %i.co, %.preheader81.1.backedge ], [ %.1, %shell_check_oom.exit80 ]
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bf = call i32 @sqlite3_step(ptr noundef %i.be) #45
  switch i32 %i.bf, label %bb.q [
    i32 100, label %.preheader.1
    i32 101, label %.loopexit
  ]

.preheader.1:                                     ; preds = %.preheader81.1
  br i1 %i.ba, label %.lr.ph92.1, label %._crit_edge93.1

.lr.ph92.1:                                       ; preds = %.preheader.1, %bb.m
  %.16991.1 = phi i32 [ %.pre-phi, %bb.m ], [ 0, %.preheader.1 ] ; 12 uses
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bh = call i32 @sqlite3_column_type(ptr noundef %i.bg, i32 noundef %.16991.1) #45
  switch i32 %i.bh, label %.lr.ph92.1._crit_edge [
    i32 5, label %bb.l
    i32 1, label %bb.k
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 4, label %bb.h
  ]

.lr.ph92.1._crit_edge:                            ; preds = %.lr.ph92.1
  %.pre = add nuw nsw i32 %.16991.1, 1
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph92.1
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bj = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bl = call ptr @sqlite3_column_blob(ptr noundef %i.bk, i32 noundef %.16991.1) #45
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bn = call i32 @sqlite3_column_bytes(ptr noundef %i.bm, i32 noundef %.16991.1) #45
  %i.bo = call i32 @sqlite3_bind_blob(ptr noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.bl, i32 noundef %i.bn, ptr noundef null) #45 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph92.1
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bq = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bs = call ptr @sqlite3_column_text(ptr noundef %i.br, i32 noundef %.16991.1) #45
  %i.bt = call i32 @sqlite3_bind_text(ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %i.bs, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph92.1
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.bv = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.bx = call double @sqlite3_column_double(ptr noundef %i.bw, i32 noundef %.16991.1) #45
  %i.by = call i32 @sqlite3_bind_double(ptr noundef %i.bu, i32 noundef %i.bv, double noundef %i.bx) #45 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph92.1
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ca = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.cc = call i64 @sqlite3_column_int64(ptr noundef %i.cb, i32 noundef %.16991.1) #45
  %i.cd = call i32 @sqlite3_bind_int64(ptr noundef %i.bz, i32 noundef %i.ca, i64 noundef %i.cc) #45 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph92.1
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cf = add nuw nsw i32 %.16991.1, 1            ; 2 uses
  %i.cg = call i32 @sqlite3_bind_null(ptr noundef %i.ce, i32 noundef %i.cf) #45 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92.1._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.pre-phi = phi i32 [ %.pre, %.lr.ph92.1._crit_edge ], [ %i.cf, %bb.l ], [ %i.ca, %bb.k ], [ %i.bv, %bb.j ], [ %i.bq, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  %exitcond105.1.not = icmp eq i32 %.pre-phi, %i.r
  br i1 %exitcond105.1.not, label %._crit_edge93.1, label %.lr.ph92.1, !llvm.loop !1304

._crit_edge93.1:                                  ; preds = %bb.m, %.preheader.1
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ci = call i32 @sqlite3_step(ptr noundef %i.ch) #45
  switch i32 %i.ci, label %bb.n [
    i32 101, label %bb.o
    i32 100, label %bb.o
    i32 0, label %bb.o
  ]

bb.n:                                             ; preds = %._crit_edge93.1
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.ck = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.cl = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.cj, ptr noundef nonnull @.str.1414, i32 noundef %i.ck, ptr noundef %i.cl)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge93.1, %._crit_edge93.1, %._crit_edge93.1
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.cn = call i32 @sqlite3_reset(ptr noundef %i.cm) #45 ; 0 uses
  %i.co = add nuw nsw i32 %.1.1, 1                ; 3 uses
  %i.cp = urem i32 %i.co, 10000
  %i.cq = udiv i32 %i.co, 10000
  %i.cr = icmp eq i32 %i.cp, 0
  br i1 %i.cr, label %bb.p, label %.preheader81.1.backedge

bb.p:                                             ; preds = %bb.o
  %i.cs = and i32 %i.cq, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @.str.1416, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !52
  %i.cw = sext i8 %i.cv to i32
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1415, i32 noundef %i.cw) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.cz = call i32 @fflush(ptr noundef %i.cy)     ; 0 uses
  br label %.preheader81.1.backedge

.preheader81.1.backedge:                          ; preds = %bb.p, %bb.o
  br label %.preheader81.1, !llvm.loop !1305

bb.q:                                             ; preds = %.preheader81.1
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.db = call i32 @sqlite3_finalize(ptr noundef %i.da) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.fe) #45
  %i.dc = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1417, ptr noundef %2) #45 ; 4 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %shell_check_oom.exit80.1

shell_check_oom.exit80.1:                         ; preds = %bb.q
  %i.de = load ptr, ptr %0, align 8, !tbaa !389
  %i.df = call i32 @sqlite3_prepare_v2(ptr noundef %i.de, ptr noundef nonnull %i.dc, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not76.1 = icmp eq i32 %i.df, 0
  br i1 %.not76.1, label %.loopexit, label %bb.ad

bb.r:                                             ; preds = %.backedge, %.preheader82
  %.1 = phi i32 [ 0, %.preheader82 ], [ %i.eq, %.backedge ] ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dh = call i32 @sqlite3_step(ptr noundef %i.dg) #45
  switch i32 %i.dh, label %bb.ab [
    i32 100, label %.preheader
    i32 101, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.r
  br i1 %i.ba, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %.preheader, %bb.x
  %.16991 = phi i32 [ %.pre-phi109, %bb.x ], [ 0, %.preheader ] ; 12 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dj = call i32 @sqlite3_column_type(ptr noundef %i.di, i32 noundef %.16991) #45
  switch i32 %i.dj, label %.lr.ph92._crit_edge [
    i32 5, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.v
    i32 4, label %bb.w
  ]

.lr.ph92._crit_edge:                              ; preds = %.lr.ph92
  %.pre108 = add nuw nsw i32 %.16991, 1
  br label %bb.x

bb.s:                                             ; preds = %.lr.ph92
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dl = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.dm = call i32 @sqlite3_bind_null(ptr noundef %i.dk, i32 noundef %i.dl) #45 ; 0 uses
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph92
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.do = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dq = call i64 @sqlite3_column_int64(ptr noundef %i.dp, i32 noundef %.16991) #45
  %i.dr = call i32 @sqlite3_bind_int64(ptr noundef %i.dn, i32 noundef %i.do, i64 noundef %i.dq) #45 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph92
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dt = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.dv = call double @sqlite3_column_double(ptr noundef %i.du, i32 noundef %.16991) #45
  %i.dw = call i32 @sqlite3_bind_double(ptr noundef %i.ds, i32 noundef %i.dt, double noundef %i.dv) #45 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %.lr.ph92
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.dy = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ea = call ptr @sqlite3_column_text(ptr noundef %i.dz, i32 noundef %.16991) #45
  %i.eb = call i32 @sqlite3_bind_text(ptr noundef %i.dx, i32 noundef %i.dy, ptr noundef %i.ea, i32 noundef -1, ptr noundef null) #45 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph92
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ed = add nuw nsw i32 %.16991, 1              ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.ef = call ptr @sqlite3_column_blob(ptr noundef %i.ee, i32 noundef %.16991) #45
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.eh = call i32 @sqlite3_column_bytes(ptr noundef %i.eg, i32 noundef %.16991) #45
  %i.ei = call i32 @sqlite3_bind_blob(ptr noundef %i.ec, i32 noundef %i.ed, ptr noundef %i.ef, i32 noundef %i.eh, ptr noundef null) #45 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph92._crit_edge, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.pre-phi109 = phi i32 [ %.pre108, %.lr.ph92._crit_edge ], [ %i.dl, %bb.s ], [ %i.do, %bb.t ], [ %i.dt, %bb.u ], [ %i.dy, %bb.v ], [ %i.ed, %bb.w ] ; 2 uses
  %exitcond105.not = icmp eq i32 %.pre-phi109, %i.r
  br i1 %exitcond105.not, label %._crit_edge93, label %.lr.ph92, !llvm.loop !1304

._crit_edge93:                                    ; preds = %bb.x, %.preheader
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ek = call i32 @sqlite3_step(ptr noundef %i.ej) #45
  switch i32 %i.ek, label %bb.y [
    i32 101, label %bb.z
    i32 100, label %bb.z
    i32 0, label %bb.z
  ]

bb.y:                                             ; preds = %._crit_edge93
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.em = call i32 @sqlite3_extended_errcode(ptr noundef %1) #45
  %i.en = call ptr @sqlite3_errmsg(ptr noundef %1) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.el, ptr noundef nonnull @.str.1414, i32 noundef %i.em, ptr noundef %i.en)
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge93, %._crit_edge93, %._crit_edge93, %bb.y
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.ep = call i32 @sqlite3_reset(ptr noundef %i.eo) #45 ; 0 uses
  %i.eq = add nuw nsw i32 %.1, 1                  ; 3 uses
  %i.er = urem i32 %i.eq, 10000
  %i.es = udiv i32 %i.eq, 10000
  %i.et = icmp eq i32 %i.er, 0
  br i1 %i.et, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %bb.z
  %i.eu = and i32 %i.es, 3
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @.str.1416, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !52
  %i.ey = sext i8 %i.ex to i32
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1415, i32 noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.fb = call i32 @fflush(ptr noundef %i.fa)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.aa, %bb.z
  br label %bb.r, !llvm.loop !1305

bb.ab:                                            ; preds = %bb.r
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.fd = call i32 @sqlite3_finalize(ptr noundef %i.fc) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef nonnull %i.h) #45
  %i.fe = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1417, ptr noundef %2) #45 ; 5 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ac, label %shell_check_oom.exit80

bb.ac:                                            ; preds = %bb.q, %bb.ab
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit80:                           ; preds = %bb.ab
  %i.fg = load ptr, ptr %0, align 8, !tbaa !389
  %i.fh = call i32 @sqlite3_prepare_v2(ptr noundef %i.fg, ptr noundef nonnull %i.fe, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45
  %.not76 = icmp eq i32 %i.fh, 0
  br i1 %.not76, label %.preheader81.1, label %bb.ad

bb.ad:                                            ; preds = %shell_check_oom.exit80.1, %shell_check_oom.exit80
  %.lcssa102 = phi ptr [ %i.fe, %shell_check_oom.exit80 ], [ %i.dc, %shell_check_oom.exit80.1 ]
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !122
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fi, ptr noundef nonnull @.str.1418, ptr noundef %2)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.preheader81.1, %shell_check_oom.exit80.1, %bb.ad, %bb.g, %bb.d
  %.172 = phi ptr [ %i.h, %bb.d ], [ %i.h, %bb.g ], [ %i.dc, %shell_check_oom.exit80.1 ], [ %.lcssa102, %bb.ad ], [ %i.fe, %.preheader81.1 ], [ %i.h, %bb.r ]
  %.070 = phi ptr [ null, %bb.d ], [ %i.v, %bb.g ], [ %i.v, %shell_check_oom.exit80.1 ], [ %i.v, %bb.ad ], [ %i.v, %.preheader81.1 ], [ %i.v, %bb.r ]
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.fk = call i32 @sqlite3_finalize(ptr noundef %i.fj) #45 ; 0 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.fm = call i32 @sqlite3_finalize(ptr noundef %i.fl) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef %.172) #45
  call void @sqlite3_free(ptr noundef %.070) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

declare i32 @sqlite3_extended_errcode(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_null(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_double(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @db_int(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @sqlite3_step(ptr noundef nonnull %i.d) #45
  %i.f = icmp eq i32 %i.e, 100
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @sqlite3_column_int(ptr noundef %.pre5, i32 noundef 0) #45
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi ptr [ %.pre, %bb.c ], [ %.pre5, %bb.b ], [ null, %bb.a ]
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.i = call i32 @sqlite3_finalize(ptr noundef %i.h) #45 ; 0 uses
  call void @sqlite3_free(ptr noundef %i.b) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @recoverSqlCb(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.b, ptr noundef nonnull @.str.440, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @shellPreparePrintf(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull initializes((0, 8)) %2, ptr noundef %3, ...) unnamed_addr #4 {
bb.a:
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  store ptr null, ptr %2, align 8, !tbaa !109
  %i.a = load i32, ptr %1, align 4, !tbaa !53
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #45
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.c = call ptr @sqlite3_vmprintf(ptr noundef %3, ptr noundef nonnull %4) #45 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %1, align 4, !tbaa !53
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !109
  %i.e = load i32, ptr %1, align 4, !tbaa !53
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %shellPrepare.exit

bb.e:                                             ; preds = %bb.d
  %i.g = call i32 @sqlite3_prepare_v2(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef -1, ptr noundef nonnull %2, ptr noundef null) #45 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %shellPrepare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !122
  %i.i = call ptr @sqlite3_errmsg(ptr noundef %0) #45
  %i.j = call i32 @sqlite3_errcode(ptr noundef %0) #45
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.h, ptr noundef nonnull @.str.1463, ptr noundef %i.i, i32 noundef %i.j)
  store i32 %i.g, ptr %1, align 4, !tbaa !53
  br label %shellPrepare.exit

shellPrepare.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  call void @sqlite3_free(ptr noundef nonnull %i.c) #45
  br label %bb.g

bb.g:                                             ; preds = %shellPrepare.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #45
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dump_callback(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %4 = alloca %struct.ShellText, align 8          ; 15 uses
  %5 = alloca %struct.ShellText, align 8          ; 20 uses
  %6 = alloca %struct.Mode, align 8               ; 4 uses
  %i.b = icmp ne i32 %1, 3
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.cl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !88     ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !88   ; 4 uses
  %i.i = icmp eq ptr %i.d, null
  %i.j = icmp eq ptr %i.f, null
  %or.cond107 = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond107, label %bb.cl, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !344  ; 2 uses
  %i.m = and i32 %i.l, 256
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  %i.n = and i32 %i.l, 512
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(16) @.str.722) #46
  %i.q = icmp ne i32 %i.p, 0
  %or.cond3 = select i1 %i.q, i1 true, i1 %i.o
  br i1 %or.cond3, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !389
  %i.s = tail call i32 (ptr, ptr, ...) @db_int(ptr noundef %i.r, ptr noundef nonnull @.str.1470)
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %cli_puts.exit111

bb.e:                                             ; preds = %bb.d
end_hunk_1
