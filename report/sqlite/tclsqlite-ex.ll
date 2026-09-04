Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@qrfRenderValue:bb.a
    i8 27, label %bb.am
    i8 0, label %bb.bh
  ]

bb.am:                                            ; preds = %bb.al
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !29
  %.not.i203 = icmp eq i8 %i.ik, 91
  br i1 %.not.i203, label %.preheader.i, label %.thread212

.preheader.i:                                     ; preds = %bb.am, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.am ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !29
  %i.in = and i8 %i.im, -16
  %or.cond.i = icmp eq i8 %i.in, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i204, !llvm.loop !1

.critedge.i204:                                   ; preds = %.preheader.i, %.critedge.i204
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i204 ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv25.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !29  ; 2 uses
  %i.iq = and i8 %i.ip, -16
  %or.cond22.i = icmp eq i8 %i.iq, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i204, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i204
  %i.ir = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.is = add i8 %i.ip, -64
  %or.cond23.i = icmp ult i8 %i.is, 63
  %i.it = add nuw nsw i32 %i.ir, 1
  br i1 %or.cond23.i, label %.thread213, label %.thread212

.thread212:                                       ; preds = %bb.am, %.critedge2.i
  br label %.thread213

bb.an:                                            ; preds = %bb.ak
  %i.iu = icmp sgt i8 %i.ih, -1
  br i1 %i.iu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iv = add nsw i32 %.0, 1                      ; 2 uses
  %.not198 = icmp slt i32 %.0, %spec.store.select
  br i1 %.not198, label %.thread213, label %bb.bh

bb.ap:                                            ; preds = %bb.an
  %i.iw = zext i8 %i.ih to i32                    ; 6 uses
  %i.ix = and i32 %i.iw, 224
  %i.iy = icmp eq i32 %i.ix, 192
  br i1 %i.iy, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = and i32 %i.jb, 192
  %i.jd = icmp eq i32 %i.jc, 128
  br i1 %i.jd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.je = shl nuw nsw i32 %i.iw, 6
  %i.jf = and i32 %i.je, 1984
  %i.jg = and i32 %i.jb, 63
  %i.jh = or disjoint i32 %i.jg, %i.jf
  br label %sqlite3_qrf_decode_utf8.exit

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.ji = and i32 %i.iw, 240
  %i.jj = icmp eq i32 %i.ji, 224
  br i1 %i.jj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !29
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 192
  %i.jo = icmp eq i32 %i.jn, 128
  br i1 %i.jo, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !29
  %i.jr = zext i8 %i.jq to i32                    ; 2 uses
  %i.js = and i32 %i.jr, 192
  %i.jt = icmp eq i32 %i.js, 128
  br i1 %i.jt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ju = shl nuw nsw i32 %i.iw, 12
  %i.jv = and i32 %i.ju, 61440
  %i.jw = shl nuw nsw i32 %i.jm, 6
  %i.jx = and i32 %i.jw, 4032
  %i.jy = or disjoint i32 %i.jx, %i.jv
  %i.jz = and i32 %i.jr, 63
  %i.ka = or disjoint i32 %i.jy, %i.jz
  br label %sqlite3_qrf_decode_utf8.exit

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.kb = and i32 %i.iw, 248
  %i.kc = icmp eq i32 %i.kb, 240
  br i1 %i.kc, label %bb.ax, label %sqlite3_qrf_wcwidth.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = and i32 %i.kf, 192
  %i.kh = icmp eq i32 %i.kg, 128
  br i1 %i.kh, label %bb.ay, label %sqlite3_qrf_wcwidth.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !29
  %i.kk = zext i8 %i.kj to i32                    ; 2 uses
  %i.kl = and i32 %i.kk, 192
  %i.km = icmp eq i32 %i.kl, 128
  br i1 %i.km, label %bb.az, label %sqlite3_qrf_wcwidth.exit

bb.az:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !29
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = and i32 %i.kp, 192
  %i.kr = icmp eq i32 %i.kq, 128
  br i1 %i.kr, label %bb.ba, label %sqlite3_qrf_wcwidth.exit

bb.ba:                                            ; preds = %bb.az
  %i.ks = shl nuw nsw i32 %i.iw, 18
  %i.kt = and i32 %i.ks, 1835008
  %i.ku = shl nuw nsw i32 %i.kf, 12
  %i.kv = and i32 %i.ku, 258048
  %i.kw = or disjoint i32 %i.kv, %i.kt
  %i.kx = shl nuw nsw i32 %i.kk, 6
  %i.ky = and i32 %i.kx, 4032
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = and i32 %i.kp, 63
  %i.lb = or disjoint i32 %i.kz, %i.la
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.ar, %bb.av, %bb.ba
  %.sink.i205 = phi i32 [ %i.jh, %bb.ar ], [ %i.lb, %bb.ba ], [ %i.ka, %bb.av ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.ar ], [ 4, %bb.ba ], [ 3, %bb.av ] ; 4 uses
  %i.lc = icmp samesign ult i32 %.sink.i205, 768
  br i1 %i.lc, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i206

