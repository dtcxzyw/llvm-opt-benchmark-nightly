Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@qrfRenderValue:bb.a
  %.02034.i = phi i32 [ %.222.i, %bb.bd ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.ld = add nsw i32 %.02034.i, %.01935.i
  %i.le = sdiv i32 %i.ld, 2                       ; 3 uses
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !26 ; 2 uses
  %i.lj = icmp slt i32 %i.li, %.sink.i205
  br i1 %i.lj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i206
  %i.lk = icmp sgt i32 %i.li, %.sink.i205
  br i1 %i.lk, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.ll = add nsw i32 %i.le, -1
  br label %bb.bd

.thread.i:                                        ; preds = %bb.bb
  %i.lm = load i8, ptr %i.lg, align 8, !tbaa !27
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
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !26
  %i.lt = icmp sgt i32 %i.ls, %.sink.i205
  br i1 %i.lt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lu = sext i32 %.222.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.bg:                                            ; preds = %bb.be
  %i.lx = load i8, ptr %i.lq, align 8, !tbaa !27
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
  call void @sqlite3_str_truncate(ptr noundef %1, i32 noundef %i.mb) #20
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef 3) #20
  br label %.critedge200

.critedge200:                                     ; preds = %bb.c, %bb.ac, %bb.y, %.loopexit, %bb.ai, %bb.bi, %bb.bh
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qrfLoadAlignment(i32 %.8.val, ptr nofree writeonly captures(none) %.64.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %.8.val to i64
  %i.b = icmp sgt i32 %.8.val, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.d = load i8, ptr %i.c, align 1, !tbaa !83    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84
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
  store i8 %i.d, ptr %i.n, align 8, !tbaa !73
  %i.o = icmp slt i64 %.01, %i.g
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !314
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01
  %i.r = load i8, ptr %i.q, align 1, !tbaa !29
  %i.s = and i8 %i.r, 3                           ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = or disjoint i8 %i.s, %i.j
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 8, !tbaa !75
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %.01, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !315
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.01
  %i.z = load i16, ptr %i.y, align 2, !tbaa !76
  %i.aa = icmp slt i16 %i.z, 0
  br i1 %i.aa, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.sink = phi i8 [ %i.t, %bb.d ], [ %i.k, %bb.f ]
  store i8 %.sink, ptr %i.n, align 8, !tbaa !73
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
  %i.b = load i16, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call ptr @sqlite3_malloc64(i64 noundef 8) #20 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

.loopexit:                                        ; preds = %bb.h
  %i.g = trunc nsw i64 %indvars.iv.next to i32
  %i.h = load i16, ptr %i.a, align 8, !tbaa !52
  %i.i = shl nsw i64 %indvars.iv.next, 2
  %i.j = tail call ptr @sqlite3_malloc64(i64 noundef %i.i) #20 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %bb.b, !llvm.loop !316

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0135.lcssa = phi ptr [ null, %bb.a ], [ %i.l, %.loopexit ]
  %.0129.lcssa = phi i64 [ 1, %bb.a ], [ %i.az, %.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.0132174, %.loopexit ]
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
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
  %i.o = load i64, ptr %i.e, align 8, !tbaa !69   ; 4 uses
  %i.p = add nsw i64 %i.m, -1                     ; 2 uses
  %i.q = add i64 %i.p, %i.o
  %i.r = sdiv i64 %i.q, %i.m
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp sgt i64 %i.o, 0
  br i1 %i.t, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30   ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %i.o, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.c, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 1, %bb.c ] ; 4 uses
  %.03847.i = phi i32 [ %.1.i, %bb.f ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.x = srem i32 %i.w, %i.s
  %i.y = sdiv exact i32 %i.w, %i.s
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.peel.next.i
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [4 x i8], ptr %i.l, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  store i32 %.03847.i, ptr %i.ac, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %.peel.next.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.03847.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.ae, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !317

._crit_edge.i:                                    ; preds = %bb.f, %bb.c, %bb.b
  %.038.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.v, %bb.c ], [ %.1.i, %bb.f ]
  %i.ah = add nsw i32 %.0132174, -1               ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ai
  store i32 %.038.lcssa.i, ptr %i.aj, align 4, !tbaa !30
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
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !30
  %wide.load253 = load <4 x i32>, ptr %i.am, align 4, !tbaa !30
  %i.an = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ao = add <4 x i32> %wide.load253, %vec.phi252 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !318

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
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.at = add nsw i32 %i.as, %.049.i              ; 2 uses
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count.i
  br i1 %exitcond59.not.i, label %._crit_edge52.i, label %.lr.ph51.i, !llvm.loop !319

._crit_edge52.i:                                  ; preds = %.lr.ph51.i, %middle.block, %._crit_edge.i
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ %i.aq, %middle.block ], [ %i.at, %.lr.ph51.i ]
  %i.au = shl nsw i32 %i.ah, 1
  %i.av = add nsw i32 %.0.lcssa.i, %i.au
  %i.aw = icmp sgt i32 %i.av, %i.n
  br i1 %i.aw, label %bb.g, label %qrfValidLayout.exit

bb.g:                                             ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef nonnull %i.l) #20
  br label %qrfValidLayout.exit.thread

qrfValidLayout.exit:                              ; preds = %._crit_edge52.i
  tail call void @sqlite3_free(ptr noundef %.0135173) #20
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !69  ; 2 uses
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
  br i1 %i.be, label %bb.h, label %.loopexit, !llvm.loop !316

qrfValidLayout.exit.thread:                       ; preds = %qrfValidLayout.exit, %bb.g, %._crit_edge
  %.1136.ph = phi ptr [ %.0135173, %bb.g ], [ %.0135.lcssa, %._crit_edge ], [ %i.l, %qrfValidLayout.exit ] ; 5 uses
  %.1130.ph = phi i64 [ %.0129175, %bb.g ], [ %.0129.lcssa, %._crit_edge ], [ 1, %qrfValidLayout.exit ] ; 5 uses
  %.1.ph = phi i32 [ %.0176, %bb.g ], [ %.0.lcssa, %._crit_edge ], [ %.0132174, %qrfValidLayout.exit ] ; 9 uses
  %i.bf = icmp eq i32 %.1.ph, 1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %qrfValidLayout.exit.thread
  tail call void @sqlite3_free(ptr noundef %.1136.ph) #20
  br label %bb.v

bb.j:                                             ; preds = %qrfValidLayout.exit.thread
  %i.bg = sext i32 %.1.ph to i64                  ; 8 uses
  %i.bh = mul nsw i64 %.1130.ph, %i.bg            ; 7 uses
  %i.bi = shl i64 %i.bh, 3
  %i.bj = tail call ptr @sqlite3_malloc64(i64 noundef %i.bi) #20 ; 7 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bl = shl i64 %i.bh, 2
  %i.bm = tail call ptr @sqlite3_malloc64(i64 noundef %i.bl) #20 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #20
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.bo = mul nsw i64 %i.bg, 24
  %i.bp = tail call ptr @sqlite3_malloc64(i64 noundef %i.bo) #20 ; 15 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #20
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #20
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.br = tail call ptr @sqlite3_malloc64(i64 noundef %i.bh) #20 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.q, label %.preheader156

.preheader156:                                    ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !69
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph180, label %.preheader155

.lr.ph180:                                        ; preds = %.preheader156
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.bw, align 8, !tbaa !71
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @sqlite3_free(ptr noundef nonnull %i.bj) #20
  tail call void @sqlite3_free(ptr noundef nonnull %i.bm) #20
  tail call void @sqlite3_free(ptr noundef nonnull %i.bp) #20
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.15)
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
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !66
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.ce
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !66
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0127179
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = getelementptr inbounds i8, ptr %i.br, i64 %i.ce
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !29
end_hunk_0
begin_hunk_1_@qrfEqpRender:bb.a
  br i1 %.not.i37, label %qrfEqpReset.exit45, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95   ; 2 uses
  %.not910.i38 = icmp eq ptr %i.v, null
  br i1 %.not910.i38, label %qrfEqpReset.exit45.sink.split, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.h, %.lr.ph.i39
  %.011.i40 = phi ptr [ %i.x, %.lr.ph.i39 ], [ %i.v, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i40, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93   ; 2 uses
  tail call void @sqlite3_free(ptr noundef nonnull %.011.i40) #20
  %.not9.i41 = icmp eq ptr %i.x, null
  br i1 %.not9.i41, label %qrfEqpReset.exit45.sink.split.sink.split, label %.lr.ph.i39, !llvm.loop !335

qrfEqpReset.exit45.sink.split.sink.split:         ; preds = %.lr.ph.i39, %.lr.ph.i
  %.pre.i43 = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %qrfEqpReset.exit45.sink.split

qrfEqpReset.exit45.sink.split:                    ; preds = %qrfEqpReset.exit45.sink.split.sink.split, %bb.h
  %.sink = phi ptr [ %i.u, %bb.h ], [ %.pre.i43, %qrfEqpReset.exit45.sink.split.sink.split ]
  tail call void @sqlite3_free(ptr noundef %.sink) #20
  store ptr null, ptr %i.a, align 8, !tbaa !29
  br label %qrfEqpReset.exit45

qrfEqpReset.exit45:                               ; preds = %qrfEqpReset.exit45.sink.split, %bb.g, %bb.a, %bb.b
  ret void
}