.preheader.i206:                                  ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.bd
  %.01935.i = phi i32 [ %.2.i, %bb.bd ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
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
  %i.y = sdiv i32 %i.w, %i.s
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
end_hunk_0
begin_hunk_1_@qrfWrapLine:bb.a
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 192
  %i.bb = icmp eq i32 %i.ba, 128
  br i1 %i.bb, label %bb.n, label %sqlite3_qrf_wcwidth.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw nsw i32 %i.g, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.au, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = and i32 %i.az, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.e, %bb.i, %bb.n
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ %i.bl, %bb.n ], [ %i.ak, %bb.i ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.e ], [ 4, %bb.n ], [ 3, %bb.i ] ; 4 uses
  %i.bm = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bm, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.q
  %.01935.i = phi i32 [ %.2.i, %bb.q ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.q ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bn = add nsw i32 %.02034.i, %.01935.i
  %i.bo = sdiv i32 %i.bn, 2                       ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %.sink.i
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.bu = icmp sgt i32 %i.bs, %.sink.i
  br i1 %i.bu, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %i.bo, -1
  br label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.bw = load i8, ptr %i.bq, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.222.i = phi i32 [ %i.bo, %.preheader.i ], [ %.02034.i, %bb.p ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bv, %bb.p ] ; 3 uses
  %i.bx = add nsw i32 %.2.i, -1
  %i.by = icmp slt i32 %.222.i, %i.bx
  br i1 %i.by, label %.preheader.i, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.bz = sext i32 %.2.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %i.cd = icmp sgt i32 %i.cc, %.sink.i
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = sext i32 %.222.i to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.ca, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.s, %bb.t
  %.0.i143 = phi i32 [ %.0.i, %bb.t ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.s ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.shrunk.i = phi i8 [ %i.ch, %bb.t ], [ %i.bw, %.thread.i ], [ %i.cg, %bb.s ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ci = add nsw i32 %.0110173, %.225.i          ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, %1
  %i.ck = add i32 %.0115172, -1
  %i.cl = add i32 %i.ck, %.0.i143
  br i1 %i.cj, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ad

bb.u:                                             ; preds = %.lr.ph
  %i.cm = icmp ugt i8 %i.e, 31
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp eq i32 %.0110173, %1
  br i1 %i.cn, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  switch i8 %i.e, label %qrfIsVt100.exit.thread [
    i8 10, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 13, label %bb.y
    i8 9, label %bb.z
    i8 27, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %.0115172, 1                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %.thread151, label %qrfIsVt100.exit.thread

bb.z:                                             ; preds = %bb.x
  %reass.sub = and i32 %.0110173, -8
  %i.cu = add i32 %reass.sub, 8                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %1
  br i1 %i.cv, label %.thread, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.cx, 91
  br i1 %.not.i, label %.preheader.i140, label %qrfIsVt100.exit.thread

.preheader.i140:                                  ; preds = %bb.aa, %.preheader.i140
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i140 ], [ 2, %bb.aa ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %i.da = and i8 %i.cz, -16
  %or.cond.i = icmp eq i8 %i.da, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i140, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i140, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i140 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv25.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29  ; 2 uses
  %i.dd = and i8 %i.dc, -16
  %or.cond22.i = icmp eq i8 %i.dd, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.de = add i8 %i.dc, -64
  %or.cond23.i = icmp ult i8 %i.de, 63
  br i1 %or.cond23.i, label %bb.ab, label %qrfIsVt100.exit.thread

bb.ab:                                            ; preds = %.critedge2.i
  %i.df = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.dg = add nsw i32 %.0115172, %i.df
  br label %bb.ad

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.aa, %bb.y, %bb.x
  %i.dh = icmp eq i32 %.0110173, %1
  br i1 %i.dh, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %qrfIsVt100.exit.thread
  %i.di = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.ad:                                            ; preds = %sqlite3_qrf_wcwidth.exit, %bb.z, %bb.ab, %bb.ac, %bb.w
  %.2117 = phi i32 [ %i.cl, %sqlite3_qrf_wcwidth.exit ], [ %.0115172, %bb.w ], [ %.0115172, %bb.z ], [ %i.dg, %bb.ab ], [ %.0115172, %bb.ac ]
  %.3 = phi i32 [ %i.ci, %sqlite3_qrf_wcwidth.exit ], [ %i.co, %bb.w ], [ %i.cu, %bb.z ], [ %.0110173, %bb.ab ], [ %i.di, %bb.ac ] ; 3 uses
  %i.dj = add nsw i32 %.2117, 1                   ; 2 uses
  %.not = icmp sgt i32 %.3, %1
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !328

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.ad, %bb.v, %qrfIsVt100.exit.thread, %bb.x, %bb.x, %sqlite3_qrf_wcwidth.exit
  %.0115.lcssa = phi i32 [ %.0115172, %sqlite3_qrf_wcwidth.exit ], [ %i.dj, %bb.ad ], [ %.0115172, %bb.v ], [ %.0115172, %qrfIsVt100.exit.thread ], [ %.0115172, %bb.x ], [ %.0115172, %bb.x ] ; 3 uses
  %.0110.lcssa = phi i32 [ %.0110173, %sqlite3_qrf_wcwidth.exit ], [ %.3, %bb.ad ], [ %1, %bb.v ], [ %1, %qrfIsVt100.exit.thread ], [ %.0110173, %bb.x ], [ %.0110173, %bb.x ] ; 3 uses
  switch i8 %i.e, label %.thread [
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread
    i8 10, label %.thread151
  ]

sqlite3_qrf_wcwidth.exit._crit_edge.thread:       ; preds = %.preheader159, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110.lcssa226 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ]
  %.0115.lcssa225 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ] ; 2 uses
  store i32 %.0115.lcssa225, ptr %3, align 4, !tbaa !30
  store i32 %.0110.lcssa226, ptr %4, align 4, !tbaa !30
  br label %bb.am

.thread151:                                       ; preds = %bb.y, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110166 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.y ]
  %.3118155 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %i.cp, %bb.y ] ; 2 uses
  store i32 %.3118155, ptr %3, align 4, !tbaa !30
  store i32 %.0110166, ptr %4, align 4, !tbaa !30
  %i.dk = add nsw i32 %.3118155, 1
  br label %bb.am

.thread:                                          ; preds = %bb.z, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0115170 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0115172, %bb.z ] ; 10 uses
  %.0110167 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.z ] ; 5 uses
  %.not129 = icmp eq i32 %2, 0
  %.pre = sext i32 %.0115170 to i64               ; 8 uses
  br i1 %.not129, label %.thread._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %.pre
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !29  ; 2 uses
  %.not130 = icmp eq i8 %i.dm, 0
  br i1 %.not130, label %.thread._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !29  ; 2 uses
  %i.dq = and i8 %i.dp, 1
  %.not131 = icmp eq i8 %i.dq, 0
  br i1 %.not131, label %bb.ag, label %.thread._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext i8 %i.e to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29
  %i.du = and i8 %i.dt, 6
  %i.dv = icmp ne i8 %i.du, 0
  %i.dw = and i8 %i.dp, 6
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = xor i1 %i.dx, %i.dv
  br i1 %i.dy, label %.preheader158, label %.thread._crit_edge

.preheader158:                                    ; preds = %bb.ag
  %i.dz = sdiv i32 %.0115170, 2                   ; 4 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.0115170, i32 %i.dz)
  %i.eb = add i32 %smin, -1                       ; 3 uses
  %.not132.not254 = icmp sgt i32 %.0115170, 0
  br i1 %.not132.not254, label %.lr.ph256, label %.split.loop.exit237

bb.ah:                                            ; preds = %.lr.ph256
  %.not132.not = icmp sgt i64 %indvars.iv.next, %i.ea
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !329

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %.pre, %.preheader158 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !29
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.eh = and i8 %i.eg, 1
  %.not133 = icmp eq i8 %i.eh, 0
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !329

.split.loop.exit:                                 ; preds = %.lr.ph256
  %i.ei = trunc nsw i64 %indvars.iv255 to i32
  %i.ej = trunc nsw i64 %indvars.iv.next to i32
  %i.ek = icmp sge i32 %i.dz, %i.ei
  br label %.split.loop.exit237