declare i32 @sqlite3_keyword_check(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfEqpRenderLevel(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %.fr33 = freeze i64 %i.d                        ; 3 uses
  %.010.i = load ptr, ptr %i.b, align 8, !tbaa !338 ; 2 uses
  %.not811.i = icmp eq ptr %.010.i, null
  br i1 %.not811.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.012.i = phi ptr [ %.0.i, %bb.b ], [ %.010.i, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92
  %.not9.i = icmp eq i32 %i.f, %1
  br i1 %.not9.i, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.0.i = load ptr, ptr %i.g, align 8, !tbaa !338 ; 2 uses
  %.not8.i = icmp eq ptr %.0.i, null
  br i1 %.not8.i, label %._crit_edge, label %.lr.ph.i, !llvm.loop !336

.lr.ph:                                           ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = icmp slt i64 %.fr33, 393
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %qrfEqpNextRow.exit30.us
  %.032.us = phi ptr [ %.0.lcssa.i29.us, %qrfEqpNextRow.exit30.us ], [ %.012.i, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.032.us, i64 8
  %.010.i22.us = load ptr, ptr %i.j, align 8, !tbaa !338 ; 2 uses
  %.not811.i23.us = icmp eq ptr %.010.i22.us, null
  br i1 %.not811.i23.us, label %qrfEqpNextRow.exit30.us, label %.lr.ph.i24.us

.lr.ph.i24.us:                                    ; preds = %.lr.ph.split.us, %bb.c
  %.012.i25.us = phi ptr [ %.0.i27.us, %bb.c ], [ %.010.i22.us, %.lr.ph.split.us ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i25.us, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !92
  %.not9.i26.us = icmp eq i32 %i.l, %1
  br i1 %.not9.i26.us, label %qrfEqpNextRow.exit30.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i24.us
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i25.us, i64 8
  %.0.i27.us = load ptr, ptr %i.m, align 8, !tbaa !338 ; 2 uses
  %.not8.i28.us = icmp eq ptr %.0.i27.us, null
  br i1 %.not8.i28.us, label %qrfEqpNextRow.exit30.us, label %.lr.ph.i24.us, !llvm.loop !336

qrfEqpNextRow.exit30.us:                          ; preds = %.lr.ph.i24.us, %bb.c, %.lr.ph.split.us
  %.0.lcssa.i29.us = phi ptr [ null, %.lr.ph.split.us ], [ %.012.i25.us, %.lr.ph.i24.us ], [ null, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.032.us, i64 16
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %.not21.us = icmp eq ptr %.0.lcssa.i29.us, null ; 3 uses
  %i.r = select i1 %.not21.us, ptr @.str.121, ptr @.str.120
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.o, ptr noundef nonnull @.str.119, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.n) #20
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.fr33
  %i.v = select i1 %.not21.us, i32 2105376, i32 2105468
  store i32 %i.v, ptr %i.u, align 1
  %i.w = load i32, ptr %.032.us, align 8, !tbaa !91
  tail call fastcc void @qrfEqpRenderLevel(ptr noundef %0, i32 noundef %i.w)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %.fr33
  store i8 0, ptr %i.z, align 1, !tbaa !29
  br i1 %.not21.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !337

.lr.ph.split:                                     ; preds = %.lr.ph, %qrfEqpNextRow.exit30
  %.032 = phi ptr [ %.0.lcssa.i29, %qrfEqpNextRow.exit30 ], [ %.012.i, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %.010.i22 = load ptr, ptr %i.aa, align 8, !tbaa !338 ; 2 uses
  %.not811.i23 = icmp eq ptr %.010.i22, null
  br i1 %.not811.i23, label %qrfEqpNextRow.exit30, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.split, %bb.d
  %.012.i25 = phi ptr [ %.0.i27, %bb.d ], [ %.010.i22, %.lr.ph.split ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i25, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !92
  %.not9.i26 = icmp eq i32 %i.ac, %1
  br i1 %.not9.i26, label %qrfEqpNextRow.exit30, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i24
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i25, i64 8
  %.0.i27 = load ptr, ptr %i.ad, align 8, !tbaa !338 ; 2 uses
  %.not8.i28 = icmp eq ptr %.0.i27, null
  br i1 %.not8.i28, label %qrfEqpNextRow.exit30, label %.lr.ph.i24, !llvm.loop !336

qrfEqpNextRow.exit30:                             ; preds = %.lr.ph.i24, %bb.d, %.lr.ph.split
  %.0.lcssa.i29 = phi ptr [ null, %.lr.ph.split ], [ %.012.i25, %.lr.ph.i24 ], [ null, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %.not21 = icmp eq ptr %.0.lcssa.i29, null       ; 2 uses
  %i.ai = select i1 %.not21, ptr @.str.121, ptr @.str.120
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.af, ptr noundef nonnull @.str.119, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ae) #20
  br i1 %.not21, label %._crit_edge, label %.lr.ph.split, !llvm.loop !337

._crit_edge:                                      ; preds = %bb.b, %qrfEqpNextRow.exit30, %qrfEqpNextRow.exit30.us, %bb.a
  ret void
}

declare ptr @sqlite3_libversion() local_unnamed_addr #5

declare ptr @sqlite3_sourceid() local_unnamed_addr #5

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_errcode(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DbUseNre() unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123
  call void %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #20
  %i.f = load i32, ptr %i.a, align 4, !tbaa !30   ; 2 uses
  %i.g = icmp eq i32 %i.f, 8
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp sgt i32 %i.h, 5
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  %i.j = icmp sgt i32 %i.f, 8
  %i.k = or i1 %i.j, %or.cond
  %i.l = zext i1 %i.k to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal i32 @DbObjCmdAdaptor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4720
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.d = tail call i32 %i.c(ptr noundef %1, ptr noundef nonnull @DbObjCmd, ptr noundef %0, i32 noundef %2, ptr noundef %3) #20
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @DbObjCmd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 11 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 15 uses
  %i.o = alloca [80 x i8], align 16               ; 5 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.DbEvalContext, align 8      ; 12 uses
  %5 = alloca %struct.DbEvalContext, align 8      ; 12 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca [2 x ptr], align 16               ; 5 uses
  %i.x = alloca i32, align 4                      ; 7 uses
  %i.y = alloca i32, align 4                      ; 8 uses
  %i.z = alloca [6 x ptr], align 16               ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i32, align 4                     ; 6 uses
  %i.ac = alloca i32, align 4                     ; 6 uses
  %i.ad = alloca i32, align 4                     ; 5 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %i.af = alloca ptr, align 8                     ; 9 uses
  %i.ag = alloca i64, align 8                     ; 9 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %i.aj = alloca i32, align 4                     ; 9 uses
  %i.ak = alloca ptr, align 8                     ; 6 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %i.am = alloca i64, align 8                     ; 5 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ao = icmp slt i32 %2, 2
  %i.ap = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2128
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !102
  tail call void %i.ar(ptr noundef %1, i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.185) #20
  br label %.critedge1185

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 2448
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !129
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !105
  %i.aw = call i32 %i.at(ptr noundef %1, ptr noundef %i.av, ptr noundef nonnull @DbObjCmd.DB_strs, i32 noundef 8, ptr noundef nonnull @.str.186, i32 noundef 0, ptr noundef nonnull %i.c) #20
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.d, label %.critedge1185

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !30  ; 4 uses
  switch i32 %i.ax, label %.critedge1185 [
    i32 0, label %bb.e
    i32 1, label %bb.q
    i32 2, label %bb.aa
    i32 3, label %bb.al
    i32 4, label %bb.ax
    i32 5, label %bb.bo
    i32 6, label %bb.bq
    i32 7, label %bb.br
    i32 8, label %bb.bx
    i32 9, label %bb.cd
    i32 10, label %bb.cp
    i32 11, label %bb.cr
    i32 12, label %bb.dq
    i32 13, label %bb.fh
    i32 14, label %bb.fy
    i32 15, label %bb.gc
    i32 16, label %bb.gd
    i32 18, label %bb.ge
    i32 25, label %bb.ge
    i32 17, label %.preheader1334
    i32 19, label %bb.hd
    i32 20, label %bb.he
    i32 21, label %bb.ic
    i32 22, label %bb.ik
    i32 24, label %bb.il
    i32 23, label %bb.iv
    i32 28, label %bb.ix
    i32 27, label %bb.jk
    i32 29, label %bb.jw
    i32 30, label %bb.jy
    i32 32, label %bb.kj
    i32 33, label %bb.kp
    i32 34, label %bb.kx
    i32 35, label %bb.lb
    i32 36, label %bb.ld
    i32 37, label %bb.lp
    i32 38, label %bb.mn
    i32 39, label %bb.mx
    i32 26, label %bb.my
    i32 42, label %bb.mz
    i32 40, label %bb.mz
    i32 31, label %bb.mz
    i32 41, label %bb.nd
  ]

.preheader1334:                                   ; preds = %bb.d
  %i.ay = icmp samesign ugt i32 %2, 3
  br i1 %i.ay, label %.lr.ph1398, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.az = icmp samesign ugt i32 %2, 3
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2128
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !102
  call void %i.bc(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.187) #20
  br label %.critedge1185

bb.g:                                             ; preds = %bb.e
  %i.bd = icmp eq i32 %2, 2
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !130 ; 2 uses
  %.not1177 = icmp eq ptr %i.bf, null
  br i1 %.not1177, label %.critedge1185, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 576
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  call void (ptr, ...) %i.bi(ptr noundef %1, ptr noundef nonnull %i.bf, ptr noundef null) #20
  br label %.critedge1185

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !130 ; 2 uses
  %.not1175 = icmp eq ptr %i.bk, null
  br i1 %.not1175, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !119
  call void %i.bn(ptr noundef nonnull %i.bk) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 344
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !105
  %i.bt = call ptr %i.bq(ptr noundef %i.bs, ptr noundef nonnull %i.d) #20 ; 2 uses
  %i.bu = icmp ne ptr %i.bt, null
  %i.bv = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  %or.cond = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  store ptr null, ptr %i.bj, align 8, !tbaa !130
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !109
  %i.ca = add nuw nsw i32 %i.bv, 1
  %i.cb = call ptr %i.bz(i32 noundef %i.ca) #20   ; 2 uses
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !130
  %i.cc = load i32, ptr %i.d, align 4, !tbaa !30
  %i.cd = add nsw i32 %i.cc, 1
  %i.ce = sext i32 %i.cd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bt, i64 %i.ce, i1 false)
  %.pr = load ptr, ptr %i.bj, align 8, !tbaa !130
  %.not1176 = icmp eq ptr %.pr, null
  br i1 %.not1176, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.cf, align 8, !tbaa !122
  %i.cg = load ptr, ptr %0, align 8, !tbaa !117
  %i.ch = call i32 @sqlite3_set_authorizer(ptr noundef %i.cg, ptr noundef nonnull @auth_callback, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.thread, %bb.m
  %i.ci = load ptr, ptr %0, align 8, !tbaa !117
  %i.cj = call i32 @sqlite3_set_authorizer(ptr noundef %i.ci, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.critedge1185

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ck = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 3 uses
  switch i32 %2, label %bb.s [
    i32 3, label %bb.t
    i32 4, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2736
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !107
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !105
end_hunk_1
begin_hunk_2_@DbObjCmd:bb.a
  %i.xi = phi i8 [ %i.xt, %bb.et ], [ %.pre1489, %.lr.ph1434.preheader ] ; 3 uses
  %i.xj = phi i8 [ %i.xv, %bb.et ], [ %i.xh, %.lr.ph1434.preheader ]
  %.09431432 = phi ptr [ %i.xu, %bb.et ], [ %i.xg, %.lr.ph1434.preheader ] ; 6 uses
  %.19541431 = phi i32 [ %.2955, %bb.et ], [ 0, %.lr.ph1434.preheader ] ; 3 uses
  %i.xk = icmp eq i8 %i.xj, %i.xi
  br i1 %i.xk, label %bb.eq, label %bb.et

bb.eq:                                            ; preds = %.lr.ph1434
  %i.xl = call i32 @strncmp(ptr noundef nonnull %.09431432, ptr noundef nonnull %.09461246, i64 noundef %i.sn) #21
  %i.xm = icmp eq i32 %i.xl, 0
  br i1 %i.xm, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  store i8 0, ptr %.09431432, align 1, !tbaa !29
  %i.xn = add nsw i32 %.19541431, 1               ; 4 uses
  %i.xo = icmp slt i32 %i.xn, %i.tr
  %.pre1488 = load i8, ptr %.09461246, align 1, !tbaa !29 ; 2 uses
  br i1 %i.xo, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.xp = getelementptr i8, ptr %.09431432, i64 %i.sn ; 2 uses
  %i.xq = sext i32 %i.xn to i64
  %i.xr = getelementptr inbounds [8 x i8], ptr %i.wf, i64 %i.xq
  store ptr %i.xp, ptr %i.xr, align 8, !tbaa !66
  %i.xs = getelementptr i8, ptr %i.xp, i64 -1
  br label %bb.et

bb.et:                                            ; preds = %.lr.ph1434, %bb.eq, %bb.es, %bb.er
  %i.xt = phi i8 [ %.pre1488, %bb.es ], [ %.pre1488, %bb.er ], [ %i.xi, %bb.eq ], [ %i.xi, %.lr.ph1434 ]
  %.2955 = phi i32 [ %i.xn, %bb.es ], [ %i.xn, %bb.er ], [ %.19541431, %bb.eq ], [ %.19541431, %.lr.ph1434 ] ; 2 uses
  %.1944 = phi ptr [ %i.xs, %bb.es ], [ %.09431432, %bb.er ], [ %.09431432, %bb.eq ], [ %.09431432, %.lr.ph1434 ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.1944, i64 1 ; 2 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !29  ; 2 uses
  %.not1152 = icmp eq i8 %i.xv, 0
  br i1 %.not1152, label %._crit_edge1435.loopexit, label %.lr.ph1434, !llvm.loop !345

._crit_edge1435.loopexit:                         ; preds = %bb.et
  %i.xw = add nsw i32 %.2955, 1
  br label %._crit_edge1435

._crit_edge1435:                                  ; preds = %._crit_edge1435.loopexit, %bb.ep
  %.1954.lcssa = phi i32 [ 1, %bb.ep ], [ %i.xw, %._crit_edge1435.loopexit ] ; 2 uses
  %.not1153 = icmp eq i32 %.1954.lcssa, %i.tr
  br i1 %.not1153, label %.preheader1331, label %bb.eu

.preheader1331:                                   ; preds = %._crit_edge1435
  br i1 %i.xa, label %.lr.ph1438, label %._crit_edge1439

bb.eu:                                            ; preds = %._crit_edge1435
  %strlen.i1227 = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %i.sm)
  %i.xx = trunc i64 %strlen.i1227 to i32
  %i.xy = and i32 %i.xx, 1073741823
  %i.xz = add nuw nsw i32 %i.xy, 200              ; 2 uses
  %i.ya = zext nneg i32 %i.xz to i64
  %i.yb = call noalias ptr @malloc(i64 noundef %i.ya) #22 ; 4 uses
  %.not1156 = icmp eq ptr %i.yb, null
  br i1 %.not1156, label %.thread1250, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yc = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.xz, ptr noundef nonnull %i.yb, ptr noundef nonnull @.str.242, ptr noundef nonnull %i.sm, i32 noundef %i.xc, i32 noundef %i.tr, i32 noundef %.1954.lcssa) #20 ; 0 uses
  %i.yd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 576
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !106
  call void (ptr, ...) %i.yf(ptr noundef %1, ptr noundef nonnull %i.yb, ptr noundef null) #20
  call void @free(ptr noundef nonnull %i.yb) #20
  br label %.thread1250

.lr.ph1438:                                       ; preds = %.preheader1331, %bb.ez
  %indvars.iv1476 = phi i64 [ %indvars.iv.next1477.pre-phi, %bb.ez ], [ 0, %.preheader1331 ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %indvars.iv1476
  %.pre1490 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !66 ; 3 uses
  br i1 %.not1155, label %.lr.ph1438._crit_edge, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph1438
  %i.yg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre1490, ptr noundef nonnull dereferenceable(1) %.0945) #21
  %i.yh = icmp eq i32 %i.yg, 0
  br i1 %i.yh, label %bb.ex, label %.lr.ph1438._crit_edge

.lr.ph1438._crit_edge:                            ; preds = %.lr.ph1438, %bb.ew
  %strlen.i1228 = call i64 @strlen(ptr nonnull readonly dereferenceable(1) %.pre1490)
  %i.yi = and i64 %strlen.i1228, 1073741823
  %i.yj = icmp eq i64 %i.yi, 0
  br i1 %i.yj, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.lr.ph1438._crit_edge, %bb.ew
  %i.yk = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.yl = add nuw nsw i64 %indvars.iv1476, 1      ; 2 uses
  %i.ym = trunc nuw nsw i64 %i.yl to i32
  %i.yn = call i32 @sqlite3_bind_null(ptr noundef %i.yk, i32 noundef %i.ym) #20 ; 0 uses
  br label %bb.ez

bb.ey:                                            ; preds = %.lr.ph1438._crit_edge
  %i.yo = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.yp = add nuw nsw i64 %indvars.iv1476, 1      ; 2 uses
  %i.yq = trunc nuw nsw i64 %i.yp to i32
  %i.yr = call i32 @sqlite3_bind_text(ptr noundef %i.yo, i32 noundef %i.yq, ptr noundef nonnull %.pre1490, i32 noundef -1, ptr noundef null) #20 ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey
  %indvars.iv.next1477.pre-phi = phi i64 [ %i.yl, %bb.ex ], [ %i.yp, %bb.ey ] ; 2 uses
  %exitcond1479.not = icmp eq i64 %indvars.iv.next1477.pre-phi, %wide.trip.count
  br i1 %exitcond1479.not, label %._crit_edge1439, label %.lr.ph1438, !llvm.loop !346

._crit_edge1439:                                  ; preds = %bb.ez, %.preheader1331
  %i.ys = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.yt = call i32 @sqlite3_step(ptr noundef %i.ys) #20 ; 0 uses
  %i.yu = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.yv = call i32 @sqlite3_reset(ptr noundef %i.yu) #20
  %i.yw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 528
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !366
  call void %i.yy(ptr noundef nonnull %i.wq, i32 noundef 0) #20
  %.not1154 = icmp eq i32 %i.yv, 0
  br i1 %.not1154, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge1439
  %i.yz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 576
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !106
  %i.zc = load ptr, ptr %0, align 8, !tbaa !117
  %i.zd = call ptr @sqlite3_errmsg(ptr noundef %i.zc) #20
  call void (ptr, ...) %i.zb(ptr noundef %1, ptr noundef nonnull @.str.234, ptr noundef %i.zd, ptr noundef null) #20
  br label %.thread1250

.thread1250:                                      ; preds = %bb.eu, %bb.fa, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  br label %.loopexit1332

bb.fb:                                            ; preds = %._crit_edge1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #20
  %i.ze = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1376
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !365
  %i.zh = call i32 %i.zg(ptr noundef nonnull %i.vu, ptr noundef nonnull %i.wq) #20
  %i.zi = icmp sgt i32 %i.zh, -1
  br i1 %i.zi, label %bb.ep, label %.loopexit1332

.loopexit1332:                                    ; preds = %bb.fb, %bb.eo, %.thread1250
  %.2951 = phi ptr [ @.str.243, %.thread1250 ], [ @.str.241, %bb.eo ], [ @.str.241, %bb.fb ] ; 2 uses
  %.1948 = phi i32 [ %i.xc, %.thread1250 ], [ 0, %bb.eo ], [ %i.xc, %bb.fb ] ; 2 uses
  %i.zj = load i32, ptr %i.wq, align 8, !tbaa !143 ; 2 uses
  %i.zk = add nsw i32 %i.zj, -1
  store i32 %i.zk, ptr %i.wq, align 8, !tbaa !143
  %i.zl = icmp slt i32 %i.zj, 2
  br i1 %i.zl, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.loopexit1332
  %i.zm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 256
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !144
  call void %i.zo(ptr noundef nonnull %i.wq) #20
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %.loopexit1332
  call void @free(ptr noundef %i.wf) #20
  %i.zp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 664
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !364
  %i.zs = call i32 %i.zr(ptr noundef %1, ptr noundef nonnull %i.vu) #20 ; 0 uses
  %i.zt = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.zu = call i32 @sqlite3_finalize(ptr noundef %i.zt) #20 ; 0 uses
  %i.zv = load ptr, ptr %0, align 8, !tbaa !117
  %i.zw = call i32 @sqlite3_exec(ptr noundef %i.zv, ptr noundef nonnull %.2951, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  %i.zx = load i8, ptr %.2951, align 1, !tbaa !29
  %i.zy = icmp eq i8 %i.zx, 67
  br i1 %i.zy, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.zz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 1344
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !134
  %i.aac = call ptr %i.aab(ptr noundef %1) #20
  %i.aad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 504
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !357
  call void %i.aaf(ptr noundef %i.aac, i32 noundef %.1948) #20
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.aag = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 80, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.244, i32 noundef %.1948) #20 ; 0 uses
  %i.aah = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 576
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !106
  call void (ptr, ...) %i.aaj(ptr noundef %1, ptr noundef nonnull @.str.245, ptr noundef nonnull %i.o, ptr noundef null) #20
  br label %bb.fg

.thread1254:                                      ; preds = %bb.dr, %bb.dv, %bb.eb, %bb.ed, %bb.ef, %bb.eh, %bb.ej, %bb.el, %bb.en, %.thread1247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %.critedge1185

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  %.31000 = phi i32 [ 1, %bb.ff ], [ 0, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #20
  br label %.critedge1185

bb.fh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #20
  store i32 0, ptr %i.s, align 4, !tbaa !30
  %i.aak = icmp eq i32 %2, 2
  br i1 %i.aak, label %bb.fi, label %.preheader1333

.preheader1333:                                   ; preds = %bb.fh
  %i.aal = add nsw i32 %2, -1                     ; 2 uses
  %i.aam = icmp samesign ugt i32 %2, 3
  br i1 %i.aam, label %.lr.ph1420, label %._crit_edge1421

.lr.ph1420:                                       ; preds = %.preheader1333
  %i.aan = add nsw i32 %2, -2                     ; 3 uses
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.aao = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 2128
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !102
  call void %i.aaq(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.246) #20
  br label %.thread1269

bb.fj:                                            ; preds = %.lr.ph1420, %.thread1258
  %.09391419 = phi i32 [ 2, %.lr.ph1420 ], [ %i.aca, %.thread1258 ] ; 5 uses
  %.09411418 = phi ptr [ null, %.lr.ph1420 ], [ %.19421264, %.thread1258 ] ; 3 uses
  %6 = phi i64 [ 0, %.lr.ph1420 ], [ %7, %.thread1258 ] ; 2 uses
  %i.aar = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 2736
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !107
  %i.aau = sext i32 %.09391419 to i64
  %i.aav = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aau
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !105
  %i.aax = call ptr %i.aat(ptr noundef %i.aaw) #20 ; 5 uses
  %i.aay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aax, ptr noundef nonnull dereferenceable(9) @.str.247) #21
  %i.aaz = icmp eq i32 %i.aay, 0
  %i.aba = icmp slt i32 %.09391419, %i.aan        ; 2 uses
  %or.cond1187 = select i1 %i.aaz, i1 %i.aba, i1 false
  br i1 %or.cond1187, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #20
  %i.abb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 3912
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !154
  %i.abe = add nsw i32 %.09391419, 1              ; 2 uses
  %i.abf = sext i32 %i.abe to i64
  %i.abg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.abf
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !105
  %i.abi = call i32 %i.abd(ptr noundef %1, ptr noundef %i.abh, ptr noundef nonnull %i.t) #20 ; 2 uses
  %.not1144 = icmp eq i32 %i.abi, 0
  br i1 %.not1144, label %.thread1274, label %bb.fq

.thread1274:                                      ; preds = %bb.fk
  %i.abj = load i64, ptr %i.t, align 8, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  br label %.thread1258

bb.fl:                                            ; preds = %bb.fj
  %i.abk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aax, ptr noundef nonnull dereferenceable(10) @.str.133) #21
  %i.abl = icmp eq i32 %i.abk, 0
  %or.cond1189 = select i1 %i.abl, i1 %i.aba, i1 false
  br i1 %or.cond1189, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.abm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 272
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !108
  %i.abp = add nsw i32 %.09391419, 1              ; 2 uses
  %i.abq = sext i32 %i.abp to i64
  %i.abr = getelementptr inbounds [8 x i8], ptr %3, i64 %i.abq
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !105
  %i.abt = call i32 %i.abo(ptr noundef %1, ptr noundef %i.abs, ptr noundef nonnull %i.s) #20 ; 2 uses
  %.not1143 = icmp eq i32 %i.abt, 0
  br i1 %.not1143, label %.thread1258, label %.thread1269

bb.fn:                                            ; preds = %bb.fl
  %i.abu = icmp eq ptr %.09411418, null
  %i.abv = icmp eq i32 %.09391419, %i.aan
  %or.cond1192 = select i1 %i.abu, i1 %i.abv, i1 false
  br i1 %or.cond1192, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.abw = load i8, ptr %i.aax, align 1, !tbaa !29
  %.not1142 = icmp eq i8 %i.abw, 45
  br i1 %.not1142, label %bb.fp, label %.thread1258

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.abx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 576
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !106
  call void (ptr, ...) %i.abz(ptr noundef %1, ptr noundef nonnull @.str.140, ptr noundef nonnull %i.aax, ptr noundef null) #20
  br label %.thread1269

bb.fq:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #20
  br label %.thread1269

.thread1258:                                      ; preds = %bb.fm, %bb.fo, %.thread1274
  %7 = phi i64 [ %i.abj, %.thread1274 ], [ %6, %bb.fo ], [ %6, %bb.fm ] ; 2 uses
  %.19401265 = phi i32 [ %i.abe, %.thread1274 ], [ %i.aan, %bb.fo ], [ %i.abp, %bb.fm ]
  %.19421264 = phi ptr [ %.09411418, %.thread1274 ], [ %i.aax, %bb.fo ], [ %.09411418, %bb.fm ] ; 2 uses
  %i.aca = add nsw i32 %.19401265, 1              ; 2 uses
  %i.acb = icmp slt i32 %i.aca, %i.aal
  br i1 %i.acb, label %bb.fj, label %._crit_edge1421, !llvm.loop !347

._crit_edge1421:                                  ; preds = %.thread1258, %.preheader1333
  %.lcssa1418 = phi i64 [ 0, %.preheader1333 ], [ %7, %.thread1258 ]
  %.0941.lcssa = phi ptr [ null, %.preheader1333 ], [ %.19421264, %.thread1258 ] ; 2 uses
  store i64 %.lcssa1418, ptr %i.r, align 8
  %i.acc = zext nneg i32 %i.aal to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.acc
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !105
  %i.acf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 280
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !153
  %i.aci = call ptr %i.ach(ptr noundef %i.ace, ptr noundef nonnull %i.q) #20
  %i.acj = load i32, ptr %i.q, align 4, !tbaa !30
  %i.ack = sext i32 %i.acj to i64
  %i.acl = call ptr @sqlite3_malloc64(i64 noundef %i.ack) #20 ; 3 uses
  %i.acm = icmp eq ptr %i.acl, null
  %i.acn = load i32, ptr %i.q, align 4            ; 3 uses
  %i.aco = icmp sgt i32 %i.acn, 0                 ; 2 uses
  %or.cond39 = select i1 %i.acm, i1 %i.aco, i1 false
  br i1 %or.cond39, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %._crit_edge1421
  %i.acp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 576
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !106
  call void (ptr, ...) %i.acr(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef null) #20
  br label %.thread1269

bb.fs:                                            ; preds = %._crit_edge1421
  br i1 %i.aco, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.acs = zext nneg i32 %i.acn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acl, ptr align 1 %i.aci, i64 %i.acs, i1 false)
  %.pre = load i32, ptr %i.q, align 4, !tbaa !30
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.act = phi i32 [ %.pre, %bb.ft ], [ %i.acn, %bb.fs ]
  %i.acu = load i32, ptr %i.s, align 4, !tbaa !30
  %.not1140 = icmp eq i32 %i.acu, 0
  %.1193 = select i1 %.not1140, i32 3, i32 5
  %i.acv = load ptr, ptr %0, align 8, !tbaa !117
  %i.acw = sext i32 %i.act to i64                 ; 2 uses
  %i.acx = call i32 @sqlite3_deserialize(ptr noundef %i.acv, ptr noundef %.0941.lcssa, ptr noundef %i.acl, i64 noundef %i.acw, i64 noundef %i.acw, i32 noundef %.1193) #20
  %.not1141 = icmp eq i32 %i.acx, 0
  br i1 %.not1141, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.acy = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 576
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !106
  call void (ptr, ...) %i.ada(ptr noundef %1, ptr noundef nonnull @.str.248, ptr noundef null) #20
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.61003 = phi i32 [ 1, %bb.fv ], [ 0, %bb.fu ]  ; 2 uses
  %i.adb = load i64, ptr %i.r, align 8, !tbaa !155
  %i.adc = icmp sgt i64 %i.adb, 0
  br i1 %i.adc, label %bb.fx, label %.thread1269

bb.fx:                                            ; preds = %bb.fw
  %i.add = load ptr, ptr %0, align 8, !tbaa !117
  %i.ade = call i32 @sqlite3_file_control(ptr noundef %i.add, ptr noundef %.0941.lcssa, i32 noundef 36, ptr noundef nonnull %i.r) #20 ; 0 uses
  br label %.thread1269

.thread1269:                                      ; preds = %bb.fm, %bb.fp, %bb.fq, %bb.fr, %bb.fx, %bb.fw, %bb.fi
  %.81005 = phi i32 [ 1, %bb.fi ], [ %i.abi, %bb.fq ], [ 1, %bb.fr ], [ %.61003, %bb.fx ], [ %.61003, %bb.fw ], [ 1, %bb.fp ], [ %i.abt, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #20
  br label %.critedge1185

bb.fy:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #20
  %.not1138 = icmp eq i32 %2, 3
  %i.adf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not1138, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 2128
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !102
  call void %i.adh(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.249) #20
  br label %.critedge1195

bb.ga:                                            ; preds = %bb.fy
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 272
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !108
  %i.adk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !105
  %i.adm = call i32 %i.adj(ptr noundef %1, ptr noundef %i.adl, ptr noundef nonnull %i.u) #20
  %.not1139 = icmp eq i32 %i.adm, 0
  br i1 %.not1139, label %bb.gb, label %.critedge1195

bb.gb:                                            ; preds = %bb.ga
  %i.adn = load ptr, ptr %0, align 8, !tbaa !117
  %i.ado = load i32, ptr %i.u, align 4, !tbaa !30
  %i.adp = call i32 @sqlite3_enable_load_extension(ptr noundef %i.adn, i32 noundef %i.ado) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #20
  br label %.critedge1185

bb.gc:                                            ; preds = %bb.d
  %i.adq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 1896
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !151
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 432
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !150
  %i.adv = load ptr, ptr %0, align 8, !tbaa !117
  %i.adw = call i32 @sqlite3_errcode(ptr noundef %i.adv) #20
  %i.adx = call ptr %i.adu(i32 noundef %i.adw) #20
  call void %i.ads(ptr noundef %1, ptr noundef %i.adx) #20
  br label %.critedge1185

bb.gd:                                            ; preds = %bb.d
  %i.ady = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 1896
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !151
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 432
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !150
  %i.aed = load ptr, ptr %0, align 8, !tbaa !117
  %i.aee = call i32 @sqlite3_error_offset(ptr noundef %i.aed) #20
  %i.aef = call ptr %i.aec(i32 noundef %i.aee) #20
  call void %i.aea(ptr noundef %1, ptr noundef %i.aef) #20
  br label %.critedge1185

bb.ge:                                            ; preds = %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.not1136 = icmp eq i32 %2, 3
  br i1 %.not1136, label %bb.gf, label %bb.gn

bb.gf:                                            ; preds = %bb.ge
  %i.aeg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !105 ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aej = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aej, i8 0, i64 32, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !159
  %i.aek = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 2736
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !107
  %i.aen = call ptr %i.aem(ptr noundef %i.aeh) #20, !inline_history !367
  %i.aeo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aen, ptr %i.aeo, align 8, !tbaa !160
  store ptr %i.aeh, ptr %i.aei, align 8, !tbaa !161
  %i.aep = load i32, ptr %i.aeh, align 8, !tbaa !143
  %i.aeq = add nsw i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aeh, align 8, !tbaa !143
  %i.aer = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 0, ptr %i.aer, align 4, !tbaa !162
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !125
  %i.aeu = add nsw i32 %i.aet, 1
  store i32 %i.aeu, ptr %i.aes, align 8, !tbaa !125
  %i.aev = call fastcc i32 @dbEvalStep(ptr noundef nonnull %4) ; 5 uses
  %i.aew = load i32, ptr %i.c, align 4, !tbaa !30
  %i.aex = icmp eq i32 %i.aew, 25
  br i1 %i.aex, label %bb.gg, label %bb.gj

bb.gg:                                            ; preds = %bb.gf
  switch i32 %i.aev, label %.thread1277 [
    i32 0, label %bb.gh
    i32 3, label %bb.gi
  ]

bb.gh:                                            ; preds = %bb.gg
  %i.aey = call fastcc ptr @dbEvalColumnValue(ptr noundef nonnull %4, i32 noundef 0)
  br label %bb.gl

bb.gi:                                            ; preds = %bb.gg
  %i.aez = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 1752
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !163
  call void %i.afb(ptr noundef %1) #20
  br label %.thread1277

bb.gj:                                            ; preds = %bb.gf
  %.off = add nsw i32 %i.aev, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.thread1277, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.afc = icmp eq i32 %i.aev, 0
  %i.afd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 432
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !150
  %i.afg = zext i1 %i.afc to i32
  %i.afh = call ptr %i.aff(i32 noundef %i.afg) #20
  br label %bb.gl

.thread1277:                                      ; preds = %bb.gj, %bb.gi, %bb.gg
  call fastcc void @dbEvalFinalize(ptr noundef nonnull %4)
  br label %.thread1280

bb.gl:                                            ; preds = %bb.gk, %bb.gh
  %.0937 = phi ptr [ %i.aey, %bb.gh ], [ %i.afh, %bb.gk ] ; 2 uses
  call fastcc void @dbEvalFinalize(ptr noundef nonnull %4)
  %.not1137 = icmp eq ptr %.0937, null
  br i1 %.not1137, label %.thread1280, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.afi = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 1896
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !151
  call void %i.afk(ptr noundef %1, ptr noundef nonnull %.0937) #20
  br label %.thread1280

.thread1280:                                      ; preds = %bb.gl, %bb.gm, %.thread1277
  %i.afl = icmp eq i32 %i.aev, 3
  %spec.store.select = select i1 %i.afl, i32 0, i32 %i.aev
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge1185

bb.gn:                                            ; preds = %bb.ge
  %i.afm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 2128
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !102
  call void %i.afo(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.203) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge1185

.lr.ph1398:                                       ; preds = %.preheader1334, %bb.gs
  %.09351397 = phi i32 [ %i.age, %bb.gs ], [ 0, %.preheader1334 ] ; 3 uses
  %.010201396 = phi ptr [ %i.agg, %bb.gs ], [ %3, %.preheader1334 ] ; 4 uses
  %.010211395 = phi i32 [ %i.agf, %bb.gs ], [ %2, %.preheader1334 ] ; 4 uses
  %i.afp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 2736
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !107
  %i.afs = getelementptr inbounds nuw i8, ptr %.010201396, i64 16
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !105
  %i.afu = call ptr %i.afr(ptr noundef %i.aft) #20 ; 5 uses
  %.not1134 = icmp eq ptr %i.afu, null
  br i1 %.not1134, label %.critedge, label %bb.go

bb.go:                                            ; preds = %.lr.ph1398
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !29
  %i.afw = icmp eq i8 %i.afv, 45
  br i1 %i.afw, label %bb.gp, label %.critedge

bb.gp:                                            ; preds = %bb.go
  %i.afx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.afu, ptr noundef nonnull dereferenceable(14) @.str.250) #21
  %i.afy = icmp eq i32 %i.afx, 0
  br i1 %i.afy, label %bb.gs, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.afz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.afu, ptr noundef nonnull dereferenceable(8) @.str.251) #21
  %i.aga = icmp eq i32 %i.afz, 0
  br i1 %i.aga, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.agb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 576
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !106
  call void (ptr, ...) %i.agd(ptr noundef %1, ptr noundef nonnull @.str.252, ptr noundef nonnull %i.afu, ptr noundef nonnull @.str.47, ptr noundef null) #20
  br label %.critedge1185

bb.gs:                                            ; preds = %bb.gq, %bb.gp
  %.sink1613 = phi i32 [ 1, %bb.gp ], [ 2, %bb.gq ]
  %i.age = or i32 %.09351397, %.sink1613
end_hunk_2
begin_hunk_3_@DbObjCmd:bb.a
  call void (ptr, ...) %i.akx(ptr noundef %1, ptr noundef nonnull @.str.256, ptr noundef nonnull %i.ajo, ptr noundef null) #20
  br label %.critedge1202.critedge

bb.ht:                                            ; preds = %bb.hr
  %i.aky = add nsw i32 %.09261391, 1              ; 2 uses
  %i.akz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 2448
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !129
  %i.alc = sext i32 %i.aky to i64
  %i.ald = getelementptr inbounds [8 x i8], ptr %3, i64 %i.alc
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !105
  %i.alf = call i32 %i.alb(ptr noundef %1, ptr noundef %i.ale, ptr noundef nonnull %i.z, i32 noundef 8, ptr noundef nonnull @.str.267, i32 noundef 0, ptr noundef nonnull %i.y) #20
  %.not1132 = icmp eq i32 %i.alf, 0
  br i1 %.not1132, label %bb.hu, label %.critedge1202.critedge

bb.hu:                                            ; preds = %bb.ht
  %i.alg = load i32, ptr %i.y, align 4, !tbaa !30
  %i.alh = add nsw i32 %i.alg, 1
  store i32 %i.alh, ptr %i.y, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #20
  br label %bb.hv

.critedge1200:                                    ; preds = %bb.hg, %.critedge1199
  %i.ali = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 576
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !106
  call void (ptr, ...) %i.alk(ptr noundef %1, ptr noundef nonnull @.str.199, ptr noundef nonnull %i.ajo, ptr noundef nonnull @.str.268, ptr noundef null) #20
  br label %.critedge1202.thread

bb.hv:                                            ; preds = %bb.hu, %bb.hl, %bb.ho, %bb.hq, %bb.hp
  %.2932 = phi i32 [ %i.akl, %bb.ho ], [ %i.ako, %bb.hp ], [ %i.akr, %bb.hq ], [ %.09301390, %bb.hl ], [ %.09301390, %bb.hu ] ; 2 uses
  %.3929 = phi i32 [ %.09261391, %bb.ho ], [ %.09261391, %bb.hp ], [ %.09261391, %bb.hq ], [ %i.ajz, %bb.hl ], [ %i.aky, %bb.hu ]
  %i.all = add nsw i32 %.3929, 1                  ; 2 uses
  %i.alm = icmp slt i32 %i.all, %i.ajd
  br i1 %i.alm, label %bb.hg, label %._crit_edge, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.hv, %.preheader1335
  %.0930.lcssa = phi i32 [ 1, %.preheader1335 ], [ %.2932, %bb.hv ]
  %i.aln = zext nneg i32 %i.ajd to i64
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aln
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !105 ; 4 uses
  %i.alq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 344
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !103
  %i.alt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !105
  %i.alv = call ptr %i.als(ptr noundef %i.alu, ptr noundef null) #20 ; 2 uses
  %i.alw = call fastcc ptr @findSqlFunc(ptr noundef %0, ptr noundef %i.alv) ; 5 uses
  %i.alx = icmp eq ptr %i.alw, null
  br i1 %i.alx, label %.critedge1202.thread, label %bb.hw

bb.hw:                                            ; preds = %._crit_edge
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alw, i64 8 ; 2 uses
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !165 ; 4 uses
  %.not1130 = icmp eq ptr %i.alz, null
  br i1 %.not1130, label %bb.hz, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ama = load i32, ptr %i.alz, align 8, !tbaa !143 ; 2 uses
  %i.amb = add nsw i32 %i.ama, -1
  store i32 %i.amb, ptr %i.alz, align 8, !tbaa !143
  %i.amc = icmp slt i32 %i.ama, 2
  br i1 %i.amc, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.amd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 256
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !144
  call void %i.amf(ptr noundef nonnull %i.alz) #20
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hx, %bb.hy, %bb.hw
  store ptr %i.alp, ptr %i.aly, align 8, !tbaa !165
  %i.amg = load i32, ptr %i.alp, align 8, !tbaa !143
  %i.amh = add nsw i32 %i.amg, 1
  store i32 %i.amh, ptr %i.alp, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ami = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 344
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !103
  %i.aml = call ptr %i.amk(ptr noundef nonnull %i.alp, ptr noundef nonnull %i.a) #20, !inline_history !352
  %.pr.i = load i32, ptr %i.a, align 4, !tbaa !30 ; 2 uses
  %i.amm = add nsw i32 %.pr.i, -1                 ; 2 uses
  store i32 %i.amm, ptr %i.a, align 4, !tbaa !30
  %i.amn = icmp sgt i32 %.pr.i, 0
  br i1 %i.amn, label %.lr.ph1656, label %safeToUseEvalObjv.exit

bb.ia:                                            ; preds = %.lr.ph1656
  %i.amo = getelementptr inbounds nuw i8, ptr %.09.i1654, i64 1
  %i.amp = add nsw i32 %i.amr, -1                 ; 2 uses
  store i32 %i.amp, ptr %i.a, align 4, !tbaa !30
  %i.amq = icmp sgt i32 %i.amr, 0
  br i1 %i.amq, label %.lr.ph1656, label %safeToUseEvalObjv.exit

.lr.ph1656:                                       ; preds = %bb.hz, %bb.ia
  %i.amr = phi i32 [ %i.amp, %bb.ia ], [ %i.amm, %bb.hz ] ; 2 uses
  %.09.i1654 = phi ptr [ %i.amo, %bb.ia ], [ %i.aml, %bb.hz ] ; 2 uses
  %i.ams = load i8, ptr %.09.i1654, align 1, !tbaa !29
  switch i8 %i.ams, label %bb.ia [
    i8 91, label %safeToUseEvalObjv.exit
    i8 59, label %safeToUseEvalObjv.exit
    i8 36, label %safeToUseEvalObjv.exit
  ]

safeToUseEvalObjv.exit:                           ; preds = %.lr.ph1656, %.lr.ph1656, %.lr.ph1656, %bb.ia, %bb.hz
  %.2.i = phi i32 [ 1, %bb.hz ], [ 0, %.lr.ph1656 ], [ 0, %.lr.ph1656 ], [ 0, %.lr.ph1656 ], [ 1, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.amt = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  store i32 %.2.i, ptr %i.amt, align 8, !tbaa !166
  %i.amu = load i32, ptr %i.y, align 4, !tbaa !30
  %i.amv = getelementptr inbounds nuw i8, ptr %i.alw, i64 28
  store i32 %i.amu, ptr %i.amv, align 4, !tbaa !167
  %i.amw = load ptr, ptr %0, align 8, !tbaa !117
  %i.amx = load i32, ptr %i.x, align 4, !tbaa !30
  %i.amy = call i32 @sqlite3_create_function(ptr noundef %i.amw, ptr noundef %i.alv, i32 noundef %i.amx, i32 noundef %.0930.lcssa, ptr noundef nonnull %i.alw, ptr noundef nonnull @tclSqlFunc, ptr noundef null, ptr noundef null) #20
  %.not1131 = icmp eq i32 %i.amy, 0
  br i1 %.not1131, label %.critedge1202, label %bb.ib

bb.ib:                                            ; preds = %safeToUseEvalObjv.exit
  %i.amz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 1872
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !118
  %i.anc = load ptr, ptr %0, align 8, !tbaa !117
  %i.and = call ptr @sqlite3_errmsg(ptr noundef %i.anc) #20
  call void %i.anb(ptr noundef %1, ptr noundef %i.and, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %.critedge1202

.critedge1202.critedge:                           ; preds = %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #20
  br label %.critedge1202.thread

.critedge1202.thread:                             ; preds = %bb.hk, %bb.hf, %._crit_edge, %.critedge1202.critedge, %bb.hm, %.critedge1200, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #20
  br label %.critedge1185

.critedge1202:                                    ; preds = %safeToUseEvalObjv.exit, %bb.ib
  %.141011 = phi i32 [ 1, %bb.ib ], [ 0, %safeToUseEvalObjv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #20
  br label %.critedge1185

bb.ic:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #20
  %i.ane = icmp samesign ugt i32 %2, 3
  br i1 %i.ane, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.anf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 2736
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !107
  %i.ani = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !105
  %i.ank = call ptr %i.anh(ptr noundef %i.anj) #20
  %i.anl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ank, ptr noundef nonnull dereferenceable(10) @.str.133) #21
  %i.anm = icmp eq i32 %i.anl, 0
  %spec.select1203 = zext i1 %i.anm to i32
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.0925 = phi i32 [ 0, %bb.ic ], [ %spec.select1203, %bb.id ] ; 4 uses
  %i.ann = add nuw nsw i32 %.0925, 5
  %.not1128 = icmp eq i32 %2, %i.ann
  %i.ano = or disjoint i32 %.0925, 6
  %.not1129 = icmp eq i32 %2, %i.ano              ; 2 uses
  %or.cond1204 = select i1 %.not1128, i1 true, i1 %.not1129
  br i1 %or.cond1204, label %bb.if, label %bb.ij

bb.if:                                            ; preds = %bb.ie
  br i1 %.not1129, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %i.anp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 2736
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !107
  %i.ans = zext nneg i32 %.0925 to i64
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ans
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 16
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !105
  %i.anw = call ptr %i.anr(ptr noundef %i.anv) #20
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.0924 = phi ptr [ %i.anw, %bb.ig ], [ @.str.188, %bb.if ]
  %i.anx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 2736
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !107
  %i.aoa = zext nneg i32 %2 to i64
  %i.aob = getelementptr [8 x i8], ptr %3, i64 %i.aoa ; 3 uses
  %i.aoc = getelementptr i8, ptr %i.aob, i64 -24
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !105
  %i.aoe = call ptr %i.anz(ptr noundef %i.aod) #20
  %i.aof = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 2736
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !107
  %i.aoi = getelementptr i8, ptr %i.aob, i64 -16
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !105
  %i.aok = call ptr %i.aoh(ptr noundef %i.aoj) #20
  %i.aol = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 3912
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !154
  %i.aoo = getelementptr i8, ptr %i.aob, i64 -8
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !105
  %i.aoq = call i32 %i.aon(ptr noundef %1, ptr noundef %i.aop, ptr noundef nonnull %i.aa) #20 ; 2 uses
  %i.aor = icmp eq i32 %i.aoq, 0
  br i1 %i.aor, label %bb.ii, label %.thread1289

bb.ii:                                            ; preds = %bb.ih
  %i.aos = load i64, ptr %i.aa, align 8, !tbaa !155
  %i.aot = call fastcc i32 @createIncrblobChannel(ptr noundef %1, ptr noundef %0, ptr noundef %.0924, ptr noundef %i.aoe, ptr noundef %i.aok, i64 noundef %i.aos, i32 noundef %.0925)
  br label %.thread1289

.thread1289:                                      ; preds = %bb.ii, %bb.ih
  %.161013.ph = phi i32 [ %i.aoq, %bb.ih ], [ %i.aot, %bb.ii ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #20
  br label %.critedge1185

bb.ij:                                            ; preds = %bb.ie
  %i.aou = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 2128
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !102
  call void %i.aow(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.269) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #20
  br label %.critedge1185

bb.ik:                                            ; preds = %bb.d
  %i.aox = load ptr, ptr %0, align 8, !tbaa !117
  call void @sqlite3_interrupt(ptr noundef %i.aox) #20
  br label %.critedge1185

bb.il:                                            ; preds = %bb.d
  %i.aoy = icmp samesign ugt i32 %2, 3
  br i1 %i.aoy, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.aoz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2128
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !102
  call void %i.apb(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.270) #20
  br label %.critedge1185

bb.in:                                            ; preds = %bb.il
  %i.apc = icmp eq i32 %2, 3
  br i1 %i.apc, label %bb.io, label %bb.iu

bb.io:                                            ; preds = %bb.in
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #20
  %i.apd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 344
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !103
  %i.apg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !105
  %i.api = call ptr %i.apf(ptr noundef %i.aph, ptr noundef nonnull %i.ab) #20 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !168 ; 2 uses
  %.not1127 = icmp eq ptr %i.apk, null
  br i1 %.not1127, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.apl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 48
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !119
  call void %i.apn(ptr noundef nonnull %i.apk) #20
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.apo = icmp ne ptr %i.api, null
  %i.app = load i32, ptr %i.ab, align 4           ; 2 uses
  %i.apq = icmp sgt i32 %i.app, 0
  %or.cond47 = select i1 %i.apo, i1 %i.apq, i1 false
  br i1 %or.cond47, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.apr = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 40
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !109
  %i.apu = add nuw nsw i32 %i.app, 1
  %i.apv = call ptr %i.apt(i32 noundef %i.apu) #20 ; 2 uses
  store ptr %i.apv, ptr %i.apj, align 8, !tbaa !168
  %i.apw = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.apx = sext i32 %i.apw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apv, ptr nonnull align 1 %i.api, i64 %i.apx, i1 false)
  %i.apy = load ptr, ptr %i.apj, align 8, !tbaa !168
  %i.apz = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds i8, ptr %i.apy, i64 %i.aqa
  store i8 0, ptr %i.aqb, align 1, !tbaa !29
  br label %bb.it

bb.is:                                            ; preds = %bb.iq
  store ptr null, ptr %i.apj, align 8, !tbaa !168
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #20
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.in
  %i.aqc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 1896
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !151
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqc, i64 464
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !149
  %i.aqh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !168
  %i.aqj = call ptr %i.aqg(ptr noundef %i.aqi, i32 noundef -1) #20
  call void %i.aqe(ptr noundef %1, ptr noundef %i.aqj) #20
  br label %.critedge1185

bb.iv:                                            ; preds = %bb.d
  %.not1126 = icmp eq i32 %2, 2
  br i1 %.not1126, label %.thread1292, label %bb.iw

.thread1292:                                      ; preds = %bb.iv
  %i.aqk = load ptr, ptr %0, align 8, !tbaa !117
  %i.aql = call i64 @sqlite3_last_insert_rowid(ptr noundef %i.aqk) #20
  %i.aqm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 1344
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !134
  %i.aqp = call ptr %i.aqo(ptr noundef %1) #20
  %i.aqq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 3928
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !355
  call void %i.aqs(ptr noundef %i.aqp, i64 noundef %i.aql) #20
  br label %.critedge1185

bb.iw:                                            ; preds = %bb.iv
  %i.aqt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 2128
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !102
  call void %i.aqv(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #20
  br label %.critedge1185

bb.ix:                                            ; preds = %bb.d
  switch i32 %2, label %bb.jj [
    i32 2, label %bb.iy
    i32 4, label %bb.jb
  ]

bb.iy:                                            ; preds = %bb.ix
  %i.aqw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !169 ; 2 uses
  %.not1125 = icmp eq ptr %i.aqx, null
  br i1 %.not1125, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aqy = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 576
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !106
  call void (ptr, ...) %i.ara(ptr noundef %1, ptr noundef nonnull %i.aqx, ptr noundef null) #20
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.arb = load ptr, ptr %0, align 8, !tbaa !117
  call void @sqlite3_progress_handler(ptr noundef %i.arb, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  br label %.critedge1185

bb.jb:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #20
  %i.arc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 320
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !133
  %i.arf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !105
  %i.arh = call i32 %i.are(ptr noundef %1, ptr noundef %i.arg, ptr noundef nonnull %i.ad) #20
  %.not1122 = icmp eq i32 %i.arh, 0
  br i1 %.not1122, label %bb.jc, label %.critedge1206

bb.jc:                                            ; preds = %bb.jb
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !169 ; 2 uses
  %.not1123 = icmp eq ptr %i.arj, null
  br i1 %.not1123, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ark = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 48
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !119
  call void %i.arm(ptr noundef nonnull %i.arj) #20
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.arn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 344
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !103
  %i.arq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !105
  %i.ars = call ptr %i.arp(ptr noundef %i.arr, ptr noundef nonnull %i.ac) #20 ; 2 uses
  %i.art = icmp ne ptr %i.ars, null
  %i.aru = load i32, ptr %i.ac, align 4           ; 2 uses
  %i.arv = icmp sgt i32 %i.aru, 0
  %or.cond49 = select i1 %i.art, i1 %i.arv, i1 false
  br i1 %or.cond49, label %bb.jf, label %.thread1294

.thread1294:                                      ; preds = %bb.je
  store ptr null, ptr %i.ari, align 8, !tbaa !169
  br label %bb.jh

bb.jf:                                            ; preds = %bb.je
  %i.arw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 40
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !109
  %i.arz = add nuw nsw i32 %i.aru, 1
  %i.asa = call ptr %i.ary(i32 noundef %i.arz) #20 ; 2 uses
  store ptr %i.asa, ptr %i.ari, align 8, !tbaa !169
  %i.asb = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.asc = add nsw i32 %i.asb, 1
  %i.asd = sext i32 %i.asc to i64
end_hunk_3
begin_hunk_4_@DbObjCmd:bb.a
  br label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.atj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 40
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !109
  %i.atm = add nuw nsw i32 %i.ath, 1
  %i.atn = call ptr %i.atl(i32 noundef %i.atm) #20 ; 2 uses
  store ptr %i.atn, ptr %i.asv, align 8, !tbaa !170
  %i.ato = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.atp = add nsw i32 %i.ato, 1
  %i.atq = sext i32 %i.atp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atn, ptr nonnull align 1 %i.atf, i64 %i.atq, i1 false)
  %.pr1296 = load ptr, ptr %i.asv, align 8, !tbaa !170
  %.not1120 = icmp eq ptr %.pr1296, null
  br i1 %.not1120, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.atr, align 8, !tbaa !122
  %i.ats = load ptr, ptr %0, align 8, !tbaa !117
  %i.att = call ptr @sqlite3_profile(ptr noundef %i.ats, ptr noundef nonnull @DbProfileHandler, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.jv

bb.ju:                                            ; preds = %.thread1297, %bb.js
  %i.atu = load ptr, ptr %0, align 8, !tbaa !117
  %i.atv = call ptr @sqlite3_profile(ptr noundef %i.atu, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #20
  br label %.critedge1185

bb.jw:                                            ; preds = %bb.d
  %.not1118 = icmp eq i32 %2, 3
  br i1 %.not1118, label %.critedge1185, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.atw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 2128
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !102
  call void %i.aty(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.272) #20
  br label %.critedge1185

bb.jy:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #20
  %i.atz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 3 uses
  switch i32 %2, label %bb.ka [
    i32 3, label %bb.kb
    i32 4, label %bb.jz
  ]

bb.jz:                                            ; preds = %bb.jy
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 2736
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !107
  %i.auc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !105
  %i.aue = call ptr %i.aub(ptr noundef %i.aud) #20
  %i.auf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jy
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atz, i64 2128
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !102
  call void %i.auh(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.189) #20
  br label %.thread1303

bb.kb:                                            ; preds = %bb.jy, %bb.jz
  %.sink1619 = phi ptr [ %i.auf, %bb.jz ], [ %i.atz, %bb.jy ]
  %.sink1617 = phi i64 [ 24, %bb.jz ], [ 16, %bb.jy ]
  %.0922 = phi ptr [ %i.aue, %bb.jz ], [ @.str.188, %bb.jy ]
  %i.aui = getelementptr inbounds nuw i8, ptr %.sink1619, i64 2736
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !107
  %i.auk = getelementptr inbounds nuw i8, ptr %3, i64 %.sink1617
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !105
  %i.aum = call ptr %i.auj(ptr noundef %i.aul) #20
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !121
  %i.aup = or i32 %i.auo, 1
  %i.auq = call i32 @sqlite3_open_v2(ptr noundef %i.aum, ptr noundef nonnull %i.af, i32 noundef %i.aup, ptr noundef null) #20
  %.not1117 = icmp eq i32 %i.auq, 0
  br i1 %.not1117, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aur = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 576
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !106
  %i.auu = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.auv = call ptr @sqlite3_errmsg(ptr noundef %i.auu) #20
  call void (ptr, ...) %i.aut(ptr noundef %1, ptr noundef nonnull @.str.273, ptr noundef %i.auv, ptr noundef null) #20
  %i.auw = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.aux = call i32 @sqlite3_close(ptr noundef %i.auw) #20 ; 0 uses
  br label %.thread1303

bb.kd:                                            ; preds = %bb.kb
  %i.auy = load ptr, ptr %0, align 8, !tbaa !117
  %i.auz = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.ava = call ptr @sqlite3_backup_init(ptr noundef %i.auy, ptr noundef %.0922, ptr noundef %i.auz, ptr noundef nonnull @.str.188) #20 ; 7 uses
  %i.avb = icmp eq ptr %i.ava, null
  br i1 %i.avb, label %bb.ke, label %.preheader1336

bb.ke:                                            ; preds = %bb.kd
  %i.avc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 576
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !106
  %i.avf = load ptr, ptr %0, align 8, !tbaa !117
  %i.avg = call ptr @sqlite3_errmsg(ptr noundef %i.avf) #20
  call void (ptr, ...) %i.ave(ptr noundef %1, ptr noundef nonnull @.str.274, ptr noundef %i.avg, ptr noundef null) #20
  %i.avh = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.avi = call i32 @sqlite3_close(ptr noundef %i.avh) #20 ; 0 uses
  br label %.thread1303

.preheader1336:                                   ; preds = %bb.kd, %.preheader1336
  %i.avj = call i32 @sqlite3_backup_step(ptr noundef nonnull %i.ava, i32 noundef 100) #20 ; 2 uses
  switch i32 %i.avj, label %.loopexit1705 [
    i32 5, label %.preheader1336.outer.1
    i32 0, label %.preheader1336
  ], !llvm.loop !353

.preheader1336.outer.1:                           ; preds = %.preheader1336
  %i.avk = call i32 @sqlite3_sleep(i32 noundef 100) #20 ; 0 uses
  br label %.preheader1336.1

.preheader1336.1:                                 ; preds = %.preheader1336.1, %.preheader1336.outer.1
  %i.avl = call i32 @sqlite3_backup_step(ptr noundef nonnull %i.ava, i32 noundef 100) #20 ; 2 uses
  switch i32 %i.avl, label %.loopexit1705 [
    i32 5, label %.preheader1336.outer.2
    i32 0, label %.preheader1336.1
  ], !llvm.loop !353

.preheader1336.outer.2:                           ; preds = %.preheader1336.1
  %i.avm = call i32 @sqlite3_sleep(i32 noundef 100) #20 ; 0 uses
  br label %.preheader1336.2

.preheader1336.2:                                 ; preds = %.preheader1336.2, %.preheader1336.outer.2
  %i.avn = call i32 @sqlite3_backup_step(ptr noundef nonnull %i.ava, i32 noundef 100) #20 ; 2 uses
  switch i32 %i.avn, label %.loopexit1705 [
    i32 5, label %.preheader1336.outer.3
    i32 0, label %.preheader1336.2
  ], !llvm.loop !353

.preheader1336.outer.3:                           ; preds = %.preheader1336.2
  %i.avo = call i32 @sqlite3_sleep(i32 noundef 100) #20 ; 0 uses
  br label %.preheader1336.3

.preheader1336.3:                                 ; preds = %.preheader1336.3, %.preheader1336.outer.3
  %i.avp = call i32 @sqlite3_backup_step(ptr noundef nonnull %i.ava, i32 noundef 100) #20 ; 2 uses
  switch i32 %i.avp, label %.loopexit1705 [
    i32 5, label %.thread1300
    i32 0, label %.preheader1336.3
  ], !llvm.loop !353

.thread1300:                                      ; preds = %.preheader1336.3
  %i.avq = call i32 @sqlite3_backup_finish(ptr noundef nonnull %i.ava) #20 ; 0 uses
  br label %bb.kg

.loopexit1705:                                    ; preds = %.preheader1336.3, %.preheader1336.2, %.preheader1336.1, %.preheader1336
  %.lcssa1702 = phi i32 [ %i.avl, %.preheader1336.1 ], [ %i.avn, %.preheader1336.2 ], [ %i.avj, %.preheader1336 ], [ %i.avp, %.preheader1336.3 ] ; 2 uses
  %i.avr = call i32 @sqlite3_backup_finish(ptr noundef nonnull %i.ava) #20 ; 0 uses
  %i.avs = icmp eq i32 %.lcssa1702, 101
  br i1 %i.avs, label %bb.ki, label %bb.kf

bb.kf:                                            ; preds = %.loopexit1705
  %i.avt = add i32 %.lcssa1702, -5
  %or.cond53 = icmp ult i32 %i.avt, 2
  br i1 %or.cond53, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %.thread1300, %bb.kf
  %i.avu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 576
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !106
  call void (ptr, ...) %i.avw(ptr noundef %1, ptr noundef nonnull @.str.275, ptr noundef null) #20
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kf
  %i.avx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 576
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !106
  %i.awa = load ptr, ptr %0, align 8, !tbaa !117
  %i.awb = call ptr @sqlite3_errmsg(ptr noundef %i.awa) #20
  call void (ptr, ...) %i.avz(ptr noundef %1, ptr noundef nonnull @.str.274, ptr noundef %i.awb, ptr noundef null) #20
  br label %bb.ki

.thread1303:                                      ; preds = %bb.kc, %bb.ke, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #20
  br label %.critedge1185

bb.ki:                                            ; preds = %bb.kh, %bb.kg, %.loopexit1705
  %.171014 = phi i32 [ 1, %bb.kh ], [ 1, %bb.kg ], [ 0, %.loopexit1705 ]
  %i.awc = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.awd = call i32 @sqlite3_close(ptr noundef %i.awc) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #20
  br label %.critedge1185

bb.kj:                                            ; preds = %bb.d
  %.not1114 = icmp eq i32 %2, 2
  br i1 %.not1114, label %.thread1306, label %bb.kk

.thread1306:                                      ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #20
  store i64 0, ptr %i.ag, align 8, !tbaa !155
  br label %bb.km

bb.kk:                                            ; preds = %bb.kj
  %i.awe = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 2736
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !107
  %i.awh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !105
  %i.awj = call ptr %i.awg(ptr noundef %i.awi) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #20
  store i64 0, ptr %i.ag, align 8, !tbaa !155
  %i.awk = icmp samesign ugt i32 %2, 3
  br i1 %i.awk, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.awl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 2128
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !102
  call void %i.awn(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.276) #20
  br label %bb.ko

bb.km:                                            ; preds = %.thread1306, %bb.kk
  %i.awo = phi ptr [ @.str.188, %.thread1306 ], [ %i.awj, %bb.kk ] ; 2 uses
  %i.awp = load ptr, ptr %0, align 8, !tbaa !117
  %i.awq = call ptr @sqlite3_serialize(ptr noundef %i.awp, ptr noundef %i.awo, ptr noundef nonnull %i.ag, i32 noundef 1) #20 ; 2 uses
  %.not1115.not = icmp eq ptr %i.awq, null
  br i1 %.not1115.not, label %bb.kn, label %.critedge1208

bb.kn:                                            ; preds = %bb.km
  %i.awr = load ptr, ptr %0, align 8, !tbaa !117
  %i.aws = call ptr @sqlite3_serialize(ptr noundef %i.awr, ptr noundef %i.awo, ptr noundef nonnull %i.ag, i32 noundef 0) #20 ; 2 uses
  %i.awt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 1896
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !151
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awt, i64 416
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !171
  %i.awy = load i64, ptr %i.ag, align 8, !tbaa !155
  %i.awz = trunc i64 %i.awy to i32
  %i.axa = call ptr %i.awx(ptr noundef %i.aws, i32 noundef %i.awz) #20
  call void %i.awv(ptr noundef %1, ptr noundef %i.axa) #20
  call void @sqlite3_free(ptr noundef %i.aws) #20
  br label %bb.ko

.critedge1208:                                    ; preds = %bb.km
  %i.axb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 1896
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !151
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 416
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !171
  %i.axg = load i64, ptr %i.ag, align 8, !tbaa !155
  %i.axh = trunc i64 %i.axg to i32
  %i.axi = call ptr %i.axf(ptr noundef nonnull %i.awq, i32 noundef %i.axh) #20
  call void %i.axd(ptr noundef %1, ptr noundef %i.axi) #20
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %.critedge1208, %bb.kl
  %.191016 = phi i32 [ 1, %bb.kl ], [ 0, %.critedge1208 ], [ 0, %bb.kn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #20
  br label %.critedge1185

bb.kp:                                            ; preds = %bb.d
  %.not1113 = icmp eq i32 %2, 3
  %i.axj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not1113, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 2128
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !102
  call void %i.axl(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.277) #20
  br label %.critedge1185

bb.kr:                                            ; preds = %bb.kp
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axj, i64 2736
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !107
  %i.axo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !105
  %i.axq = call ptr %i.axn(ptr noundef %i.axp) #20 ; 4 uses
  %i.axr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.axq, ptr noundef nonnull dereferenceable(5) @.str.278) #21
  %i.axs = icmp eq i32 %i.axr, 0
  br i1 %i.axs, label %bb.kw, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.axt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.axq, ptr noundef nonnull dereferenceable(5) @.str.279) #21
  %i.axu = icmp eq i32 %i.axt, 0
  br i1 %i.axu, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.axv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.axq, ptr noundef nonnull dereferenceable(10) @.str.280) #21
  %i.axw = icmp eq i32 %i.axv, 0
  br i1 %i.axw, label %bb.kw, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.axx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.axq, ptr noundef nonnull dereferenceable(7) @.str.281) #21
  %i.axy = icmp eq i32 %i.axx, 0
  br i1 %i.axy, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.axz = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 576
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !106
  call void (ptr, ...) %i.ayb(ptr noundef %1, ptr noundef nonnull @.str.282, ptr noundef null) #20
  br label %.critedge1185

bb.kw:                                            ; preds = %bb.ku, %bb.kt, %bb.ks, %bb.kr
  %.sink1620 = phi i64 [ 200, %bb.kr ], [ 208, %bb.kt ], [ 204, %bb.ks ], [ 212, %bb.ku ]
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1620
  %.0917 = load i32, ptr %i.ayc, align 4, !tbaa !30
  %i.ayd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 1896
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !151
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayd, i64 432
  %i.ayh = load ptr, ptr %i.ayg, align 8, !tbaa !150
  %i.ayi = call ptr %i.ayh(i32 noundef %.0917) #20
  call void %i.ayf(ptr noundef %1, ptr noundef %i.ayi) #20
  br label %.critedge1185

bb.kx:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #20
  %.not1111 = icmp eq i32 %2, 3
  %i.ayj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not1111, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 2128
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !102
  call void %i.ayl(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.283) #20
  br label %.critedge1212

bb.kz:                                            ; preds = %bb.kx
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ayj, i64 320
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !133
  %i.ayo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !105
  %i.ayq = call i32 %i.ayn(ptr noundef %1, ptr noundef %i.ayp, ptr noundef nonnull %i.ah) #20
  %.not1112 = icmp eq i32 %i.ayq, 0
  br i1 %.not1112, label %bb.la, label %.critedge1212

bb.la:                                            ; preds = %bb.kz
  %i.ayr = load ptr, ptr %0, align 8, !tbaa !117
  %i.ays = load i32, ptr %i.ah, align 4, !tbaa !30
  %i.ayt = call i32 @sqlite3_busy_timeout(ptr noundef %i.ayr, i32 noundef %i.ays) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #20
  br label %.critedge1185

bb.lb:                                            ; preds = %bb.d
  %.not1110 = icmp eq i32 %2, 2
  %i.ayu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not1110, label %.thread1308, label %bb.lc

.thread1308:                                      ; preds = %bb.lb
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 1344
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !134
  %i.ayx = call ptr %i.ayw(ptr noundef %1) #20
  %i.ayy = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 3928
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !355
  %i.azb = load ptr, ptr %0, align 8, !tbaa !117
  %i.azc = call i64 @sqlite3_total_changes64(ptr noundef %i.azb) #20
  call void %i.aza(ptr noundef %i.ayx, i64 noundef %i.azc) #20
  br label %.critedge1185

bb.lc:                                            ; preds = %bb.lb
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayu, i64 2128
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !102
  call void %i.aze(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.6) #20
  br label %.critedge1185

bb.ld:                                            ; preds = %bb.d
  %i.azf = icmp samesign ugt i32 %2, 3
  br i1 %i.azf, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.azg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 2128
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !102
  call void %i.azi(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.187) #20
  br label %.critedge1185

bb.lf:                                            ; preds = %bb.ld
  %i.azj = icmp eq i32 %2, 2
  br i1 %i.azj, label %bb.lg, label %bb.li

bb.lg:                                            ; preds = %bb.lf
  %i.azk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !172 ; 2 uses
  %.not1109 = icmp eq ptr %i.azl, null
  br i1 %.not1109, label %.critedge1185, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.azm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 576
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !106
  call void (ptr, ...) %i.azo(ptr noundef %1, ptr noundef nonnull %i.azl, ptr noundef null) #20
  br label %.critedge1185

bb.li:                                            ; preds = %bb.lf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #20
  %i.azp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !172 ; 2 uses
  %.not1107 = icmp eq ptr %i.azq, null
  br i1 %.not1107, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.azr = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 48
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !119
  call void %i.azt(ptr noundef nonnull %i.azq) #20
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %i.azu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 344
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !103
  %i.azx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !105
  %i.azz = call ptr %i.azw(ptr noundef %i.azy, ptr noundef nonnull %i.ai) #20 ; 2 uses
  %i.baa = icmp ne ptr %i.azz, null
  %i.bab = load i32, ptr %i.ai, align 4           ; 2 uses
  %i.bac = icmp sgt i32 %i.bab, 0
  %or.cond57 = select i1 %i.baa, i1 %i.bac, i1 false
  br i1 %or.cond57, label %bb.ll, label %.thread1310

.thread1310:                                      ; preds = %bb.lk
  store ptr null, ptr %i.azp, align 8, !tbaa !172
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lk
  %i.bad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 40
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !109
  %i.bag = add nuw nsw i32 %i.bab, 1
  %i.bah = call ptr %i.baf(i32 noundef %i.bag) #20 ; 2 uses
  store ptr %i.bah, ptr %i.azp, align 8, !tbaa !172
  %i.bai = load i32, ptr %i.ai, align 4, !tbaa !30
  %i.baj = add nsw i32 %i.bai, 1
  %i.bak = sext i32 %i.baj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bah, ptr nonnull align 1 %i.azz, i64 %i.bak, i1 false)
  %.pr1309 = load ptr, ptr %i.azp, align 8, !tbaa !172
  %.not1108 = icmp eq ptr %.pr1309, null
  br i1 %.not1108, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.bal, align 8, !tbaa !122
  %i.bam = load ptr, ptr %0, align 8, !tbaa !117
  %i.ban = call ptr @sqlite3_trace(ptr noundef %i.bam, ptr noundef nonnull @DbTraceHandler, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.lo

bb.ln:                                            ; preds = %.thread1310, %bb.ll
  %i.bao = load ptr, ptr %0, align 8, !tbaa !117
  %i.bap = call ptr @sqlite3_trace(ptr noundef %i.bao, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #20
  br label %.critedge1185

bb.lp:                                            ; preds = %bb.d
  %i.baq = icmp samesign ugt i32 %2, 4
  br i1 %i.baq, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bar = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bar, i64 2128
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !102
  call void %i.bat(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.284) #20
  br label %.critedge1185

bb.lr:                                            ; preds = %bb.lp
  %i.bau = icmp eq i32 %2, 2
  br i1 %i.bau, label %bb.ls, label %bb.lu

bb.ls:                                            ; preds = %bb.lr
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !173 ; 2 uses
  %.not1106 = icmp eq ptr %i.baw, null
  br i1 %.not1106, label %.critedge1185, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.bax = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 576
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !106
  call void (ptr, ...) %i.baz(ptr noundef %1, ptr noundef nonnull %i.baw, ptr noundef null) #20
  br label %.critedge1185

bb.lu:                                            ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #20
  %i.bba = icmp eq i32 %2, 4
  br i1 %i.bba, label %bb.lv, label %.loopexit1338

bb.lv:                                            ; preds = %bb.lu
  %i.bbb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bbb, i64 392
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !174
  %i.bbe = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !105
  %i.bbg = call i32 %i.bbd(ptr noundef %1, ptr noundef %i.bbf, ptr noundef nonnull %i.aj) #20
  %.not1101 = icmp eq i32 %i.bbg, 0
  br i1 %.not1101, label %.preheader1337, label %.critedge1214

.preheader1337:                                   ; preds = %bb.lv
  %i.bbh = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.bbi = icmp sgt i32 %i.bbh, 0
  br i1 %i.bbi, label %.lr.ph, label %.loopexit1338

.lr.ph:                                           ; preds = %.preheader1337, %.thread1313
  %.09101389 = phi i32 [ %i.bde, %.thread1313 ], [ 0, %.preheader1337 ] ; 2 uses
  %.09111388 = phi i64 [ %.39141316, %.thread1313 ], [ 0, %.preheader1337 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #20
  %i.bbj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 384
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !175
  %i.bbm = load ptr, ptr %i.bbe, align 8, !tbaa !105
  %i.bbn = call i32 %i.bbl(ptr noundef %1, ptr noundef %i.bbm, i32 noundef %.09101389, ptr noundef nonnull %i.ak) #20
  %.not1102 = icmp eq i32 %i.bbn, 0
  br i1 %.not1102, label %bb.lw, label %.critedge1214.sink.split

bb.lw:                                            ; preds = %.lr.ph
  %i.bbo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 2448
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !129
  %i.bbr = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.bbs = call i32 %i.bbq(ptr noundef %1, ptr noundef %i.bbr, ptr noundef nonnull @DbObjCmd.TTYPE_strs, i32 noundef 8, ptr noundef nonnull @.str.287, i32 noundef 0, ptr noundef nonnull %i.al) #20
  %.not1103 = icmp eq i32 %i.bbs, 0
  br i1 %.not1103, label %bb.mc, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #20
  %i.bbt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 248
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !145
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 1344
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !134
  %i.bby = call ptr %i.bbx(ptr noundef %1) #20
  %i.bbz = call ptr %i.bbv(ptr noundef %i.bby) #20 ; 9 uses
  %i.bca = load i32, ptr %i.bbz, align 8, !tbaa !143
  %i.bcb = add nsw i32 %i.bca, 1
  store i32 %i.bcb, ptr %i.bbz, align 8, !tbaa !143
  %i.bcc = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 3912
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !154
  %i.bcf = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.bcg = call i32 %i.bce(ptr noundef %1, ptr noundef %i.bcf, ptr noundef nonnull %i.am) #20
  %i.bch = icmp eq i32 %i.bcg, 0
  br i1 %i.bch, label %bb.ly, label %bb.ma

bb.ly:                                            ; preds = %bb.lx
  %i.bci = load i32, ptr %i.bbz, align 8, !tbaa !143 ; 2 uses
  %i.bcj = add nsw i32 %i.bci, -1
  store i32 %i.bcj, ptr %i.bbz, align 8, !tbaa !143
  %i.bck = icmp slt i32 %i.bci, 2
  br i1 %i.bck, label %bb.lz, label %bb.mh

bb.lz:                                            ; preds = %bb.ly
  %i.bcl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 256
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !144
  call void %i.bcn(ptr noundef nonnull %i.bbz) #20
  br label %bb.mh

bb.ma:                                            ; preds = %bb.lx
  %i.bco = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 1896
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !151
  call void %i.bcq(ptr noundef %1, ptr noundef nonnull %i.bbz) #20
  %i.bcr = load i32, ptr %i.bbz, align 8, !tbaa !143 ; 2 uses
  %i.bcs = add nsw i32 %i.bcr, -1
  store i32 %i.bcs, ptr %i.bbz, align 8, !tbaa !143
  %i.bct = icmp slt i32 %i.bcr, 2
  br i1 %i.bct, label %bb.mb, label %.thread1318

bb.mb:                                            ; preds = %bb.ma
  %i.bcu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 256
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !144
  call void %i.bcw(ptr noundef nonnull %i.bbz) #20
  br label %.thread1318

bb.mc:                                            ; preds = %bb.lw
  %i.bcx = load i32, ptr %i.al, align 4, !tbaa !30
  switch i32 %i.bcx, label %.thread1313 [
    i32 0, label %bb.md
    i32 1, label %bb.me
    i32 2, label %bb.mf
    i32 3, label %bb.mg
  ]

bb.md:                                            ; preds = %bb.mc
  %i.bcy = or i64 %.09111388, 1
  br label %.thread1313

bb.me:                                            ; preds = %bb.mc
  %i.bcz = or i64 %.09111388, 2
  br label %.thread1313

bb.mf:                                            ; preds = %bb.mc
  %i.bda = or i64 %.09111388, 4
  br label %.thread1313

bb.mg:                                            ; preds = %bb.mc
  %i.bdb = or i64 %.09111388, 8
  br label %.thread1313

.thread1318:                                      ; preds = %bb.mb, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #20
  br label %.critedge1214.sink.split

bb.mh:                                            ; preds = %bb.ly, %bb.lz
  %i.bdc = load i64, ptr %i.am, align 8, !tbaa !155
  %i.bdd = or i64 %i.bdc, %.09111388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #20
  br label %.thread1313

.thread1313:                                      ; preds = %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.mg, %bb.mh
  %.39141316 = phi i64 [ %i.bdd, %bb.mh ], [ %i.bda, %bb.mf ], [ %i.bcz, %bb.me ], [ %i.bcy, %bb.md ], [ %.09111388, %bb.mc ], [ %i.bdb, %bb.mg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #20
  %i.bde = add nuw nsw i32 %.09101389, 1          ; 2 uses
  %i.bdf = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.bdg = icmp slt i32 %i.bde, %i.bdf
  br i1 %i.bdg, label %.lr.ph, label %.loopexit1338.loopexit, !llvm.loop !354

.loopexit1338.loopexit:                           ; preds = %.thread1313
  %i.bdh = trunc i64 %.39141316 to i32
  br label %.loopexit1338

.loopexit1338:                                    ; preds = %.loopexit1338.loopexit, %.preheader1337, %bb.lu
  %.5916 = phi i32 [ 1, %bb.lu ], [ 0, %.preheader1337 ], [ %i.bdh, %.loopexit1338.loopexit ]
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !173 ; 2 uses
  %.not1104 = icmp eq ptr %i.bdj, null
  br i1 %.not1104, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %.loopexit1338
  %i.bdk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 48
  %i.bdm = load ptr, ptr %i.bdl, align 8, !tbaa !119
  call void %i.bdm(ptr noundef nonnull %i.bdj) #20
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %.loopexit1338
  %i.bdn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 344
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !103
  %i.bdq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !105
  %i.bds = call ptr %i.bdp(ptr noundef %i.bdr, ptr noundef nonnull %i.aj) #20 ; 2 uses
  %i.bdt = icmp ne ptr %i.bds, null
  %i.bdu = load i32, ptr %i.aj, align 4           ; 2 uses
  %i.bdv = icmp sgt i32 %i.bdu, 0
  %or.cond59 = select i1 %i.bdt, i1 %i.bdv, i1 false
  br i1 %or.cond59, label %bb.mk, label %.thread1321

.thread1321:                                      ; preds = %bb.mj
  store ptr null, ptr %i.bdi, align 8, !tbaa !173
  br label %bb.mm

bb.mk:                                            ; preds = %bb.mj
  %i.bdw = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 40
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !109
  %i.bdz = add nuw nsw i32 %i.bdu, 1
  %i.bea = call ptr %i.bdy(i32 noundef %i.bdz) #20 ; 2 uses
  store ptr %i.bea, ptr %i.bdi, align 8, !tbaa !173
  %i.beb = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.bec = add nsw i32 %i.beb, 1
  %i.bed = sext i32 %i.bec to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bea, ptr nonnull align 1 %i.bds, i64 %i.bed, i1 false)
  %.pr1320 = load ptr, ptr %i.bdi, align 8, !tbaa !173
  %.not1105 = icmp eq ptr %.pr1320, null
  br i1 %.not1105, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.bee, align 8, !tbaa !122
  %i.bef = load ptr, ptr %0, align 8, !tbaa !117
  %i.beg = call i32 @sqlite3_trace_v2(ptr noundef %i.bef, i32 noundef %.5916, ptr noundef nonnull @DbTraceV2Handler, ptr noundef nonnull %0) #20 ; 0 uses
  br label %.critedge1215

bb.mm:                                            ; preds = %.thread1321, %bb.mk
  %i.beh = load ptr, ptr %0, align 8, !tbaa !117
  %i.bei = call i32 @sqlite3_trace_v2(ptr noundef %i.beh, i32 noundef 0, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %.critedge1215

.critedge1214.sink.split:                         ; preds = %.lr.ph, %.thread1318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #20
  br label %.critedge1214

.critedge1214:                                    ; preds = %.critedge1214.sink.split, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #20
  br label %.critedge1185

bb.mn:                                            ; preds = %bb.d
  %i.bej = add nsw i32 %2, -5
  %or.cond61 = icmp ult i32 %i.bej, -2
  br i1 %or.cond61, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.bek = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 2128
  %i.bem = load ptr, ptr %i.bel, align 8, !tbaa !102
  call void %i.bem(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull @.str.289) #20
  br label %.critedge1185

bb.mp:                                            ; preds = %bb.mn
  %i.ben = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.beo = load i32, ptr %i.ben, align 8, !tbaa !176
  %i.bep = icmp eq i32 %i.beo, 0
  %i.beq = icmp eq i32 %2, 4
  %or.cond63 = and i1 %i.beq, %i.bep
  br i1 %or.cond63, label %bb.mq, label %bb.ms

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #20
  %i.ber = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 2448
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !129
  %i.beu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !105
  %i.bew = call i32 %i.bet(ptr noundef %1, ptr noundef %i.bev, ptr noundef nonnull @DbObjCmd.TTYPE_strs.290, i32 noundef 8, ptr noundef nonnull @.str.294, i32 noundef 0, ptr noundef nonnull %i.an) #20
  %.not1098 = icmp eq i32 %i.bew, 0
  br i1 %.not1098, label %bb.mr, label %.critedge1219

bb.mr:                                            ; preds = %bb.mq
  %i.bex = load i32, ptr %i.an, align 4, !tbaa !30 ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.bex, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.295, ptr @.str.288
  %switch.selectcmp1216 = icmp eq i32 %i.bex, 2
  %switch.select1217 = select i1 %switch.selectcmp1216, ptr @.str.296, ptr %switch.select
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #20
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mp
  %.2909 = phi ptr [ %switch.select1217, %bb.mr ], [ @.str.288, %bb.mp ]
  %i.bey = zext nneg i32 %2 to i64
  %i.bez = getelementptr [8 x i8], ptr %3, i64 %i.bey
  %i.bfa = getelementptr i8, ptr %i.bez, i64 -8
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !105 ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bfd = load i32, ptr %i.bfc, align 8, !tbaa !177
  %i.bfe = add nsw i32 %i.bfd, 1
  store i32 %i.bfe, ptr %i.bfc, align 8, !tbaa !177
  %i.bff = load ptr, ptr %0, align 8, !tbaa !117
  %i.bfg = call i32 @sqlite3_exec(ptr noundef %i.bff, ptr noundef %.2909, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %i.bfh = load i32, ptr %i.bfc, align 8, !tbaa !177
  %i.bfi = add nsw i32 %i.bfh, -1
  store i32 %i.bfi, ptr %i.bfc, align 8, !tbaa !177
  %.not1099 = icmp eq i32 %i.bfg, 0
  br i1 %.not1099, label %bb.mu, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bfj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 576
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !106
  %i.bfm = load ptr, ptr %0, align 8, !tbaa !117
  %i.bfn = call ptr @sqlite3_errmsg(ptr noundef %i.bfm) #20
  call void (ptr, ...) %i.bfl(ptr noundef %1, ptr noundef %i.bfn, ptr noundef null) #20
  br label %.critedge1185

bb.mu:                                            ; preds = %bb.ms
  %i.bfo = load i32, ptr %i.ben, align 8, !tbaa !176
  %i.bfp = add nsw i32 %i.bfo, 1
  store i32 %i.bfp, ptr %i.ben, align 8, !tbaa !176
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bfr = load i32, ptr %i.bfq, align 8, !tbaa !125
  %i.bfs = add nsw i32 %i.bfr, 1
  store i32 %i.bfs, ptr %i.bfq, align 8, !tbaa !125
  %i.bft = call fastcc i32 @DbUseNre()
  %.not1100 = icmp eq i32 %i.bft, 0
  %i.bfu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not1100, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 4712
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !178
  call void %i.bfw(ptr noundef %1, ptr noundef nonnull @DbTransPostCmd, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %i.bfx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 4688
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !179
  %i.bga = call i32 %i.bfz(ptr noundef %1, ptr noundef %i.bfb, i32 noundef 0) #20 ; 0 uses
  br label %.critedge1185

bb.mw:                                            ; preds = %bb.mu
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bfu, i64 2360
  %i.bgc = load ptr, ptr %i.bgb, align 8, !tbaa !180
  %i.bgd = call i32 %i.bgc(ptr noundef %1, ptr noundef %i.bfb, i32 noundef 0) #20
  %i.bge = call i32 @DbTransPostCmd(ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %i.bgd)
  br label %.critedge1185

.critedge1219:                                    ; preds = %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #20
  br label %.critedge1185

bb.mx:                                            ; preds = %bb.d
  %i.bgf = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 576
  %i.bgh = load ptr, ptr %i.bgg, align 8, !tbaa !106
  call void (ptr, ...) %i.bgh(ptr noundef %1, ptr noundef nonnull @.str.297, ptr noundef null) #20
  br label %.critedge1185

bb.my:                                            ; preds = %bb.d
  %i.bgi = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 576
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !106
  call void (ptr, ...) %i.bgk(ptr noundef %1, ptr noundef nonnull @.str.298, ptr noundef null) #20
  br label %.critedge1185

bb.mz:                                            ; preds = %bb.d, %bb.d, %bb.d
end_hunk_4
begin_hunk_5_@tclSqlFunc:bb.a
  %i.bg = call double @sqlite3_value_double(ptr noundef %i.ao) #20
  %i.bh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !200
  %i.bk = call ptr %i.bj(double noundef %i.bg) #20
  br label %.critedge

bb.m:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 464
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !149
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !209
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !168
  %i.br = call ptr %i.bn(ptr noundef %i.bq, i32 noundef -1) #20
  br label %.critedge

bb.n:                                             ; preds = %bb.g
  %i.bs = call i32 @sqlite3_value_bytes(ptr noundef %i.ao) #20
  %i.bt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 464
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !149
  %i.bw = call ptr @sqlite3_value_text(ptr noundef %i.ao) #20
  %i.bx = call ptr %i.bv(ptr noundef %i.bw, i32 noundef %i.bs) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.n, %bb.m, %bb.l, %bb.h
  %.1 = phi ptr [ %i.bx, %bb.n ], [ %i.av, %bb.h ], [ %i.br, %bb.m ], [ %i.bk, %bb.l ], [ %i.bc, %bb.j ], [ %i.bf, %bb.k ]
  %i.by = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 368
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.cc = call i32 %i.ca(ptr noundef %i.cb, ptr noundef nonnull %i.ai, ptr noundef %.1) #20
  %.not106 = icmp eq i32 %i.cc, 0
  br i1 %.not106, label %bb.f, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.cd = load i32, ptr %i.ai, align 8, !tbaa !143 ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.ai, align 8, !tbaa !143
  %i.cf = icmp slt i32 %i.cd, 2
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 256
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !144
  call void %i.ci(ptr noundef nonnull %i.ai) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cj = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  br label %.critedge109

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !166
  %.not105 = icmp eq i32 %i.cl, 0
  br i1 %.not105, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.cm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2736
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !107
  %i.cp = call ptr %i.co(ptr noundef nonnull %i.ai) #20 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.cq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2360
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !180
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.cu = call i32 %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.ai, i32 noundef 262144) #20
  %i.cv = load i32, ptr %i.ai, align 8, !tbaa !143 ; 2 uses
  %i.cw = add nsw i32 %i.cv, -1
  store i32 %i.cw, ptr %i.ai, align 8, !tbaa !143
  %i.cx = icmp slt i32 %i.cv, 2
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cy = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 256
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !144
  call void %i.da(ptr noundef nonnull %i.ai) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b, %bb.c
  %.1100 = phi i32 [ %i.cu, %bb.u ], [ %i.p, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.db = icmp eq i32 %.1100, 3
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @sqlite3_result_null(ptr noundef %0) #20
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  %i.dc = and i32 %.1100, -3
  %or.cond4.not = icmp eq i32 %i.dc, 0
  %i.dd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !208 ; 2 uses
  br i1 %or.cond4.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 1408
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !186
  %i.dh = call ptr %i.dg(ptr noundef %i.de) #20
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef %i.dh, i32 noundef -1) #20
  br label %bb.ao

bb.z:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 1344
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !134
  %i.dk = call ptr %i.dj(ptr noundef %i.de) #20   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !211 ; 2 uses
  %.not107 = icmp eq ptr %i.dm, null
  br i1 %.not107, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !213
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.do = phi ptr [ %i.dn, %bb.aa ], [ @.str.6, %bb.z ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !167
  switch i32 %i.dq, label %.thread114 [
    i32 5, label %bb.ac
    i32 4, label %.thread116
    i32 1, label %.thread
    i32 2, label %.thread118
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i8, ptr %i.do, align 1, !tbaa !29
  switch i8 %i.dr, label %.thread114 [
    i8 98, label %bb.ad
    i8 119, label %bb.ai
    i8 105, label %bb.aj
    i8 100, label %bb.ak
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ds = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(10) @.str.339) #21
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !214
  %i.dw = icmp eq ptr %i.dv, null                 ; 2 uses
  br i1 %i.dt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dw, label %.thread116, label %.thread114

bb.af:                                            ; preds = %bb.ad
  br i1 %i.dw, label %bb.ag, label %.thread114

bb.ag:                                            ; preds = %bb.af
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(8) @.str.341) #21
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(14) @.str.340) #21
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.thread, label %.thread114

bb.ai:                                            ; preds = %bb.ac
  %i.eb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(8) @.str.343) #21
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %.thread, label %.thread114

bb.aj:                                            ; preds = %bb.ac
  %i.ed = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(4) @.str.344) #21
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.thread, label %.thread114

bb.ak:                                            ; preds = %bb.ac
  %i.ef = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull dereferenceable(7) @.str.342) #21
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.thread118, label %.thread114

.thread116:                                       ; preds = %bb.ab, %bb.ae
  %i.eh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 280
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !153
  %i.ek = call ptr %i.ej(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.c) #20
  %i.el = load i32, ptr %i.c, align 4, !tbaa !30
  call void @sqlite3_result_blob(ptr noundef %0, ptr noundef %i.ek, i32 noundef %i.el, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #20
  br label %bb.an

.thread:                                          ; preds = %bb.ab, %bb.ah, %bb.ai, %bb.aj, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.em = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3912
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !154
  %i.ep = call i32 %i.eo(ptr noundef null, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.d) #20
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.al, label %.thread120

.thread120:                                       ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.thread118

bb.al:                                            ; preds = %.thread
  %i.er = load i64, ptr %i.d, align 8, !tbaa !155
  call void @sqlite3_result_int64(ptr noundef %0, i64 noundef %i.er) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.an

.thread118:                                       ; preds = %bb.ab, %bb.ak, %.thread120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.es = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 296
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !215
  %i.ev = call i32 %i.eu(ptr noundef null, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.e) #20
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.am, label %.thread122

.thread122:                                       ; preds = %.thread118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread114

bb.am:                                            ; preds = %.thread118
  %i.ex = load double, ptr %i.e, align 8, !tbaa !217
  call void @sqlite3_result_double(ptr noundef %0, double noundef %i.ex) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.an

.thread114:                                       ; preds = %bb.ae, %bb.ab, %bb.ac, %bb.ah, %bb.af, %bb.aj, %bb.ai, %bb.ak, %.thread122
  %i.ey = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 344
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !103
  %i.fb = call ptr %i.fa(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.c) #20
  %i.fc = load i32, ptr %i.c, align 4, !tbaa !30
  %i.fd = sext i32 %i.fc to i64
  call void @sqlite3_result_text64(ptr noundef %0, ptr noundef %i.fb, i64 noundef %i.fd, ptr noundef nonnull inttoptr (i64 -1 to ptr), i8 noundef zeroext 1) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %.thread114, %.thread116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ao

.critedge109:                                     ; preds = %bb.d, %bb.q
  %.sink132 = phi ptr [ %i.cj, %bb.q ], [ %i.ad, %bb.d ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink132, i64 1408
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !186
  %i.fg = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.fh = call ptr %i.ff(ptr noundef %i.fg) #20
  call void @sqlite3_result_error(ptr noundef %0, ptr noundef %i.fh, i32 noundef -1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.w, %bb.an, %bb.y, %.critedge109
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @createIncrblobChannel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.d = select i1 %.not, i32 6, i32 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.e = xor i32 %6, 1
  %i.f = call i32 @sqlite3_blob_open(ptr noundef %i.c, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %i.e, ptr noundef nonnull %i.a) #20
  %.not33 = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  br i1 %.not33, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1872
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.j = load ptr, ptr %1, align 8, !tbaa !117
  %i.k = call ptr @sqlite3_errmsg(ptr noundef %i.j) #20
  call void %i.i(ptr noundef %0, ptr noundef %i.k, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !109
  %i.n = call ptr %i.m(i32 noundef 56) #20        ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !422
  store ptr %i.p, ptr %i.n, align 8, !tbaa !221
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 4, ptr %i.q, align 8, !tbaa !222
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load i32, ptr @createIncrblobChannel.count, align 4, !tbaa !30
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr @createIncrblobChannel.count, align 4, !tbaa !30
  %i.t = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 64, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.420, i32 noundef %i.s) #20 ; 0 uses
  %i.u = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 720
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !423
  %i.x = call ptr %i.w(ptr noundef nonnull @IncrblobChannelType, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, i32 noundef %i.d) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !223
  %i.z = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1696
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !424
  call void %i.ab(ptr noundef %0, ptr noundef %i.x) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !224 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !225
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.af, align 8, !tbaa !226
  %.not34 = icmp eq ptr %i.ad, null
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !226
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %1, ptr %i.ah, align 8, !tbaa !227
  %i.ai = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1872
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 1264
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !425
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !223
  %i.ao = call ptr %i.am(ptr noundef %i.an) #20
  call void %i.ak(ptr noundef %0, ptr noundef %i.ao, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare void @sqlite3_interrupt(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_last_insert_rowid(ptr noundef) local_unnamed_addr #5

declare void @sqlite3_progress_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @DbProgressHandler(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169
  %i.h = tail call i32 %i.c(ptr noundef %i.e, ptr noundef %i.g) #20
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1408
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.m = tail call ptr %i.k(ptr noundef %i.l) #20
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #20, !inline_history !8
  %i.o = and i64 %i.n, 4294967295
  %.not5 = icmp ne i64 %i.o, 0
  %spec.select = zext i1 %.not5 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare ptr @sqlite3_profile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @DbProfileHandler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %struct.Tcl_DString, align 8        ; 8 uses
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 99, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.59, i64 noundef %2) #20 ; 0 uses
  %i.c = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 992
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181
  call void %i.e(ptr noundef nonnull %3) #20
  %i.f = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 952
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170
  %i.k = call ptr %i.h(ptr noundef nonnull %3, ptr noundef %i.j, i32 noundef -1) #20 ; 0 uses
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !183
  %i.o = call ptr %i.n(ptr noundef nonnull %3, ptr noundef %1) #20 ; 0 uses
  %i.p = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.s = call ptr %i.r(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #20 ; 0 uses
  %i.t = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1048
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !192
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !122
  %i.y = load ptr, ptr %3, align 8, !tbaa !185
  %i.z = call i32 %i.v(ptr noundef %i.x, ptr noundef %i.y) #20 ; 0 uses
  %i.aa = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 976
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !110
  call void %i.ac(ptr noundef nonnull %3) #20
  %i.ad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1752
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !163
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !122
  call void %i.af(ptr noundef %i.ag) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

declare i32 @sqlite3_sleep(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_serialize(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_busy_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @sqlite3_total_changes64(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_trace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @DbTraceHandler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %2 = alloca %struct.Tcl_DString, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181
  call void %i.c(ptr noundef nonnull %2) #20
  %i.d = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 952
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.i = call ptr %i.f(ptr noundef nonnull %2, ptr noundef %i.h, i32 noundef -1) #20 ; 0 uses
  %i.j = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.m = call ptr %i.l(ptr noundef nonnull %2, ptr noundef %1) #20 ; 0 uses
  %i.n = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1048
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122
  %i.s = load ptr, ptr %2, align 8, !tbaa !185
  %i.t = call i32 %i.p(ptr noundef %i.r, ptr noundef %i.s) #20 ; 0 uses
  %i.u = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 976
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  call void %i.w(ptr noundef nonnull %2) #20
  %i.x = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1752
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !163
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !122
  call void %i.z(ptr noundef %i.aa) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare i32 @sqlite3_trace_v2(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @DbTraceV2Handler(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.n

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  switch i32 %i.c, label %bb.n [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.k
  ]

bb.b:                                             ; preds = %.split
  %i.d = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.i = tail call ptr %i.f(ptr noundef %i.h, i32 noundef -1) #20 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !143
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !143
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 3920
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !199
  %i.s = ptrtoint ptr %2 to i64
  %i.t = tail call ptr %i.r(i64 noundef %i.s) #20
  %i.u = tail call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.i, ptr noundef %i.t) #20 ; 0 uses
  %i.v = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 368
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !148
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 464
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !149
  %i.ab = tail call ptr %i.aa(ptr noundef %3, i32 noundef -1) #20
  %i.ac = tail call i32 %i.x(ptr noundef %i.y, ptr noundef nonnull %i.i, ptr noundef %i.ab) #20 ; 0 uses
  %i.ad = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !180
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.ah = tail call i32 %i.af(ptr noundef %i.ag, ptr noundef nonnull %i.i, i32 noundef 262144) #20 ; 0 uses
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !143 ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.i, align 8, !tbaa !143
  %i.ak = icmp slt i32 %i.ai, 2
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !144
  tail call void %i.an(ptr noundef nonnull %i.i) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !163
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !122
  tail call void %i.aq(ptr noundef %i.ar) #20
  br label %bb.n

bb.e:                                             ; preds = %.split
  %i.as = load i64, ptr %3, align 8, !tbaa !155
  %i.at = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 464
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !173
  %i.ay = tail call ptr %i.av(ptr noundef %i.ax, i32 noundef -1) #20 ; 8 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !143
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !143
  %i.bb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 368
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !148
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !122
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 3920
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !199
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = tail call ptr %i.bh(i64 noundef %i.bi) #20
  %i.bk = tail call i32 %i.bd(ptr noundef %i.bf, ptr noundef nonnull %i.ay, ptr noundef %i.bj) #20 ; 0 uses
  %i.bl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 368
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !148
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !122
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 3920
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !199
  %i.br = tail call ptr %i.bq(i64 noundef %i.as) #20
  %i.bs = tail call i32 %i.bn(ptr noundef %i.bo, ptr noundef nonnull %i.ay, ptr noundef %i.br) #20 ; 0 uses
  %i.bt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2360
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !180
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !122
  %i.bx = tail call i32 %i.bv(ptr noundef %i.bw, ptr noundef nonnull %i.ay, i32 noundef 262144) #20 ; 0 uses
  %i.by = load i32, ptr %i.ay, align 8, !tbaa !143 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.ay, align 8, !tbaa !143
  %i.ca = icmp slt i32 %i.by, 2
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 256
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !144
  tail call void %i.cd(ptr noundef nonnull %i.ay) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ce = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1752
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !163
  %i.ch = load ptr, ptr %i.be, align 8, !tbaa !122
  tail call void %i.cg(ptr noundef %i.ch) #20
  br label %bb.n

bb.h:                                             ; preds = %.split
  %i.ci = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 464
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !149
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !173
  %i.cn = tail call ptr %i.ck(ptr noundef %i.cm, i32 noundef -1) #20 ; 7 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !143
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 8, !tbaa !143
  %i.cq = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 368
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !148
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !122
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 3920
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !199
  %i.cx = ptrtoint ptr %2 to i64
  %i.cy = tail call ptr %i.cw(i64 noundef %i.cx) #20
  %i.cz = tail call i32 %i.cs(ptr noundef %i.cu, ptr noundef nonnull %i.cn, ptr noundef %i.cy) #20 ; 0 uses
  %i.da = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2360
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !180
  %i.dd = load ptr, ptr %i.ct, align 8, !tbaa !122
  %i.de = tail call i32 %i.dc(ptr noundef %i.dd, ptr noundef nonnull %i.cn, i32 noundef 262144) #20 ; 0 uses
  %i.df = load i32, ptr %i.cn, align 8, !tbaa !143 ; 2 uses
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.cn, align 8, !tbaa !143
  %i.dh = icmp slt i32 %i.df, 2
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.di = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 256
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !144
  tail call void %i.dk(ptr noundef nonnull %i.cn) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dl = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1752
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !163
  %i.do = load ptr, ptr %i.ct, align 8, !tbaa !122
  tail call void %i.dn(ptr noundef %i.do) #20
  br label %bb.n

bb.k:                                             ; preds = %.split
  %i.dp = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 464
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !149
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !173
  %i.du = tail call ptr %i.dr(ptr noundef %i.dt, i32 noundef -1) #20 ; 7 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !143
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !143
  %i.dx = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 368
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !148
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !122
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 3920
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !199
  %i.ee = ptrtoint ptr %2 to i64
  %i.ef = tail call ptr %i.ed(i64 noundef %i.ee) #20
  %i.eg = tail call i32 %i.dz(ptr noundef %i.eb, ptr noundef nonnull %i.du, ptr noundef %i.ef) #20 ; 0 uses
  %i.eh = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2360
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !180
  %i.ek = load ptr, ptr %i.ea, align 8, !tbaa !122
  %i.el = tail call i32 %i.ej(ptr noundef %i.ek, ptr noundef nonnull %i.du, i32 noundef 262144) #20 ; 0 uses
  %i.em = load i32, ptr %i.du, align 8, !tbaa !143 ; 2 uses
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr %i.du, align 8, !tbaa !143
  %i.eo = icmp slt i32 %i.em, 2
  br i1 %i.eo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ep = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 256
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !144
  tail call void %i.er(ptr noundef nonnull %i.du) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.es = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1752
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !163
  %i.ev = load ptr, ptr %i.ea, align 8, !tbaa !122
  tail call void %i.eu(ptr noundef %i.ev) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %bb.j, %bb.g, %bb.d, %.split
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @DbTransPostCmd(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !176
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !176
  %i.e = icmp eq i32 %2, 1                        ; 2 uses
  %i.f = select i1 %i.e, i64 2, i64 0
  %i.g = icmp eq i32 %i.d, 0
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @DbTransPostCmd.azEnd, i64 %i.f
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !177
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !177
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.p = tail call i32 @sqlite3_exec(ptr noundef %i.o, ptr noundef %i.k, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 576
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.u = tail call ptr @sqlite3_errmsg(ptr noundef %i.t) #20
  tail call void (ptr, ...) %i.s(ptr noundef %1, ptr noundef %i.u, ptr noundef null) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.w = tail call i32 @sqlite3_exec(ptr noundef %i.v, ptr noundef nonnull @.str.243, ptr noundef null, ptr noundef null, ptr noundef null) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi i32 [ 1, %bb.d ], [ %2, %bb.a ]
  %i.x = load i32, ptr %i.l, align 8, !tbaa !177
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.l, align 8, !tbaa !177
  tail call fastcc void @delDatabaseRef(ptr noundef nonnull %i.a)
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
end_hunk_5
begin_hunk_6_@dbPrepareAndBind:bb.a
  %.0161276 = phi i32 [ 0, %.lr.ph278 ], [ %.0161276.be, %.backedge ] ; 5 uses
  %.0167273 = phi i32 [ 1, %.lr.ph278 ], [ %.0167273.be, %.backedge ] ; 10 uses
  %.0168272 = phi i32 [ 0, %.lr.ph278 ], [ %.0168272.be, %.backedge ] ; 11 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ce = call ptr @sqlite3_bind_parameter_name(ptr noundef %i.cd, i32 noundef %.0167273) #20 ; 5 uses
  %.not203 = icmp eq ptr %i.ce, null
  br i1 %.not203, label %.thread244, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !29
  switch i8 %i.cf, label %.thread244 [
    i8 36, label %bb.w
    i8 58, label %bb.w
    i8 64, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v
  %i.cg = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2464
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !431
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ck = call ptr %i.ci(ptr noundef %i.g, ptr noundef nonnull %i.cj, ptr noundef null, i32 noundef 0) #20 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %.thread234

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !131 ; 2 uses
  %.not204 = icmp eq ptr %i.cm, null
  br i1 %.not204, label %.thread228, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 464
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !149
  %i.cq = call ptr %i.cp(ptr noundef nonnull %i.cm, i32 noundef -1) #20 ; 7 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !143
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 8, !tbaa !143
  %i.ct = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !148
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 464
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.cy = call ptr %i.cx(ptr noundef nonnull %i.ce, i32 noundef -1) #20
  %i.cz = call i32 %i.cv(ptr noundef %i.g, ptr noundef nonnull %i.cq, ptr noundef %i.cy) #20 ; 0 uses
  %.not205 = icmp eq i32 %.0161276, 0
  br i1 %.not205, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1752
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !163
  call void %i.dc(ptr noundef %i.g) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2360
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !180
  %i.dg = call i32 %i.df(ptr noundef %i.g, ptr noundef nonnull %i.cq, i32 noundef 262144) #20
  %i.dh = load i32, ptr %i.cq, align 8, !tbaa !143 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.cq, align 8, !tbaa !143
  %i.dj = icmp slt i32 %i.dh, 2
  br i1 %i.dj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 256
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !144
  call void %i.dm(ptr noundef nonnull %i.cq) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  switch i32 %i.dg, label %.thread228 [
    i32 0, label %bb.ad
    i32 1, label %.thread259
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dn = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1344
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !134
  %i.dq = call ptr %i.dp(ptr noundef %i.g) #20    ; 2 uses
  %.not206 = icmp eq ptr %i.dq, null
  br i1 %.not206, label %.thread228, label %.thread234

.thread234:                                       ; preds = %bb.w, %bb.ad
  %.2239 = phi ptr [ %i.dq, %bb.ad ], [ %i.ck, %bb.w ] ; 13 uses
  %.1162238 = phi i32 [ 1, %bb.ad ], [ %.0161276, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.dr = getelementptr inbounds nuw i8, ptr %.2239, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !211 ; 2 uses
  %.not207 = icmp eq ptr %i.ds, null
  br i1 %.not207, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread234
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !213
  br label %bb.af

bb.af:                                            ; preds = %.thread234, %bb.ae
  %i.du = phi ptr [ %i.dt, %bb.ae ], [ @.str.6, %.thread234 ] ; 7 uses
  %i.dv = load i8, ptr %i.ce, align 1, !tbaa !29
  %i.dw = icmp eq i8 %i.dv, 64
  br i1 %i.dw, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !29
  switch i8 %i.dx, label %.critedge210.thread [
    i8 98, label %bb.ah
    i8 100, label %bb.ao
    i8 119, label %bb.aq
    i8 105, label %bb.ar
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(10) @.str.339) #21
  %i.dz = icmp eq i32 %i.dy, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %.2239, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !214
  %i.ec = icmp eq ptr %i.eb, null                 ; 2 uses
  br i1 %i.dz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ec, label %bb.aj, label %.critedge210.thread

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %i.ed = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 280
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !153
  %i.eg = call ptr %i.ef(ptr noundef nonnull %.2239, ptr noundef nonnull %i.b) #20
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !30
  %i.ej = call i32 @sqlite3_bind_blob(ptr noundef %i.eh, i32 noundef %.0167273, ptr noundef %i.eg, i32 noundef %i.ei, ptr noundef null) #20 ; 0 uses
  %i.ek = load i32, ptr %.2239, align 8, !tbaa !143
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %.2239, align 8, !tbaa !143
  %i.em = load ptr, ptr %i.cc, align 8, !tbaa !198
  %i.en = add nsw i32 %.0168272, 1
  %i.eo = sext i32 %.0168272 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.eo
  store ptr %.2239, ptr %i.ep, align 8, !tbaa !105
  br label %bb.at

bb.ak:                                            ; preds = %bb.ah
  br i1 %i.ec, label %bb.al, label %.critedge210.thread

bb.al:                                            ; preds = %bb.ak
  %i.eq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(14) @.str.340) #21
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.es = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(8) @.str.341) #21
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.an, label %.critedge210.thread

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.eu = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 272
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !108
  %i.ex = call i32 %i.ew(ptr noundef %i.g, ptr noundef nonnull %.2239, ptr noundef nonnull %i.c) #20 ; 0 uses
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ez = load i32, ptr %i.c, align 4, !tbaa !30
  %i.fa = call i32 @sqlite3_bind_int(ptr noundef %i.ey, i32 noundef %.0167273, i32 noundef %i.ez) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.at

bb.ao:                                            ; preds = %bb.ag
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(7) @.str.342) #21
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.ap, label %.critedge210.thread

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.fd = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 296
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !215
  %i.fg = call i32 %i.ff(ptr noundef %i.g, ptr noundef nonnull %.2239, ptr noundef nonnull %i.d) #20 ; 0 uses
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.fi = load double, ptr %i.d, align 8, !tbaa !217
  %i.fj = call i32 @sqlite3_bind_double(ptr noundef %i.fh, i32 noundef %.0167273, double noundef %i.fi) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.at

bb.aq:                                            ; preds = %bb.ag
  %i.fk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(8) @.str.343) #21
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.as, label %.critedge210.thread

bb.ar:                                            ; preds = %bb.ag
  %i.fm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.du, ptr noundef nonnull dereferenceable(4) @.str.344) #21
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.as, label %.critedge210.thread

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.fo = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 3912
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !154
  %i.fr = call i32 %i.fq(ptr noundef %i.g, ptr noundef nonnull %.2239, ptr noundef nonnull %i.e) #20 ; 0 uses
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ft = load i64, ptr %i.e, align 8, !tbaa !155
  %i.fu = call i32 @sqlite3_bind_int64(ptr noundef %i.fs, i32 noundef %.0167273, i64 noundef %i.ft) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.at

.critedge210.thread:                              ; preds = %bb.ai, %bb.ag, %bb.ak, %bb.am, %bb.aq, %bb.ao, %bb.ar
  %i.fv = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 344
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !103
  %i.fy = call ptr %i.fx(ptr noundef nonnull %.2239, ptr noundef nonnull %i.b) #20
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !30
  %i.gb = sext i32 %i.ga to i64
  %i.gc = call i32 @sqlite3_bind_text64(ptr noundef %i.fz, i32 noundef %.0167273, ptr noundef %i.fy, i64 noundef %i.gb, ptr noundef null, i8 noundef zeroext 1) #20 ; 0 uses
  %i.gd = load i32, ptr %.2239, align 8, !tbaa !143
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %.2239, align 8, !tbaa !143
  %i.gf = load ptr, ptr %i.cc, align 8, !tbaa !198
  %i.gg = add nsw i32 %.0168272, 1
  %i.gh = sext i32 %.0168272 to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gh
  store ptr %.2239, ptr %i.gi, align 8, !tbaa !105
  br label %bb.at

bb.at:                                            ; preds = %bb.an, %bb.as, %.critedge210.thread, %bb.ap, %bb.aj
  %.1169 = phi i32 [ %i.en, %bb.aj ], [ %.0168272, %bb.an ], [ %.0168272, %bb.ap ], [ %.0168272, %bb.as ], [ %i.gg, %.critedge210.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.au

.thread228:                                       ; preds = %bb.ac, %bb.x, %bb.ad
  %.1162233 = phi i32 [ %.0161276, %bb.x ], [ 1, %bb.ad ], [ 1, %bb.ac ]
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.gk = call i32 @sqlite3_bind_null(ptr noundef %i.gj, i32 noundef %.0167273) #20 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %.thread228, %bb.at
  %.1162232 = phi i32 [ %.1162238, %bb.at ], [ %.1162233, %.thread228 ]
  %.2170 = phi i32 [ %.1169, %bb.at ], [ %.0168272, %.thread228 ] ; 3 uses
  %.not208 = icmp eq i32 %.1162232, 0
  br i1 %.not208, label %.thread244, label %.thread244.thread

.thread259:                                       ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 %.0168272, ptr %i.gl, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br label %.thread217

.thread244:                                       ; preds = %bb.au, %bb.u, %bb.v
  %.4165250 = phi i32 [ %.0161276, %bb.u ], [ %.0161276, %bb.v ], [ 0, %bb.au ] ; 2 uses
  %.5173249 = phi i32 [ %.0168272, %bb.u ], [ %.0168272, %bb.v ], [ %.2170, %bb.au ] ; 2 uses
  %exitcond.not = icmp eq i32 %.0167273, %.4179
  br i1 %exitcond.not, label %._crit_edge279, label %.backedge

.backedge:                                        ; preds = %.thread244, %.thread244.thread
  %.0161276.be = phi i32 [ %.4165250, %.thread244 ], [ 1, %.thread244.thread ]
  %.0168272.be = phi i32 [ %.5173249, %.thread244 ], [ %.2170, %.thread244.thread ]
  %.0167273.be = add nuw i32 %.0167273, 1
  br label %bb.u, !llvm.loop !428

.thread244.thread:                                ; preds = %bb.au
  %i.gm = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1752
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !163
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !122
  call void %i.go(ptr noundef %i.gp) #20
  %exitcond.not298 = icmp eq i32 %.0167273, %.4179
  br i1 %exitcond.not298, label %._crit_edge279.thread301, label %.backedge

._crit_edge279.thread301:                         ; preds = %.thread244.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 %.2170, ptr %i.gq, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br label %bb.av

._crit_edge279:                                   ; preds = %.thread244
  %i.gr = icmp eq i32 %.4165250, 0
  %i.gs = getelementptr inbounds nuw i8, ptr %.2182, i64 40
  store i32 %.5173249, ptr %i.gs, align 8, !tbaa !197
  store ptr %.2182, ptr %3, align 8, !tbaa !206
  br i1 %i.gr, label %.thread217, label %bb.av

bb.av:                                            ; preds = %._crit_edge279.thread301, %._crit_edge279
  %i.gt = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1752
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !163
  %i.gw = load ptr, ptr %i.f, align 8, !tbaa !122
  call void %i.gv(ptr noundef %i.gw) #20
  br label %.thread217

.thread217:                                       ; preds = %._crit_edge279.thread, %bb.q, %bb.r, %bb.o, %.thread259, %._crit_edge279, %bb.av
  %.1185 = phi i32 [ 1, %.thread259 ], [ 0, %bb.av ], [ 0, %._crit_edge279 ], [ 0, %bb.q ], [ 1, %bb.r ], [ 1, %bb.o ], [ 0, %._crit_edge279.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.1185
}

declare i32 @sqlite3_stmt_status(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @dbReleaseStmt(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.o, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !143  ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !143
  %i.k = icmp slt i32 %i.i, 2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144
  tail call void %i.n(ptr noundef nonnull %i.h) #20
  %.pre = load i32, ptr %i.a, align 8, !tbaa !197
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !197
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp ne i32 %2, 0
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.x = tail call i32 @sqlite3_finalize(ptr noundef %i.w) #20 ; 0 uses
  %i.y = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !119
  tail call void %i.aa(ptr noundef nonnull %1) #20, !inline_history !9
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187 ; 3 uses
  store ptr %i.ac, ptr %1, align 8, !tbaa !189
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !231
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %i.ae, align 8, !tbaa !231
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %1, ptr %i.ab, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !232
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.af, align 8, !tbaa !232
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !191
  %.not35 = icmp slt i32 %i.aj, %i.s
  br i1 %.not35, label %.loopexit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.j, %.lr.ph34
  %i.al = phi i32 [ %i.aw, %.lr.ph34 ], [ %i.ak, %bb.j ]
  %i.am = load ptr, ptr %i.af, align 8, !tbaa !232 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !231 ; 2 uses
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !232
  store ptr null, ptr %i.ao, align 8, !tbaa !189
  %i.ap = add nsw i32 %i.al, -1
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !191
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !190
  %i.as = tail call i32 @sqlite3_finalize(ptr noundef %i.ar) #20 ; 0 uses
  %i.at = load ptr, ptr @tclStubsPtr, align 8, !tbaa !98
end_hunk_6
begin_hunk_7_@llvm.smin.i32
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }

!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{!0, !28}
!1 = distinct !{!1, !28}
!2 = distinct !{!2, !28}
!3 = distinct !{!3, !28}
!4 = distinct !{!4, !28}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !28}
!11 = distinct !{null}
!12 = distinct !{!12, !28}
!13 = distinct !{!13, !28}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"", !21, i64 0, !22, i64 4}
!26 = !{!25, !22, i64 4}
!27 = !{!25, !21, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!21, !21, i64 0}
!30 = !{!22, !22, i64 0}
!31 = !{!"any pointer", !21, i64 0}
!32 = !{!"p1 _ZTS12sqlite3_stmt", !31, i64 0}
!33 = !{!"p1 _ZTS7sqlite3", !31, i64 0}
!34 = !{!"any p2 pointer", !31, i64 0}
!35 = !{!"p2 omnipotent char", !34, i64 0}
!36 = !{!"p1 _ZTS11sqlite3_str", !31, i64 0}
!37 = !{!"long long", !21, i64 0}
!38 = !{!"p1 int", !31, i64 0}
!39 = !{!"short", !21, i64 0}
!40 = !{!"p1 short", !31, i64 0}
!41 = !{!"p1 omnipotent char", !31, i64 0}
!42 = !{!"sqlite3_qrf_spec", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !21, i64 4, !21, i64 5, !21, i64 6, !21, i64 7, !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !40, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !35, i64 120}
!43 = !{!"Qrf", !32, i64 0, !33, i64 8, !32, i64 16, !35, i64 24, !36, i64 32, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !21, i64 64, !37, i64 80, !38, i64 88, !42, i64 96}
!44 = !{!43, !35, i64 24}
!45 = !{!42, !21, i64 0}
!46 = !{!43, !32, i64 0}
!47 = !{!43, !36, i64 32}
!48 = !{!43, !22, i64 40}
!49 = !{!43, !22, i64 44}
!50 = !{!43, !37, i64 80}
!51 = !{!43, !41, i64 176}
!52 = !{!43, !39, i64 112}
!53 = !{!43, !21, i64 97}
!54 = !{!43, !21, i64 98}
!55 = !{!43, !21, i64 99}
!56 = !{!43, !21, i64 101}
!57 = !{!43, !41, i64 152}
!58 = !{!43, !21, i64 104}
!59 = !{!"p1 _ZTS3Qrf", !31, i64 0}
!60 = !{!"p1 _ZTS9qrfPerCol", !31, i64 0}
!61 = !{!"qrfColData", !59, i64 0, !22, i64 8, !21, i64 12, !21, i64 13, !37, i64 16, !37, i64 24, !37, i64 32, !35, i64 40, !38, i64 48, !41, i64 56, !60, i64 64}
!62 = !{!61, !22, i64 8}
!63 = !{!61, !59, i64 0}
!64 = !{!61, !60, i64 64}
!65 = !{!61, !41, i64 56}
!66 = !{!41, !41, i64 0}
!67 = !{!"qrfPerCol", !41, i64 0, !22, i64 8, !22, i64 12, !21, i64 16, !21, i64 17, !21, i64 18}
!68 = !{!67, !22, i64 12}
!69 = !{!61, !37, i64 32}
!70 = !{!61, !37, i64 24}
!71 = !{!61, !35, i64 40}
!72 = !{!61, !38, i64 48}
!73 = !{!67, !21, i64 16}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!43, !22, i64 128}
!76 = !{!39, !39, i64 0}
!77 = !{!67, !21, i64 17}
!78 = !{!67, !22, i64 8}
!79 = !{!61, !21, i64 13}
!80 = !{!43, !21, i64 108}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!43, !21, i64 105}
!84 = !{!43, !22, i64 132}
!85 = !{!43, !31, i64 192}
!86 = !{!43, !31, i64 208}
!87 = !{!32, !32, i64 0}
!88 = !{!"llvm.loop.peeled.count", i32 1}
!89 = !{!"p1 _ZTS14qrfEQPGraphRow", !31, i64 0}
!90 = !{!"qrfEQPGraphRow", !22, i64 0, !22, i64 4, !89, i64 8, !21, i64 16}
!91 = !{!90, !22, i64 0}
!92 = !{!90, !22, i64 4}
!93 = !{!90, !89, i64 8}
!94 = !{!"qrfEQPGraph", !89, i64 0, !89, i64 8, !22, i64 16, !21, i64 20}
!95 = !{!94, !89, i64 0}
!96 = !{!43, !32, i64 16}
!97 = !{!"p1 _ZTS8TclStubs", !31, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!"TclStubs", !22, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !31, i64 160, !31, i64 168, !31, i64 176, !31, i64 184, !31, i64 192, !31, i64 200, !31, i64 208, !31, i64 216, !31, i64 224, !31, i64 232, !31, i64 240, !31, i64 248, !31, i64 256, !31, i64 264, !31, i64 272, !31, i64 280, !31, i64 288, !31, i64 296, !31, i64 304, !31, i64 312, !31, i64 320, !31, i64 328, !31, i64 336, !31, i64 344, !31, i64 352, !31, i64 360, !31, i64 368, !31, i64 376, !31, i64 384, !31, i64 392, !31, i64 400, !31, i64 408, !31, i64 416, !31, i64 424, !31, i64 432, !31, i64 440, !31, i64 448, !31, i64 456, !31, i64 464, !31, i64 472, !31, i64 480, !31, i64 488, !31, i64 496, !31, i64 504, !31, i64 512, !31, i64 520, !31, i64 528, !31, i64 536, !31, i64 544, !31, i64 552, !31, i64 560, !31, i64 568, !31, i64 576, !31, i64 584, !31, i64 592, !31, i64 600, !31, i64 608, !31, i64 616, !31, i64 624, !31, i64 632, !31, i64 640, !31, i64 648, !31, i64 656, !31, i64 664, !31, i64 672, !31, i64 680, !31, i64 688, !31, i64 696, !31, i64 704, !31, i64 712, !31, i64 720, !31, i64 728, !31, i64 736, !31, i64 744, !31, i64 752, !31, i64 760, !31, i64 768, !31, i64 776, !31, i64 784, !31, i64 792, !31, i64 800, !31, i64 808, !31, i64 816, !31, i64 824, !31, i64 832, !31, i64 840, !31, i64 848, !31, i64 856, !31, i64 864, !31, i64 872, !31, i64 880, !31, i64 888, !31, i64 896, !31, i64 904, !31, i64 912, !31, i64 920, !31, i64 928, !31, i64 936, !31, i64 944, !31, i64 952, !31, i64 960, !31, i64 968, !31, i64 976, !31, i64 984, !31, i64 992, !31, i64 1000, !31, i64 1008, !31, i64 1016, !31, i64 1024, !31, i64 1032, !31, i64 1040, !31, i64 1048, !31, i64 1056, !31, i64 1064, !31, i64 1072, !31, i64 1080, !31, i64 1088, !31, i64 1096, !31, i64 1104, !31, i64 1112, !31, i64 1120, !31, i64 1128, !31, i64 1136, !31, i64 1144, !31, i64 1152, !31, i64 1160, !31, i64 1168, !31, i64 1176, !31, i64 1184, !31, i64 1192, !31, i64 1200, !31, i64 1208, !31, i64 1216, !31, i64 1224, !31, i64 1232, !31, i64 1240, !31, i64 1248, !31, i64 1256, !31, i64 1264, !31, i64 1272, !31, i64 1280, !31, i64 1288, !31, i64 1296, !31, i64 1304, !31, i64 1312, !31, i64 1320, !31, i64 1328, !31, i64 1336, !31, i64 1344, !31, i64 1352, !31, i64 1360, !31, i64 1368, !31, i64 1376, !31, i64 1384, !31, i64 1392, !31, i64 1400, !31, i64 1408, !31, i64 1416, !31, i64 1424, !31, i64 1432, !31, i64 1440, !31, i64 1448, !31, i64 1456, !31, i64 1464, !31, i64 1472, !31, i64 1480, !31, i64 1488, !31, i64 1496, !31, i64 1504, !31, i64 1512, !31, i64 1520, !31, i64 1528, !31, i64 1536, !31, i64 1544, !31, i64 1552, !31, i64 1560, !31, i64 1568, !31, i64 1576, !31, i64 1584, !31, i64 1592, !31, i64 1600, !31, i64 1608, !31, i64 1616, !31, i64 1624, !31, i64 1632, !31, i64 1640, !31, i64 1648, !31, i64 1656, !31, i64 1664, !31, i64 1672, !31, i64 1680, !31, i64 1688, !31, i64 1696, !31, i64 1704, !31, i64 1712, !31, i64 1720, !31, i64 1728, !31, i64 1736, !31, i64 1744, !31, i64 1752, !31, i64 1760, !31, i64 1768, !31, i64 1776, !31, i64 1784, !31, i64 1792, !31, i64 1800, !31, i64 1808, !31, i64 1816, !31, i64 1824, !31, i64 1832, !31, i64 1840, !31, i64 1848, !31, i64 1856, !31, i64 1864, !31, i64 1872, !31, i64 1880, !31, i64 1888, !31, i64 1896, !31, i64 1904, !31, i64 1912, !31, i64 1920, !31, i64 1928, !31, i64 1936, !31, i64 1944, !31, i64 1952, !31, i64 1960, !31, i64 1968, !31, i64 1976, !31, i64 1984, !31, i64 1992, !31, i64 2000, !31, i64 2008, !31, i64 2016, !31, i64 2024, !31, i64 2032, !31, i64 2040, !31, i64 2048, !31, i64 2056, !31, i64 2064, !31, i64 2072, !31, i64 2080, !31, i64 2088, !31, i64 2096, !31, i64 2104, !31, i64 2112, !31, i64 2120, !31, i64 2128, !31, i64 2136, !31, i64 2144, !31, i64 2152, !31, i64 2160, !31, i64 2168, !31, i64 2176, !31, i64 2184, !31, i64 2192, !31, i64 2200, !31, i64 2208, !31, i64 2216, !31, i64 2224, !31, i64 2232, !31, i64 2240, !31, i64 2248, !31, i64 2256, !31, i64 2264, !31, i64 2272, !31, i64 2280, !31, i64 2288, !31, i64 2296, !31, i64 2304, !31, i64 2312, !31, i64 2320, !31, i64 2328, !31, i64 2336, !31, i64 2344, !31, i64 2352, !31, i64 2360, !31, i64 2368, !31, i64 2376, !31, i64 2384, !31, i64 2392, !31, i64 2400, !31, i64 2408, !31, i64 2416, !31, i64 2424, !31, i64 2432, !31, i64 2440, !31, i64 2448, !31, i64 2456, !31, i64 2464, !31, i64 2472, !31, i64 2480, !31, i64 2488, !31, i64 2496, !31, i64 2504, !31, i64 2512, !31, i64 2520, !31, i64 2528, !31, i64 2536, !31, i64 2544, !31, i64 2552, !31, i64 2560, !31, i64 2568, !31, i64 2576, !31, i64 2584, !31, i64 2592, !31, i64 2600, !31, i64 2608, !31, i64 2616, !31, i64 2624, !31, i64 2632, !31, i64 2640, !31, i64 2648, !31, i64 2656, !31, i64 2664, !31, i64 2672, !31, i64 2680, !31, i64 2688, !31, i64 2696, !31, i64 2704, !31, i64 2712, !31, i64 2720, !31, i64 2728, !31, i64 2736, !31, i64 2744, !31, i64 2752, !31, i64 2760, !31, i64 2768, !31, i64 2776, !31, i64 2784, !31, i64 2792, !31, i64 2800, !31, i64 2808, !31, i64 2816, !31, i64 2824, !31, i64 2832, !31, i64 2840, !31, i64 2848, !31, i64 2856, !31, i64 2864, !31, i64 2872, !31, i64 2880, !31, i64 2888, !31, i64 2896, !31, i64 2904, !31, i64 2912, !31, i64 2920, !31, i64 2928, !31, i64 2936, !31, i64 2944, !31, i64 2952, !31, i64 2960, !31, i64 2968, !31, i64 2976, !31, i64 2984, !31, i64 2992, !31, i64 3000, !31, i64 3008, !31, i64 3016, !31, i64 3024, !31, i64 3032, !31, i64 3040, !31, i64 3048, !31, i64 3056, !31, i64 3064, !31, i64 3072, !31, i64 3080, !31, i64 3088, !31, i64 3096, !31, i64 3104, !31, i64 3112, !31, i64 3120, !31, i64 3128, !31, i64 3136, !31, i64 3144, !31, i64 3152, !31, i64 3160, !31, i64 3168, !31, i64 3176, !31, i64 3184, !31, i64 3192, !31, i64 3200, !31, i64 3208, !31, i64 3216, !31, i64 3224, !31, i64 3232, !31, i64 3240, !31, i64 3248, !31, i64 3256, !31, i64 3264, !31, i64 3272, !31, i64 3280, !31, i64 3288, !31, i64 3296, !31, i64 3304, !31, i64 3312, !31, i64 3320, !31, i64 3328, !31, i64 3336, !31, i64 3344, !31, i64 3352, !31, i64 3360, !31, i64 3368, !31, i64 3376, !31, i64 3384, !31, i64 3392, !31, i64 3400, !31, i64 3408, !31, i64 3416, !31, i64 3424, !31, i64 3432, !31, i64 3440, !31, i64 3448, !31, i64 3456, !31, i64 3464, !31, i64 3472, !31, i64 3480, !31, i64 3488, !31, i64 3496, !31, i64 3504, !31, i64 3512, !31, i64 3520, !31, i64 3528, !31, i64 3536, !31, i64 3544, !31, i64 3552, !31, i64 3560, !31, i64 3568, !31, i64 3576, !31, i64 3584, !31, i64 3592, !31, i64 3600, !31, i64 3608, !31, i64 3616, !31, i64 3624, !31, i64 3632, !31, i64 3640, !31, i64 3648, !31, i64 3656, !31, i64 3664, !31, i64 3672, !31, i64 3680, !31, i64 3688, !31, i64 3696, !31, i64 3704, !31, i64 3712, !31, i64 3720, !31, i64 3728, !31, i64 3736, !31, i64 3744, !31, i64 3752, !31, i64 3760, !31, i64 3768, !31, i64 3776, !31, i64 3784, !31, i64 3792, !31, i64 3800, !31, i64 3808, !31, i64 3816, !31, i64 3824, !31, i64 3832, !31, i64 3840, !31, i64 3848, !31, i64 3856, !31, i64 3864, !31, i64 3872, !31, i64 3880, !31, i64 3888, !31, i64 3896, !31, i64 3904, !31, i64 3912, !31, i64 3920, !31, i64 3928, !31, i64 3936, !31, i64 3944, !31, i64 3952, !31, i64 3960, !31, i64 3968, !31, i64 3976, !31, i64 3984, !31, i64 3992, !31, i64 4000, !31, i64 4008, !31, i64 4016, !31, i64 4024, !31, i64 4032, !31, i64 4040, !31, i64 4048, !31, i64 4056, !31, i64 4064, !31, i64 4072, !31, i64 4080, !31, i64 4088, !31, i64 4096, !31, i64 4104, !31, i64 4112, !31, i64 4120, !31, i64 4128, !31, i64 4136, !31, i64 4144, !31, i64 4152, !31, i64 4160, !31, i64 4168, !31, i64 4176, !31, i64 4184, !31, i64 4192, !31, i64 4200, !31, i64 4208, !31, i64 4216, !31, i64 4224, !31, i64 4232, !31, i64 4240, !31, i64 4248, !31, i64 4256, !31, i64 4264, !31, i64 4272, !31, i64 4280, !31, i64 4288, !31, i64 4296, !31, i64 4304, !31, i64 4312, !31, i64 4320, !31, i64 4328, !31, i64 4336, !31, i64 4344, !31, i64 4352, !31, i64 4360, !31, i64 4368, !31, i64 4376, !31, i64 4384, !31, i64 4392, !31, i64 4400, !31, i64 4408, !31, i64 4416, !31, i64 4424, !31, i64 4432, !31, i64 4440, !31, i64 4448, !31, i64 4456, !31, i64 4464, !31, i64 4472, !31, i64 4480, !31, i64 4488, !31, i64 4496, !31, i64 4504, !31, i64 4512, !31, i64 4520, !31, i64 4528, !31, i64 4536, !31, i64 4544, !31, i64 4552, !31, i64 4560, !31, i64 4568, !31, i64 4576, !31, i64 4584, !31, i64 4592, !31, i64 4600, !31, i64 4608, !31, i64 4616, !31, i64 4624, !31, i64 4632, !31, i64 4640, !31, i64 4648, !31, i64 4656, !31, i64 4664, !31, i64 4672, !31, i64 4680, !31, i64 4688, !31, i64 4696, !31, i64 4704, !31, i64 4712, !31, i64 4720, !31, i64 4728, !31, i64 4736, !31, i64 4744, !31, i64 4752, !31, i64 4760, !31, i64 4768, !31, i64 4776, !31, i64 4784, !31, i64 4792, !31, i64 4800, !31, i64 4808, !31, i64 4816, !31, i64 4824, !31, i64 4832, !31, i64 4840, !31, i64 4848, !31, i64 4856, !31, i64 4864, !31, i64 4872, !31, i64 4880, !31, i64 4888, !31, i64 4896, !31, i64 4904, !31, i64 4912, !31, i64 4920, !31, i64 4928, !31, i64 4936, !31, i64 4944, !31, i64 4952, !31, i64 4960, !31, i64 4968, !31, i64 4976, !31, i64 4984, !31, i64 4992, !31, i64 5000, !31, i64 5008, !31, i64 5016, !31, i64 5024, !31, i64 5032, !31, i64 5040, !31, i64 5048, !31, i64 5056, !31, i64 5064, !31, i64 5072, !31, i64 5080, !31, i64 5088, !31, i64 5096, !31, i64 5104, !31, i64 5112, !31, i64 5120, !31, i64 5128, !31, i64 5136, !31, i64 5144, !31, i64 5152, !31, i64 5160, !31, i64 5168, !31, i64 5176, !31, i64 5184, !31, i64 5192, !31, i64 5200, !31, i64 5208, !31, i64 5216, !31, i64 5224, !31, i64 5232, !31, i64 5240, !31, i64 5248, !31, i64 5256, !31, i64 5264, !31, i64 5272, !31, i64 5280, !31, i64 5288, !31, i64 5296, !31, i64 5304, !31, i64 5312, !31, i64 5320, !31, i64 5328, !31, i64 5336, !31, i64 5344, !31, i64 5352, !31, i64 5360, !31, i64 5368, !31, i64 5376, !31, i64 5384, !31, i64 5392, !31, i64 5400, !31, i64 5408, !31, i64 5416, !31, i64 5424, !31, i64 5432, !31, i64 5440, !31, i64 5448, !31, i64 5456, !31, i64 5464, !31, i64 5472, !31, i64 5480, !31, i64 5488, !31, i64 5496, !31, i64 5504, !31, i64 5512, !31, i64 5520}
!100 = !{!99, !31, i64 784}
!101 = !{!99, !31, i64 16}
!102 = !{!99, !31, i64 2128}
!103 = !{!99, !31, i64 344}
!104 = !{!"p1 _ZTS7Tcl_Obj", !31, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!99, !31, i64 576}
!107 = !{!99, !31, i64 2736}
!108 = !{!99, !31, i64 272}
!109 = !{!99, !31, i64 40}
!110 = !{!99, !31, i64 976}
!111 = !{!"p1 _ZTS10Tcl_Interp", !31, i64 0}
!112 = !{!"p1 _ZTS7SqlFunc", !31, i64 0}
!113 = !{!"p1 _ZTS10SqlCollate", !31, i64 0}
!114 = !{!"p1 _ZTS15SqlPreparedStmt", !31, i64 0}
!115 = !{!"p1 _ZTS15IncrblobChannel", !31, i64 0}
!116 = !{!"SqliteDb", !33, i64 0, !111, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !22, i64 80, !41, i64 88, !112, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !113, i64 144, !22, i64 152, !104, i64 160, !114, i64 168, !114, i64 176, !22, i64 184, !22, i64 188, !115, i64 192, !22, i64 200, !22, i64 204, !22, i64 208, !22, i64 212, !22, i64 216, !22, i64 220, !22, i64 224}
!117 = !{!116, !33, i64 0}
!118 = !{!99, !31, i64 1872}
!119 = !{!99, !31, i64 48}
!120 = !{!116, !22, i64 184}
!121 = !{!116, !22, i64 220}
!122 = !{!116, !111, i64 8}
!123 = !{!99, !31, i64 2248}
!124 = !{ptr @DbUseNre}
!125 = !{!116, !22, i64 224}
!126 = !{ptr @Sqlite3_Init}
!127 = !{!33, !33, i64 0}
!128 = !{!31, !31, i64 0}
!129 = !{!99, !31, i64 2448}
!130 = !{!116, !41, i64 72}
!131 = !{!116, !41, i64 64}
!132 = !{!116, !41, i64 16}
!133 = !{!99, !31, i64 320}
!134 = !{!99, !31, i64 1344}
!135 = !{!"SqlCollate", !111, i64 0, !41, i64 8, !113, i64 16}
!136 = !{!135, !111, i64 0}
!137 = !{!116, !113, i64 144}
!138 = !{!135, !113, i64 16}
!139 = !{!135, !41, i64 8}
!140 = !{!116, !104, i64 160}
!141 = !{!"p1 _ZTS11Tcl_ObjType", !31, i64 0}
!142 = !{!"Tcl_Obj", !22, i64 0, !41, i64 8, !22, i64 16, !141, i64 24, !21, i64 32}
!143 = !{!142, !22, i64 0}
!144 = !{!99, !31, i64 256}
!145 = !{!99, !31, i64 248}
!146 = !{!116, !41, i64 24}
!147 = !{!99, !31, i64 440}
!148 = !{!99, !31, i64 368}
!149 = !{!99, !31, i64 464}
!150 = !{!99, !31, i64 432}
!151 = !{!99, !31, i64 1896}
!152 = !{!99, !31, i64 456}
!153 = !{!99, !31, i64 280}
!154 = !{!99, !31, i64 3912}
!155 = !{!37, !37, i64 0}
!156 = !{!"p1 _ZTS8SqliteDb", !31, i64 0}
!157 = !{!"p2 _ZTS7Tcl_Obj", !34, i64 0}
!158 = !{!"DbEvalContext", !156, i64 0, !104, i64 8, !41, i64 16, !114, i64 24, !22, i64 32, !22, i64 36, !104, i64 40, !157, i64 48}
!159 = !{!158, !156, i64 0}
!160 = !{!158, !41, i64 16}
!161 = !{!158, !104, i64 8}
!162 = !{!158, !22, i64 36}
!163 = !{!99, !31, i64 1752}
!164 = !{!"SqlFunc", !111, i64 0, !104, i64 8, !156, i64 16, !22, i64 24, !22, i64 28, !41, i64 32, !112, i64 40}
!165 = !{!164, !104, i64 8}
!166 = !{!164, !22, i64 24}
!167 = !{!164, !22, i64 28}
!168 = !{!116, !41, i64 88}
!169 = !{!116, !41, i64 56}
!170 = !{!116, !41, i64 48}
!171 = !{!99, !31, i64 416}
!172 = !{!116, !41, i64 32}
!173 = !{!116, !41, i64 40}
!174 = !{!99, !31, i64 392}
!175 = !{!99, !31, i64 384}
!176 = !{!116, !22, i64 216}
!177 = !{!116, !22, i64 80}
!178 = !{!99, !31, i64 4712}
!179 = !{!99, !31, i64 4688}
!180 = !{!99, !31, i64 2360}
!181 = !{!99, !31, i64 992}
!182 = !{!99, !31, i64 952}
!183 = !{!99, !31, i64 960}
!184 = !{!"Tcl_DString", !41, i64 0, !22, i64 8, !22, i64 12, !21, i64 16}
!185 = !{!184, !41, i64 0}
!186 = !{!99, !31, i64 1408}
!187 = !{!116, !114, i64 168}
!188 = !{!"SqlPreparedStmt", !114, i64 0, !114, i64 8, !32, i64 16, !22, i64 24, !41, i64 32, !22, i64 40, !157, i64 48}
!189 = !{!188, !114, i64 0}
!190 = !{!188, !32, i64 16}
!191 = !{!116, !22, i64 188}
!192 = !{!99, !31, i64 1048}
!193 = !{!158, !104, i64 40}
!194 = !{!158, !114, i64 24}
!195 = !{!158, !157, i64 48}
!196 = !{!158, !22, i64 32}
!197 = !{!188, !22, i64 40}
!198 = !{!188, !157, i64 48}
!199 = !{!99, !31, i64 3920}
!200 = !{!99, !31, i64 424}
!201 = !{!99, !31, i64 1584}
!202 = !{!99, !31, i64 1576}
!203 = !{!99, !31, i64 4040}
!204 = !{!99, !31, i64 3968}
!205 = !{!157, !157, i64 0}
!206 = !{!114, !114, i64 0}
!207 = !{!116, !112, i64 96}
!208 = !{!164, !111, i64 0}
!209 = !{!164, !156, i64 16}
!210 = !{!164, !112, i64 40}
!211 = !{!142, !141, i64 24}
!212 = !{!"Tcl_ObjType", !41, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32}
!213 = !{!212, !41, i64 0}
!214 = !{!142, !41, i64 8}
!215 = !{!99, !31, i64 296}
!216 = !{!"double", !21, i64 0}
!217 = !{!216, !216, i64 0}
!218 = !{!"p1 _ZTS12sqlite3_blob", !31, i64 0}
!219 = !{!"p1 _ZTS12Tcl_Channel_", !31, i64 0}
!220 = !{!"IncrblobChannel", !218, i64 0, !156, i64 8, !37, i64 16, !22, i64 24, !219, i64 32, !115, i64 40, !115, i64 48}
!221 = !{!220, !218, i64 0}
!222 = !{!220, !22, i64 24}
!223 = !{!220, !219, i64 32}
!224 = !{!116, !115, i64 192}
!225 = !{!220, !115, i64 40}
!226 = !{!220, !115, i64 48}
!227 = !{!220, !156, i64 8}
!228 = !{!116, !104, i64 104}
!229 = !{!116, !104, i64 120}
!230 = !{!116, !104, i64 128}
!231 = !{!188, !114, i64 8}
!232 = !{!116, !114, i64 176}
!233 = !{!220, !37, i64 16}
!234 = !{!99, !31, i64 624}
!235 = distinct !{!235, !28}
!236 = distinct !{!236, !28}
!237 = distinct !{!237, !28}
!238 = distinct !{!238, !28}
!239 = distinct !{!239, !74}
!240 = distinct !{!240, !28}
!241 = distinct !{!241, !28, !81, !82}
!242 = distinct !{!242, !28, !82, !81}
!243 = distinct !{!243, !28}
!244 = distinct !{!244, !28}
!245 = distinct !{!245, !28}
!246 = distinct !{!246, !28}
!247 = distinct !{!247, !28}
!248 = distinct !{!248, !28}
!249 = distinct !{!249, !28}
!250 = distinct !{null, null}
!251 = distinct !{!251, !28}
!252 = distinct !{!252, !28}
!253 = distinct !{null, null}
!254 = distinct !{!254, !28}
!255 = distinct !{!255, !28}
!256 = distinct !{!256, !28, !88}
!257 = distinct !{!257, !28}
!258 = distinct !{!258, !28, !88}
!259 = distinct !{!259, !28}
!260 = distinct !{!260, !28, !88}
!261 = distinct !{!261, !28, !88}
!262 = distinct !{!262, !28}
!263 = distinct !{!263, !28}
!264 = distinct !{null, null}
!265 = !{!43, !33, i64 8}
!266 = !{!43, !22, i64 52}
!267 = !{!43, !39, i64 114}
!268 = !{!43, !22, i64 56}
!269 = !{!43, !21, i64 100}
!270 = !{!43, !41, i64 160}
!271 = !{!43, !41, i64 168}
!272 = !{!43, !22, i64 48}
!273 = !{!43, !21, i64 102}
!274 = !{!43, !21, i64 103}
!275 = !{!43, !39, i64 116}
!276 = !{!43, !21, i64 106}
!277 = !{!67, !41, i64 0}
!278 = !{!67, !21, i64 18}
!279 = !{!43, !22, i64 120}
!280 = !{!94, !89, i64 8}
!281 = !{!43, !35, i64 216}
!282 = !{!43, !38, i64 88}
!283 = distinct !{!283, !28, !81, !82}
!284 = distinct !{!284, !28, !81}
!285 = distinct !{!285, !28, !81, !82}
!286 = distinct !{!286, !28, !81}
!287 = distinct !{!287, !28}
!288 = distinct !{!288, !28}
!289 = distinct !{!289, !28}
!290 = distinct !{!290, !28}
!291 = distinct !{!291, !28}
!292 = distinct !{null}
!293 = distinct !{!293, !28}
!294 = !{!99, !31, i64 2008}
!295 = !{!99, !31, i64 4680}
!296 = distinct !{!296, !28}
!297 = distinct !{!297, !28}
!298 = distinct !{!298, !28}
!299 = distinct !{!299, !28}
!300 = distinct !{!300, !28}
!301 = distinct !{!301, !28}
!302 = distinct !{!302, !28}
!303 = distinct !{!303, !28}
!304 = distinct !{!304, !28}
!305 = distinct !{!305, !28}
!306 = distinct !{!306, !28}
!307 = distinct !{!307, !74}
!308 = distinct !{!308, !28}
!309 = distinct !{!309, !28}
!310 = distinct !{!310, !28}
!311 = !{!43, !31, i64 184}
!312 = !{!43, !31, i64 200}
!313 = !{!43, !22, i64 124}
!314 = !{!43, !41, i64 144}
!315 = !{!43, !40, i64 136}
!316 = distinct !{!316, !28}
!317 = distinct !{!317, !28, !88}
!318 = distinct !{!318, !28, !81, !82}
!319 = distinct !{!319, !28, !82, !81}
!320 = distinct !{!320, !28}
!321 = distinct !{!321, !28}
!322 = distinct !{!322, !28}
!323 = distinct !{!323, !28, !81, !82}
!324 = distinct !{!324, !28, !82, !81}
!325 = distinct !{!325, !28}
!326 = distinct !{!326, !28}
!327 = distinct !{!327, !28}
!328 = distinct !{!328, !28}
!329 = distinct !{!329, !28}
!330 = distinct !{!330, !28}
!331 = distinct !{!331, !28}
!332 = distinct !{!332, !28}
!333 = distinct !{!333, !28}
!334 = distinct !{!334, !28, !88}
!335 = distinct !{!335, !28}
!336 = distinct !{!336, !28}
!337 = distinct !{!337, !28}
!338 = !{!89, !89, i64 0}
!339 = !{!99, !31, i64 4720}
!340 = distinct !{!340, !28}
!341 = distinct !{!341, !28}
!342 = distinct !{!342, !28, !81, !82}
!343 = distinct !{!343, !28, !81, !82}
!344 = distinct !{!344, !28, !82, !81}
!345 = distinct !{!345, !28}
!346 = distinct !{!346, !28}
!347 = distinct !{!347, !28}
!348 = distinct !{!348, !28}
!349 = distinct !{!349, !28}
!350 = distinct !{!350, !28}
!351 = distinct !{!351, !28}
!352 = distinct !{null}
!353 = distinct !{!353, !28}
!354 = distinct !{!354, !28}
!355 = !{!99, !31, i64 3928}
end_hunk_7