.split.loop.exit237:                              ; preds = %bb.ah, %.preheader158, %.split.loop.exit
  %.0112.in.lcssa = phi i1 [ %i.ek, %.split.loop.exit ], [ true, %.preheader158 ], [ true, %bb.ah ]
  %.0112.lcssa = phi i32 [ %i.ej, %.split.loop.exit ], [ %i.eb, %.preheader158 ], [ %i.eb, %bb.ah ]
  %i.el = icmp sgt i32 %.0115170, 1
  %or.cond = and i1 %i.el, %.0112.in.lcssa
  br i1 %or.cond, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.split.loop.exit237, %bb.ai
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.ai ], [ %.pre, %.split.loop.exit237 ] ; 4 uses
  %i.em = getelementptr i8, ptr %0, i64 %indvars.iv211 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !29
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !29
  %i.es = and i8 %i.er, 6
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !29  ; 2 uses
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !29
  %i.ey = and i8 %i.ex, 6
  %i.ez = icmp eq i8 %i.ey, 0
  %.not136 = xor i1 %i.et, %i.ez
  %.not137 = icmp slt i8 %i.eu, -64
  %or.cond139 = or i1 %.not137, %.not136
  br i1 %or.cond139, label %bb.ai, label %.loopexit.loopexit.split.loop.exit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.ea
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !330

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph196
  %i.fa = trunc nsw i64 %indvars.iv211 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.loopexit.loopexit.split.loop.exit, %.split.loop.exit237
  %.2114 = phi i32 [ %.0112.lcssa, %.split.loop.exit237 ], [ %i.fa, %.loopexit.loopexit.split.loop.exit ], [ %i.eb, %bb.ai ] ; 3 uses
  %.not138 = icmp slt i32 %.2114, %i.dz
  br i1 %.not138, label %.thread._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fb = sext i32 %.2114 to i64                  ; 2 uses
  %i.fc = tail call fastcc i32 @qrfDisplayWidth(ptr noundef nonnull %0, i64 noundef %i.fb, ptr noundef null)
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %.loopexit, %bb.aj, %bb.ag, %bb.af, %bb.ae
  %.pre-phi = phi i64 [ %.pre, %bb.ae ], [ %.pre, %.loopexit ], [ %i.fb, %bb.aj ], [ %.pre, %bb.ag ], [ %.pre, %bb.af ], [ %.pre, %.thread ]
  %.4119 = phi i32 [ %.0115170, %bb.ae ], [ %.0115170, %.loopexit ], [ %.2114, %bb.aj ], [ %.0115170, %bb.ag ], [ %.0115170, %bb.af ], [ %.0115170, %.thread ]
  %.5 = phi i32 [ %.0110167, %bb.ae ], [ %.0110167, %.loopexit ], [ %i.fc, %bb.aj ], [ %.0110167, %bb.ag ], [ %.0110167, %bb.af ], [ %.0110167, %.thread ]
  store i32 %.4119, ptr %3, align 4, !tbaa !30
  store i32 %.5, ptr %4, align 4, !tbaa !30
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !29
  switch i8 %i.fe, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !331

bb.al:                                            ; preds = %bb.ak
  %i.ff = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.ff, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRTrim(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #20 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #20
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = zext nneg i32 %.07 to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = icmp eq i8 %i.g, 32
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.07, -1
  %i.j = icmp sgt i32 %.07, 1
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
  tail call void @sqlite3_str_truncate(ptr noundef %0, i32 noundef %.0.lcssa) #20
  ret void
}

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare ptr @sqlite3_str_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @sqlite3_errstr(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_dup(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_value_free(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_str_truncate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_open(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_close(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_reset(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_mprintf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfAppendWithTabs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.073 = phi i32 [ %2, %.lr.ph ], [ %.2, %bb.ab ] ; 3 uses
  %.05072 = phi ptr [ %1, %.lr.ph ], [ %.252, %bb.ab ] ; 4 uses
  %.05371 = phi i32 [ 0, %.lr.ph ], [ %.255, %bb.ab ] ; 6 uses
  %.05670 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.ab ] ; 5 uses
  %i.e = sext i32 %.05670 to i64
  %i.f = getelementptr inbounds i8, ptr %.05072, i64 %i.e ; 15 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 6 uses
  %i.h = icmp ult i8 %i.g, 32
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.05072, i32 noundef %.05670) #20
  %i.i = sub nsw i32 %.073, %.05670               ; 4 uses
  switch i8 %i.g, label %bb.g [
    i8 27, label %bb.d
    i8 9, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.k, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = and i8 %i.m, -16
  %or.cond.i = icmp eq i8 %i.n, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv25.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = and i8 %i.p, -16
  %or.cond22.i = icmp eq i8 %i.q, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.r = add i8 %i.p, -64
  %or.cond23.i = icmp ult i8 %i.r, 63
  br i1 %or.cond23.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge2.i
  %i.s = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.t = add nuw nsw i32 %i.s, 1                  ; 3 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.t) #20
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.w = sub nsw i32 %i.i, %i.t
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %.05371, 7
  %i.y = sub nuw nsw i32 8, %i.x                  ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.y, i8 noundef signext 32) #20
  %i.z = add i32 %i.y, %.05371
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ab = add nsw i32 %i.i, -1
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %i.g, 13
  %i.ad = icmp eq i32 %i.i, 1
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %.thread79, label %.thread

.thread79:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %._crit_edge

.thread:                                          ; preds = %.critedge2.i, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.af = add i32 %.05371, 1
  store i8 -30, ptr %i.a, align 1, !tbaa !29
  store i8 -112, ptr %i.c, align 1, !tbaa !29
  %i.ag = or disjoint i8 %i.g, -128
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !29
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3) #20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = add nsw i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
end_hunk_1
begin_hunk_2_@qrfAppendWithTabs:bb.a
  %i.aj = icmp sgt i8 %i.g, -1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %.05670, 1
  %i.al = add i32 %.05371, 1
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.am = zext i8 %i.g to i32                     ; 6 uses
  %i.an = and i32 %i.am, 224
  %i.ao = icmp eq i32 %i.an, 192
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %i.at = icmp eq i32 %i.as, 128
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = shl nuw nsw i32 %i.am, 6
  %i.av = and i32 %i.au, 1984
  %i.aw = and i32 %i.ar, 63
  %i.ax = or disjoint i32 %i.aw, %i.av
  br label %sqlite3_qrf_decode_utf8.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ay = and i32 %i.am, 240
  %i.az = icmp eq i32 %i.ay, 224
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = shl nuw nsw i32 %i.am, 12
  %i.bl = and i32 %i.bk, 61440
  %i.bm = shl nuw nsw i32 %i.bc, 6
  %i.bn = and i32 %i.bm, 4032
  %i.bo = or disjoint i32 %i.bn, %i.bl
  %i.bp = and i32 %i.bh, 63
  %i.bq = or disjoint i32 %i.bo, %i.bp
  br label %sqlite3_qrf_decode_utf8.exit

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.br = and i32 %i.am, 248
  %i.bs = icmp eq i32 %i.br, 240
  br i1 %i.bs, label %bb.r, label %sqlite3_qrf_wcwidth.exit

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = and i32 %i.bv, 192
  %i.bx = icmp eq i32 %i.bw, 128
  br i1 %i.bx, label %bb.s, label %sqlite3_qrf_wcwidth.exit

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !29
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = and i32 %i.ca, 192
  %i.cc = icmp eq i32 %i.cb, 128
  br i1 %i.cc, label %bb.t, label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = and i32 %i.cf, 192
  %i.ch = icmp eq i32 %i.cg, 128
  br i1 %i.ch, label %bb.u, label %sqlite3_qrf_wcwidth.exit

bb.u:                                             ; preds = %bb.t
  %i.ci = shl nuw nsw i32 %i.am, 18
  %i.cj = and i32 %i.ci, 1835008
  %i.ck = shl nuw nsw i32 %i.bv, 12
  %i.cl = and i32 %i.ck, 258048
  %i.cm = or disjoint i32 %i.cl, %i.cj
  %i.cn = shl nuw nsw i32 %i.ca, 6
  %i.co = and i32 %i.cn, 4032
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = and i32 %i.cf, 63
  %i.cr = or disjoint i32 %i.cp, %i.cq
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.l, %bb.p, %bb.u
  %.sink.i = phi i32 [ %i.ax, %bb.l ], [ %i.cr, %bb.u ], [ %i.bq, %bb.p ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.l ], [ 4, %bb.u ], [ 3, %bb.p ] ; 4 uses
  %i.cs = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.cs, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i62

.preheader.i62:                                   ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.x
  %.01935.i = phi i32 [ %.2.i, %bb.x ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.x ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.ct = add nsw i32 %.02034.i, %.01935.i
  %i.cu = sdiv i32 %i.ct, 2                       ; 3 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !26 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %.sink.i
  br i1 %i.cz, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.preheader.i62
  %i.da = icmp sgt i32 %i.cy, %.sink.i
  br i1 %i.da, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.db = add nsw i32 %i.cu, -1
  br label %bb.x

.thread.i:                                        ; preds = %bb.v
  %i.dc = load i8, ptr %i.cw, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.x:                                             ; preds = %bb.w, %.preheader.i62
  %.222.i = phi i32 [ %i.cu, %.preheader.i62 ], [ %.02034.i, %bb.w ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i62 ], [ %i.db, %bb.w ] ; 3 uses
  %i.dd = add nsw i32 %.2.i, -1
  %i.de = icmp slt i32 %.222.i, %i.dd
  br i1 %i.de, label %.preheader.i62, label %bb.y, !llvm.loop !0

bb.y:                                             ; preds = %bb.x
  %i.df = sext i32 %.2.i to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !26
  %i.dj = icmp sgt i32 %i.di, %.sink.i
  br i1 %i.dj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = sext i32 %.222.i to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i8, ptr %i.dg, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.z, %bb.aa
  %.0.i.pn = phi i32 [ %.0.i, %bb.aa ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.z ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.q ]
  %.225.shrunk.i = phi i8 [ %i.dn, %bb.aa ], [ %i.dc, %.thread.i ], [ %i.dm, %bb.z ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.r ], [ 1, %bb.q ]
  %i.do = add nsw i32 %.0.i.pn, %.05670
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.dp = add i32 %.05371, %.225.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %.thread, %bb.f, %bb.i, %sqlite3_qrf_wcwidth.exit
  %.157 = phi i32 [ %i.do, %sqlite3_qrf_wcwidth.exit ], [ %i.ak, %bb.i ], [ 0, %bb.f ], [ 0, %.thread ], [ 0, %bb.e ] ; 3 uses
  %.255 = phi i32 [ %i.dp, %sqlite3_qrf_wcwidth.exit ], [ %i.al, %bb.i ], [ %i.z, %bb.f ], [ %i.af, %.thread ], [ %.05371, %bb.e ]
  %.252 = phi ptr [ %.05072, %sqlite3_qrf_wcwidth.exit ], [ %.05072, %bb.i ], [ %i.aa, %bb.f ], [ %i.ah, %.thread ], [ %i.v, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.073, %sqlite3_qrf_wcwidth.exit ], [ %.073, %bb.i ], [ %i.ab, %bb.f ], [ %i.ai, %.thread ], [ %i.w, %bb.e ] ; 2 uses
  %i.dq = icmp slt i32 %.157, %.2
  br i1 %i.dq, label %bb.b, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.ab, %.thread79, %bb.a
  %.056.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.thread79 ], [ %.157, %bb.ab ]
  %.050.lcssa = phi ptr [ %1, %bb.a ], [ %i.ae, %.thread79 ], [ %.252, %bb.ab ]
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef %.050.lcssa, i32 noundef %.056.lcssa) #20
  ret void
}

declare void @sqlite3_str_reset(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfWidthPrint(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %1, i32 -10000000)
  %.056 = tail call i32 @llvm.smin.i32(i32 %i.a, i32 10000000)
  %i.b = icmp slt i32 %1, 0
  %i.c = tail call i32 @llvm.abs.i32(i32 %.056, i1 true) ; 5 uses
  %i.d = icmp eq ptr %2, null
  %spec.store.select1 = select i1 %i.d, ptr @.str.6, ptr %2 ; 3 uses
  %i.e = load i8, ptr %spec.store.select1, align 1, !tbaa !29 ; 2 uses
  %.not7 = icmp eq i8 %i.e, 0
  br i1 %.not7, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.x
  %i.f = phi i8 [ %i.db, %bb.x ], [ %i.e, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.da, %bb.x ], [ %spec.store.select1, %bb.a ] ; 9 uses
  %.0519 = phi i32 [ %.2, %bb.x ], [ 0, %bb.a ]   ; 6 uses
  %.0528 = phi i32 [ %.254, %bb.x ], [ 0, %bb.a ] ; 3 uses
  %i.h = icmp ugt i8 %i.f, -65
  br i1 %i.h, label %bb.b, label %bb.t

bb.b:                                             ; preds = %.lr.ph
  %i.i = zext i8 %i.f to i32                      ; 6 uses
  %i.j = and i32 %i.i, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 192
  %i.p = icmp eq i32 %i.o, 128
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = shl nuw nsw i32 %i.i, 6
  %i.r = and i32 %i.q, 1984
  %i.s = and i32 %i.n, 63
  %i.t = or disjoint i32 %i.s, %i.r
  br label %sqlite3_qrf_decode_utf8.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.u = and i32 %i.i, 240
  %i.v = icmp eq i32 %i.u, 224
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.y, 192
  %i.aa = icmp eq i32 %i.z, 128
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 192
  %i.af = icmp eq i32 %i.ae, 128
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nuw nsw i32 %i.i, 12
  %i.ah = and i32 %i.ag, 61440
  %i.ai = shl nuw nsw i32 %i.y, 6
  %i.aj = and i32 %i.ai, 4032
  %i.ak = or disjoint i32 %i.aj, %i.ah
  %i.al = and i32 %i.ad, 63
  %i.am = or disjoint i32 %i.ak, %i.al
  br label %sqlite3_qrf_decode_utf8.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.an = and i32 %i.i, 248
  %i.ao = icmp eq i32 %i.an, 240
  br i1 %i.ao, label %bb.j, label %sqlite3_qrf_wcwidth.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %i.at = icmp eq i32 %i.as, 128
  br i1 %i.at, label %bb.k, label %sqlite3_qrf_wcwidth.exit

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = and i32 %i.aw, 192
  %i.ay = icmp eq i32 %i.ax, 128
  br i1 %i.ay, label %bb.l, label %sqlite3_qrf_wcwidth.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = and i32 %i.bb, 192
  %i.bd = icmp eq i32 %i.bc, 128
  br i1 %i.bd, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.be = shl nuw nsw i32 %i.i, 18
  %i.bf = and i32 %i.be, 1835008
  %i.bg = shl nuw nsw i32 %i.ar, 12
  %i.bh = and i32 %i.bg, 258048
  %i.bi = or disjoint i32 %i.bh, %i.bf
  %i.bj = shl nuw nsw i32 %i.aw, 6
  %i.bk = and i32 %i.bj, 4032
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = and i32 %i.bb, 63
  %i.bn = or disjoint i32 %i.bl, %i.bm
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.d, %bb.h, %bb.m
  %.sink.i = phi i32 [ %i.t, %bb.d ], [ %i.bn, %bb.m ], [ %i.am, %bb.h ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.d ], [ 4, %bb.m ], [ 3, %bb.h ] ; 4 uses
  %i.bo = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bo, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.p
  %.01935.i = phi i32 [ %.2.i, %bb.p ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.p ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bp = add nsw i32 %.02034.i, %.01935.i
  %i.bq = sdiv i32 %i.bp, 2                       ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !26 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %.sink.i
  br i1 %i.bv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.preheader.i
  %i.bw = icmp sgt i32 %i.bu, %.sink.i
  br i1 %i.bw, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bx = add nsw i32 %i.bq, -1
  br label %bb.p

.thread.i:                                        ; preds = %bb.n
  %i.by = load i8, ptr %i.bs, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.p:                                             ; preds = %bb.o, %.preheader.i
  %.222.i = phi i32 [ %i.bq, %.preheader.i ], [ %.02034.i, %bb.o ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bx, %bb.o ] ; 3 uses
  %i.bz = add nsw i32 %.2.i, -1
  %i.ca = icmp slt i32 %.222.i, %i.bz
  br i1 %i.ca, label %.preheader.i, label %bb.q, !llvm.loop !0

bb.q:                                             ; preds = %bb.p
  %i.cb = sext i32 %.2.i to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.cf = icmp sgt i32 %i.ce, %.sink.i
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = sext i32 %.222.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

bb.s:                                             ; preds = %bb.q
  %i.cj = load i8, ptr %i.cc, align 8, !tbaa !27
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.r, %bb.s
  %.0.i3 = phi i32 [ %.0.i, %bb.s ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.r ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %.225.shrunk.i = phi i8 [ %i.cj, %bb.s ], [ %i.by, %.thread.i ], [ %i.ci, %bb.r ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ck = add nsw i32 %.0519, %.225.i             ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, %i.c
  br i1 %i.cl, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.x

bb.t:                                             ; preds = %.lr.ph
  %i.cm = icmp eq i8 %i.f, 27
  br i1 %i.cm, label %bb.u, label %qrfIsVt100.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.co, 91
  br i1 %.not.i, label %.preheader.i64, label %qrfIsVt100.exit.thread

.preheader.i64:                                   ; preds = %bb.u, %.preheader.i64
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i64 ], [ 2, %bb.u ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  %i.cr = and i8 %i.cq, -16
  %or.cond.i = icmp eq i8 %i.cr, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i64, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i64, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i64 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv25.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !29  ; 2 uses
  %i.cu = and i8 %i.ct, -16
  %or.cond22.i = icmp eq i8 %i.cu, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.cv = add i8 %i.ct, -64
  %or.cond23.i = icmp ult i8 %i.cv, 63
  br i1 %or.cond23.i, label %bb.v, label %qrfIsVt100.exit.thread

bb.v:                                             ; preds = %.critedge2.i
  %i.cw = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.cx = add nuw nsw i32 %i.cw, 1
  br label %bb.x

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.u, %bb.t
  %.not62 = icmp slt i32 %.0519, %i.c
  br i1 %.not62, label %bb.w, label %sqlite3_qrf_wcwidth.exit._crit_edge

bb.w:                                             ; preds = %qrfIsVt100.exit.thread
  %i.cy = add nsw i32 %.0519, 1
  br label %bb.x

bb.x:                                             ; preds = %sqlite3_qrf_wcwidth.exit, %bb.v, %bb.w
  %.0.i3.pn = phi i32 [ %.0.i3, %sqlite3_qrf_wcwidth.exit ], [ %i.cx, %bb.v ], [ 1, %bb.w ]
  %.2 = phi i32 [ %i.ck, %sqlite3_qrf_wcwidth.exit ], [ %.0519, %bb.v ], [ %i.cy, %bb.w ] ; 2 uses
  %.254 = add nsw i32 %.0.i3.pn, %.0528           ; 3 uses
  %i.cz = sext i32 %.254 to i64
  %i.da = getelementptr inbounds i8, ptr %spec.store.select1, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !29  ; 2 uses
  %.not = icmp eq i8 %i.db, 0
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !333

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.x, %qrfIsVt100.exit.thread, %sqlite3_qrf_wcwidth.exit, %bb.a
  %.052.lcssa = phi i32 [ 0, %bb.a ], [ %.0528, %sqlite3_qrf_wcwidth.exit ], [ %.0528, %qrfIsVt100.exit.thread ], [ %.254, %bb.x ] ; 3 uses
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %.0519, %sqlite3_qrf_wcwidth.exit ], [ %.0519, %qrfIsVt100.exit.thread ], [ %.2, %bb.x ] ; 3 uses
  %.not63 = icmp slt i32 %.051.lcssa, %i.c
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3_qrf_wcwidth.exit._crit_edge
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %2, i32 noundef %.052.lcssa) #20
  br label %bb.ac

bb.z:                                             ; preds = %sqlite3_qrf_wcwidth.exit._crit_edge
  br i1 %i.b, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = sub nsw i32 %i.c, %.051.lcssa
  tail call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.dc, i8 noundef signext 32) #20
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %2, i32 noundef %.052.lcssa) #20
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %2, i32 noundef %.052.lcssa) #20
  %i.dd = sub nsw i32 %i.c, %.051.lcssa
  tail call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.dd, i8 noundef signext 32) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  ret void
}

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_pointer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfOneJsonRow(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !46
  %i.f = tail call ptr @sqlite3_column_name(ptr noundef %i.e, i32 noundef 0) #20
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %.pre, ptr noundef %i.f)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call void @sqlite3_str_append(ptr noundef %i.g, ptr noundef nonnull @.str.105, i32 noundef 1) #20
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call fastcc void @qrfRenderValue(ptr noundef %0, ptr noundef %i.h, i32 noundef 0)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !49
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %.017 = phi i32 [ %i.n, %.peel.next ], [ 1, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !46
  %i.l = tail call ptr @sqlite3_column_name(ptr noundef %i.k, i32 noundef %.017) #20
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call void @sqlite3_str_append(ptr noundef %i.m, ptr noundef nonnull @.str.13, i32 noundef 1) #20
  %i.n = add nuw nsw i32 %.017, 1                 ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %i.o, ptr noundef %i.l)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call void @sqlite3_str_append(ptr noundef %i.p, ptr noundef nonnull @.str.105, i32 noundef 1) #20
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !47
  tail call fastcc void @qrfRenderValue(ptr noundef %0, ptr noundef %i.q, i32 noundef %.017)
  %i.r = load i32, ptr %i.a, align 4, !tbaa !49
  %i.s = icmp slt i32 %i.n, %i.r
  br i1 %i.s, label %.peel.next, label %._crit_edge, !llvm.loop !334

._crit_edge:                                      ; preds = %.peel.next, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %qrfWrite.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = tail call i32 @sqlite3_str_length(ptr noundef %i.w) #20 ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %qrfWrite.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.ad = tail call ptr @sqlite3_str_value(ptr noundef %i.ac) #20
  %i.ae = zext nneg i32 %i.x to i64
  %i.af = tail call i32 %i.z(ptr noundef %i.ab, ptr noundef %i.ad, i64 noundef %i.ae) #20, !inline_history !7 ; 2 uses
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !47
  tail call void @sqlite3_str_reset(ptr noundef %i.ag) #20
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %qrfWrite.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef %i.af, ptr noundef nonnull @.str.69, i32 noundef %i.x)
  br label %qrfWrite.exit

qrfWrite.exit:                                    ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfEqpRender(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %qrfEqpReset.exit45, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 6 uses
  %.not36 = icmp eq ptr %i.c, null
  br i1 %.not36, label %qrfEqpReset.exit45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq i8 %i.e, 45
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.011.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  tail call void @sqlite3_free(ptr noundef nonnull %.011.i) #20
  %.not9.i = icmp eq ptr %i.k, null
  br i1 %.not9.i, label %qrfEqpReset.exit45.sink.split.sink.split, label %.lr.ph.i, !llvm.loop !335

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.m, ptr noundef nonnull @.str.106, ptr noundef nonnull %i.n) #20
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !29
  store ptr %i.o, ptr %i.p, align 8, !tbaa !95
  tail call void @sqlite3_free(ptr noundef nonnull %i.c) #20
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  tail call void @sqlite3_str_appendall(ptr noundef %i.r, ptr noundef nonnull @.str.113) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 0, ptr %i.t, align 4, !tbaa !29
  tail call fastcc void @qrfEqpRenderLevel(ptr noundef %0, i32 noundef 0)
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not.i37 = icmp eq ptr %i.u, null
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
end_hunk_2
