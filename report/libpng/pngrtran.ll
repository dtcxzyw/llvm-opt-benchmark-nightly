Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngrtran?download=true
inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 51
begin_hunk_0_@png_read_transform_info:bb.a
.thread131:                                       ; preds = %.thread123, %bb.w, %bb.v, %bb.u
  %.pr127 = phi i8 [ %i.aw, %bb.w ], [ 3, %bb.v ], [ 3, %.thread123 ], [ %i.aw, %bb.u ] ; 4 uses
  %i.be = phi i8 [ 16, %bb.w ], [ 8, %bb.v ], [ 8, %.thread123 ], [ %i.ap, %bb.u ] ; 2 uses
  %i.bf = and i32 %i.ae, 4
  %.not103 = icmp ne i32 %i.bf, 0
  %i.bg = icmp ult i8 %i.be, 8
  %or.cond136 = and i1 %.not103, %i.bg
  br i1 %or.cond136, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread131
  store i8 8, ptr %i.al, align 4, !tbaa !206
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread131
  %i.bh = phi i8 [ 8, %bb.x ], [ %i.be, %.thread131 ] ; 2 uses
  %i.bi = icmp eq i8 %.pr127, 3
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 1, ptr %i.bj, align 1, !tbaa !209
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bk = and i8 %.pr127, 2
  %.not104 = icmp eq i8 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 41 ; 2 uses
  br i1 %.not104, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 3, ptr %i.bl, align 1, !tbaa !209
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %i.bl, align 1, !tbaa !209
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  %i.bm = phi i8 [ 3, %bb.ab ], [ 1, %bb.ac ], [ 1, %bb.z ] ; 2 uses
  %i.bn = and i32 %i.ae, 262144
  %.not105 = icmp eq i32 %i.bn, 0
  br i1 %.not105, label %thread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = and i8 %.pr127, -5                      ; 2 uses
  store i8 %i.bo, ptr %i.a, align 1, !tbaa !204
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 0, ptr %i.bp, align 2, !tbaa !207
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ad, %bb.ae
  %i.bq = phi i8 [ %i.bo, %bb.ae ], [ %.pr127, %bb.ad ] ; 3 uses
  %i.br = and i8 %i.bq, 4
  %.not106 = icmp eq i8 %i.br, 0
  br i1 %.not106, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %thread-pre-split
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.bt = add nuw nsw i8 %i.bm, 1                 ; 2 uses
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !209
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %thread-pre-split
  %i.bu = phi i8 [ %i.bt, %bb.af ], [ %i.bm, %thread-pre-split ] ; 3 uses
  %i.bv = and i32 %i.ae, 32768
  %.not107 = icmp eq i32 %i.bv, 0
  br i1 %.not107, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i8 %i.bq, label %bb.ak [
    i8 2, label %bb.ai
    i8 0, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.bx = add nuw nsw i8 %i.bu, 1                 ; 3 uses
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !209
  %i.by = and i32 %i.ae, 16777216
  %.not108 = icmp eq i32 %i.by, 0
  br i1 %.not108, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = or i8 %i.bq, 4
  store i8 %i.bz, ptr %i.a, align 1, !tbaa !204
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ag
  %i.ca = phi i8 [ %i.bu, %bb.ah ], [ %i.bx, %bb.ai ], [ %i.bx, %bb.aj ], [ %i.bu, %bb.ag ] ; 2 uses
  %i.cb = and i32 %i.ae, 1048576
  %.not109 = icmp eq i32 %i.cb, 0
  br i1 %.not109, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !70  ; 3 uses
  %.not110 = icmp eq i8 %i.cd, 0
  br i1 %.not110, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 %i.cd, ptr %i.al, align 4, !tbaa !206
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ce = phi i8 [ %i.cd, %bb.am ], [ %i.bh, %bb.al ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !71  ; 3 uses
  %.not111 = icmp eq i8 %i.cg, 0
  br i1 %.not111, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !209
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ak
  %i.ci = phi i8 [ %i.ce, %bb.an ], [ %i.ce, %bb.ao ], [ %i.bh, %bb.ak ]
  %i.cj = phi i8 [ %i.ca, %bb.an ], [ %i.cg, %bb.ao ], [ %i.ca, %bb.ak ]
  %i.ck = mul i8 %i.ci, %i.cj                     ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 %i.ck, ptr %i.cl, align 2, !tbaa !210
  %i.cm = icmp ugt i8 %i.ck, 7
  %i.cn = load i32, ptr %1, align 8, !tbaa !211
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  br i1 %i.cm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cp = lshr i8 %i.ck, 3
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = mul nuw nsw i64 %i.co, %i.cq
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cs = zext nneg i8 %i.ck to i64
  %i.ct = mul nuw nsw i64 %i.co, %i.cs
  %i.cu = add nuw nsw i64 %i.ct, 7
  %i.cv = lshr i64 %i.cu, 3
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cw = phi i64 [ %i.cr, %bb.aq ], [ %i.cv, %bb.ar ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !212
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !213
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_do_read_transformations(ptr noalias noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 23 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = and i32 %i.f, 16448
  %or.cond = icmp eq i32 %i.g, 16384
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 24 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25   ; 2 uses
  %i.j = and i32 %i.i, 4096
  %.not138 = icmp eq i32 %i.j, 0
  br i1 %.not138, label %png_do_expand_palette.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !73
  %i.m = icmp eq i8 %i.l, 3
  br i1 %i.m, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.t = load i16, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = load i32, ptr %1, align 8, !tbaa !74     ; 26 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !75    ; 3 uses
  %i.x = icmp ult i8 %i.w, 8
  br i1 %i.x, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.pre.i = zext i32 %i.u to i64                  ; 5 uses
  switch i8 %i.w, label %.thread.i [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 4, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %.not29.i = icmp eq i32 %i.u, 0
  br i1 %.not29.i, label %.thread.i, label %.lr.ph16.preheader.i

.lr.ph16.preheader.i:                             ; preds = %bb.i
  %i.y = sub i32 0, %i.u
  %i.z = and i32 %i.y, 7                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pre.i ; 2 uses
  %i.ab = add i32 %i.u, -1                        ; 2 uses
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad ; 2 uses
  %xtraiter721 = and i32 %i.u, 1
  %i.af = icmp eq i32 %i.ab, 0
  br i1 %i.af, label %.lr.ph16.i.epil.preheader, label %.lr.ph16.preheader.i.new

.lr.ph16.preheader.i.new:                         ; preds = %.lr.ph16.preheader.i
  %unroll_iter724 = and i32 %i.u, -2
  br label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %.lr.ph16.i, %.lr.ph16.preheader.i.new
  %.pn12914.i = phi ptr [ %i.aa, %.lr.ph16.preheader.i.new ], [ %.0109.i.1, %.lr.ph16.i ] ; 2 uses
  %.011413.i = phi ptr [ %i.ae, %.lr.ph16.preheader.i.new ], [ %.1115.i.1, %.lr.ph16.i ] ; 2 uses
  %.012012.i = phi i32 [ %i.z, %.lr.ph16.preheader.i.new ], [ %.1121.i.1, %.lr.ph16.i ] ; 3 uses
  %niter725 = phi i32 [ 0, %.lr.ph16.preheader.i.new ], [ %niter725.next.1, %.lr.ph16.i ]
  %.0109.i = getelementptr inbounds i8, ptr %.pn12914.i, i64 -1
  %i.ag = load i8, ptr %.011413.i, align 1, !tbaa !26
  %i.ah = zext i8 %i.ag to i32
  %i.ai = lshr i32 %i.ah, %.012012.i
  %i.aj = trunc nuw i32 %i.ai to i8
  %..i = and i8 %i.aj, 1
  store i8 %..i, ptr %.0109.i, align 1, !tbaa !26
  %i.ak = icmp eq i32 %.012012.i, 7               ; 2 uses
  %i.al = add nuw nsw i32 %.012012.i, 1
  %.1121.i = select i1 %i.ak, i32 0, i32 %i.al    ; 3 uses
  %.1115.idx.i = sext i1 %i.ak to i64
  %.1115.i = getelementptr inbounds i8, ptr %.011413.i, i64 %.1115.idx.i ; 2 uses
  %.0109.i.1 = getelementptr inbounds i8, ptr %.pn12914.i, i64 -2 ; 3 uses
  %i.am = load i8, ptr %.1115.i, align 1, !tbaa !26
  %i.an = zext i8 %i.am to i32
  %i.ao = lshr i32 %i.an, %.1121.i
  %i.ap = trunc nuw i32 %i.ao to i8
  %..i.1 = and i8 %i.ap, 1
  store i8 %..i.1, ptr %.0109.i.1, align 1, !tbaa !26
  %i.aq = icmp eq i32 %.1121.i, 7                 ; 2 uses
  %i.ar = add nuw nsw i32 %.1121.i, 1
  %.1121.i.1 = select i1 %i.aq, i32 0, i32 %i.ar  ; 2 uses
  %.1115.idx.i.1 = sext i1 %i.aq to i64
  %.1115.i.1 = getelementptr inbounds i8, ptr %.1115.i, i64 %.1115.idx.i.1 ; 2 uses
  %niter725.next.1 = add nuw i32 %niter725, 2     ; 2 uses
  %niter725.ncmp.1 = icmp eq i32 %niter725.next.1, %unroll_iter724
  br i1 %niter725.ncmp.1, label %.thread.i.loopexit.unr-lcssa, label %.lr.ph16.i, !llvm.loop !214

bb.j:                                             ; preds = %bb.h
  %.not28.i = icmp eq i32 %i.u, 0
  br i1 %.not28.i, label %.thread.i, label %.lr.ph11.preheader.i

.lr.ph11.preheader.i:                             ; preds = %bb.j
  %.neg.i = mul i32 %i.u, 6
  %i.as = and i32 %.neg.i, 6                      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pre.i ; 2 uses
  %i.au = add i32 %i.u, -1                        ; 2 uses
  %i.av = lshr i32 %i.au, 2
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw ; 2 uses
  %xtraiter716 = and i32 %i.u, 1
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.preheader.i.new

.lr.ph11.preheader.i.new:                         ; preds = %.lr.ph11.preheader.i
  %unroll_iter719 = and i32 %i.u, -2
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i.new
  %.pn1289.i = phi ptr [ %i.at, %.lr.ph11.preheader.i.new ], [ %.1110.i.1, %.lr.ph11.i ] ; 2 uses
  %.21168.i = phi ptr [ %i.ax, %.lr.ph11.preheader.i.new ], [ %.3117.i.1, %.lr.ph11.i ] ; 2 uses
  %.21227.i = phi i32 [ %i.as, %.lr.ph11.preheader.i.new ], [ %.3123.i.1, %.lr.ph11.i ] ; 3 uses
  %niter720 = phi i32 [ 0, %.lr.ph11.preheader.i.new ], [ %niter720.next.1, %.lr.ph11.i ]
  %.1110.i = getelementptr inbounds i8, ptr %.pn1289.i, i64 -1
  %i.az = load i8, ptr %.21168.i, align 1, !tbaa !26
  %i.ba = zext i8 %i.az to i32
  %i.bb = lshr i32 %i.ba, %.21227.i
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = and i8 %i.bc, 3
  store i8 %i.bd, ptr %.1110.i, align 1, !tbaa !26
  %i.be = icmp eq i32 %.21227.i, 6                ; 2 uses
  %i.bf = add nsw i32 %.21227.i, 2
  %.3123.i = select i1 %i.be, i32 0, i32 %i.bf    ; 3 uses
  %.3117.idx.i = sext i1 %i.be to i64
  %.3117.i = getelementptr inbounds i8, ptr %.21168.i, i64 %.3117.idx.i ; 2 uses
  %.1110.i.1 = getelementptr inbounds i8, ptr %.pn1289.i, i64 -2 ; 3 uses
  %i.bg = load i8, ptr %.3117.i, align 1, !tbaa !26
  %i.bh = zext i8 %i.bg to i32
  %i.bi = lshr i32 %i.bh, %.3123.i
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = and i8 %i.bj, 3
  store i8 %i.bk, ptr %.1110.i.1, align 1, !tbaa !26
  %i.bl = icmp eq i32 %.3123.i, 6                 ; 2 uses
  %i.bm = add nsw i32 %.3123.i, 2
  %.3123.i.1 = select i1 %i.bl, i32 0, i32 %i.bm  ; 2 uses
  %.3117.idx.i.1 = sext i1 %i.bl to i64
  %.3117.i.1 = getelementptr inbounds i8, ptr %.3117.i, i64 %.3117.idx.i.1 ; 2 uses
  %niter720.next.1 = add nuw i32 %niter720, 2     ; 2 uses
  %niter720.ncmp.1 = icmp eq i32 %niter720.next.1, %unroll_iter719
  br i1 %niter720.ncmp.1, label %.thread.i.loopexit713.unr-lcssa, label %.lr.ph11.i, !llvm.loop !215

bb.k:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.bn = shl i32 %i.u, 2
  %i.bo = and i32 %i.bn, 4                        ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pre.i ; 2 uses
  %i.bq = add i32 %i.u, -1                        ; 2 uses
  %i.br = lshr i32 %i.bq, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bs ; 2 uses
  %xtraiter = and i32 %i.u, 1
  %i.bu = icmp eq i32 %i.bq, 0
  br i1 %i.bu, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.u, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.pn5.i = phi ptr [ %i.bp, %.lr.ph.preheader.i.new ], [ %.2111.i.1, %.lr.ph.i ] ; 2 uses
  %.41184.i = phi ptr [ %i.bt, %.lr.ph.preheader.i.new ], [ %.5119.i.1, %.lr.ph.i ] ; 2 uses
  %.41243.i = phi i32 [ %i.bo, %.lr.ph.preheader.i.new ], [ %.5125.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %.2111.i = getelementptr inbounds i8, ptr %.pn5.i, i64 -1
  %i.bv = load i8, ptr %.41184.i, align 1, !tbaa !26
  %i.bw = zext i8 %i.bv to i32
  %i.bx = lshr i32 %i.bw, %.41243.i
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = and i8 %i.by, 15
  store i8 %i.bz, ptr %.2111.i, align 1, !tbaa !26
  %i.ca = icmp eq i32 %.41243.i, 4                ; 2 uses
  %i.cb = add nsw i32 %.41243.i, 4
  %.5125.i = select i1 %i.ca, i32 0, i32 %i.cb    ; 3 uses
  %.5119.idx.i = sext i1 %i.ca to i64
  %.5119.i = getelementptr inbounds i8, ptr %.41184.i, i64 %.5119.idx.i ; 2 uses
  %.2111.i.1 = getelementptr inbounds i8, ptr %.pn5.i, i64 -2 ; 3 uses
  %i.cc = load i8, ptr %.5119.i, align 1, !tbaa !26
  %i.cd = zext i8 %i.cc to i32
  %i.ce = lshr i32 %i.cd, %.5125.i
  %i.cf = trunc nuw i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 15
  store i8 %i.cg, ptr %.2111.i.1, align 1, !tbaa !26
  %i.ch = icmp eq i32 %.5125.i, 4                 ; 2 uses
  %i.ci = add nsw i32 %.5125.i, 4
  %.5125.i.1 = select i1 %i.ch, i32 0, i32 %i.ci  ; 2 uses
  %.5119.idx.i.1 = sext i1 %i.ch to i64
  %.5119.i.1 = getelementptr inbounds i8, ptr %.5119.i, i64 %.5119.idx.i.1 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i.loopexit714.unr-lcssa, label %.lr.ph.i, !llvm.loop !216

.thread.i.loopexit.unr-lcssa:                     ; preds = %.lr.ph16.i
  %lcmp.mod722.not = icmp eq i32 %xtraiter721, 0
  br i1 %lcmp.mod722.not, label %.thread.i, label %.lr.ph16.i.epil.preheader

.lr.ph16.i.epil.preheader:                        ; preds = %.thread.i.loopexit.unr-lcssa, %.lr.ph16.preheader.i
  %.pn12914.i.epil.init = phi ptr [ %i.aa, %.lr.ph16.preheader.i ], [ %.0109.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.011413.i.epil.init = phi ptr [ %i.ae, %.lr.ph16.preheader.i ], [ %.1115.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.012012.i.epil.init = phi i32 [ %i.z, %.lr.ph16.preheader.i ], [ %.1121.i.1, %.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod723 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod723)
  %.0109.i.epil = getelementptr inbounds i8, ptr %.pn12914.i.epil.init, i64 -1
  %i.cj = load i8, ptr %.011413.i.epil.init, align 1, !tbaa !26
  %i.ck = zext i8 %i.cj to i32
  %i.cl = lshr i32 %i.ck, %.012012.i.epil.init
  %i.cm = trunc nuw i32 %i.cl to i8
  %..i.epil = and i8 %i.cm, 1
  store i8 %..i.epil, ptr %.0109.i.epil, align 1, !tbaa !26
  br label %.thread.i

.thread.i.loopexit713.unr-lcssa:                  ; preds = %.lr.ph11.i
  %lcmp.mod717.not = icmp eq i32 %xtraiter716, 0
  br i1 %lcmp.mod717.not, label %.thread.i, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %.thread.i.loopexit713.unr-lcssa, %.lr.ph11.preheader.i
  %.pn1289.i.epil.init = phi ptr [ %i.at, %.lr.ph11.preheader.i ], [ %.1110.i.1, %.thread.i.loopexit713.unr-lcssa ]
  %.21168.i.epil.init = phi ptr [ %i.ax, %.lr.ph11.preheader.i ], [ %.3117.i.1, %.thread.i.loopexit713.unr-lcssa ]
  %.21227.i.epil.init = phi i32 [ %i.as, %.lr.ph11.preheader.i ], [ %.3123.i.1, %.thread.i.loopexit713.unr-lcssa ]
  %lcmp.mod718 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod718)
  %.1110.i.epil = getelementptr inbounds i8, ptr %.pn1289.i.epil.init, i64 -1
  %i.cn = load i8, ptr %.21168.i.epil.init, align 1, !tbaa !26
  %i.co = zext i8 %i.cn to i32
  %i.cp = lshr i32 %i.co, %.21227.i.epil.init
  %i.cq = trunc nuw i32 %i.cp to i8
  %i.cr = and i8 %i.cq, 3
  store i8 %i.cr, ptr %.1110.i.epil, align 1, !tbaa !26
  br label %.thread.i

.thread.i.loopexit714.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread.i.loopexit714.unr-lcssa, %.lr.ph.preheader.i
  %.pn5.i.epil.init = phi ptr [ %i.bp, %.lr.ph.preheader.i ], [ %.2111.i.1, %.thread.i.loopexit714.unr-lcssa ]
  %.41184.i.epil.init = phi ptr [ %i.bt, %.lr.ph.preheader.i ], [ %.5119.i.1, %.thread.i.loopexit714.unr-lcssa ]
  %.41243.i.epil.init = phi i32 [ %i.bo, %.lr.ph.preheader.i ], [ %.5125.i.1, %.thread.i.loopexit714.unr-lcssa ]
  %lcmp.mod715 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod715)
  %.2111.i.epil = getelementptr inbounds i8, ptr %.pn5.i.epil.init, i64 -1
  %i.cs = load i8, ptr %.41184.i.epil.init, align 1, !tbaa !26
  %i.ct = zext i8 %i.cs to i32
  %i.cu = lshr i32 %i.ct, %.41243.i.epil.init
  %i.cv = trunc nuw i32 %i.cu to i8
  %i.cw = and i8 %i.cv, 15
  store i8 %i.cw, ptr %.2111.i.epil, align 1, !tbaa !26
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i.epil.preheader, %.thread.i.loopexit714.unr-lcssa, %.lr.ph11.i.epil.preheader, %.thread.i.loopexit713.unr-lcssa, %.lr.ph16.i.epil.preheader, %.thread.i.loopexit.unr-lcssa, %bb.k, %bb.j, %bb.i, %bb.h
  store i8 8, ptr %i.v, align 1, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 8, ptr %i.cx, align 1, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.pre.i, ptr %i.cy, align 8, !tbaa !77
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.cz = icmp eq i8 %i.w, 8
  br i1 %i.cz, label %._crit_edge402, label %png_do_expand_palette.exit

._crit_edge402:                                   ; preds = %bb.l
  %.pre403 = zext i32 %i.u to i64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge402, %.thread.i
  %.pre-phi = phi i64 [ %.pre403, %._crit_edge402 ], [ %.pre.i, %.thread.i ] ; 4 uses
  %.not130.i = icmp eq i16 %i.t, 0
  %.not31.i = icmp eq i32 %i.u, 0                 ; 2 uses
  br i1 %.not130.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = shl nuw nsw i64 %.pre-phi, 2            ; 3 uses
  br i1 %.not31.i, label %.sink.split.i, label %.lr.ph21.preheader.i

.lr.ph21.preheader.i:                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pre-phi
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.p, %.lr.ph21.preheader.i
  %.620.pn.i = phi ptr [ %.620.i, %bb.p ], [ %i.dd, %.lr.ph21.preheader.i ]
  %.319.i = phi i32 [ %i.ea, %bb.p ], [ 0, %.lr.ph21.preheader.i ]
  %.311218.i = phi ptr [ %i.dz, %bb.p ], [ %i.dc, %.lr.ph21.preheader.i ] ; 5 uses
  %.620.i = getelementptr inbounds i8, ptr %.620.pn.i, i64 -1 ; 5 uses
  %i.de = load i8, ptr %.620.i, align 1, !tbaa !26 ; 2 uses
  %i.df = zext i8 %i.de to i16
  %.not132.i = icmp ugt i16 %i.t, %i.df
  br i1 %.not132.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph21.i
  %i.dg = zext i8 %i.de to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph21.i
  %storemerge133.i = phi i8 [ %i.di, %bb.o ], [ -1, %.lr.ph21.i ]
  %.4113.i = getelementptr inbounds i8, ptr %.311218.i, i64 -1
  store i8 %storemerge133.i, ptr %.311218.i, align 1, !tbaa !26
  %i.dj = load i8, ptr %.620.i, align 1, !tbaa !26
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !42
  %i.do = getelementptr inbounds i8, ptr %.311218.i, i64 -2
  store i8 %i.dn, ptr %.4113.i, align 1, !tbaa !26
  %i.dp = load i8, ptr %.620.i, align 1, !tbaa !26
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !41
  %i.du = getelementptr inbounds i8, ptr %.311218.i, i64 -3
  store i8 %i.dt, ptr %i.do, align 1, !tbaa !26
  %i.dv = load i8, ptr %.620.i, align 1, !tbaa !26
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !40
  %i.dz = getelementptr inbounds i8, ptr %.311218.i, i64 -4
  store i8 %i.dy, ptr %i.du, align 1, !tbaa !26
  %i.ea = add nuw i32 %.319.i, 1                  ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.ea, %i.u
  br i1 %exitcond36.not.i, label %.sink.split.i, label %.lr.ph21.i, !llvm.loop !217

bb.q:                                             ; preds = %bb.m
  %i.eb = mul nuw nsw i64 %.pre-phi, 3            ; 4 uses
  br i1 %.not31.i, label %.sink.split.i, label %.lr.ph26.preheader.i

.lr.ph26.preheader.i:                             ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -1 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 %.pre-phi ; 2 uses
  %xtraiter726 = and i32 %i.u, 1
  %i.ef = icmp eq i32 %i.u, 1
  br i1 %i.ef, label %.lr.ph26.i.epil.preheader, label %.lr.ph26.preheader.i.new

.lr.ph26.preheader.i.new:                         ; preds = %.lr.ph26.preheader.i
  %unroll_iter729 = and i32 %i.u, -2
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i, %.lr.ph26.preheader.i.new
  %.523.i = phi ptr [ %i.ed, %.lr.ph26.preheader.i.new ], [ %i.fn, %.lr.ph26.i ] ; 7 uses
  %.pn13122.i = phi ptr [ %i.ee, %.lr.ph26.preheader.i.new ], [ %.7.i.1, %.lr.ph26.i ] ; 2 uses
  %niter730 = phi i32 [ 0, %.lr.ph26.preheader.i.new ], [ %niter730.next.1, %.lr.ph26.i ]
  %.7.i = getelementptr inbounds i8, ptr %.pn13122.i, i64 -1 ; 3 uses
  %i.eg = load i8, ptr %.7.i, align 1, !tbaa !26
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !42
  %i.el = getelementptr inbounds i8, ptr %.523.i, i64 -1
  store i8 %i.ek, ptr %.523.i, align 1, !tbaa !26
  %i.em = load i8, ptr %.7.i, align 1, !tbaa !26
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !41
  %i.er = getelementptr inbounds i8, ptr %.523.i, i64 -2
  store i8 %i.eq, ptr %i.el, align 1, !tbaa !26
  %i.es = load i8, ptr %.7.i, align 1, !tbaa !26
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !40
  %i.ew = getelementptr inbounds i8, ptr %.523.i, i64 -3
  store i8 %i.ev, ptr %i.er, align 1, !tbaa !26
  %.7.i.1 = getelementptr inbounds i8, ptr %.pn13122.i, i64 -2 ; 5 uses
  %i.ex = load i8, ptr %.7.i.1, align 1, !tbaa !26
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !42
  %i.fc = getelementptr inbounds i8, ptr %.523.i, i64 -4
  store i8 %i.fb, ptr %i.ew, align 1, !tbaa !26
  %i.fd = load i8, ptr %.7.i.1, align 1, !tbaa !26
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !41
  %i.fi = getelementptr inbounds i8, ptr %.523.i, i64 -5
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !26
  %i.fj = load i8, ptr %.7.i.1, align 1, !tbaa !26
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !40
  %i.fn = getelementptr inbounds i8, ptr %.523.i, i64 -6 ; 2 uses
  store i8 %i.fm, ptr %i.fi, align 1, !tbaa !26
  %niter730.next.1 = add nuw i32 %niter730, 2     ; 2 uses
  %niter730.ncmp.1 = icmp eq i32 %niter730.next.1, %unroll_iter729
  br i1 %niter730.ncmp.1, label %.sink.split.i.loopexit.unr-lcssa, label %.lr.ph26.i, !llvm.loop !218

.sink.split.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph26.i
  %lcmp.mod727.not = icmp eq i32 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %.sink.split.i, label %.lr.ph26.i.epil.preheader

.lr.ph26.i.epil.preheader:                        ; preds = %.sink.split.i.loopexit.unr-lcssa, %.lr.ph26.preheader.i
  %.523.i.epil.init = phi ptr [ %i.ed, %.lr.ph26.preheader.i ], [ %i.fn, %.sink.split.i.loopexit.unr-lcssa ] ; 3 uses
  %.pn13122.i.epil.init = phi ptr [ %i.ee, %.lr.ph26.preheader.i ], [ %.7.i.1, %.sink.split.i.loopexit.unr-lcssa ]
  %lcmp.mod728 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod728)
  %.7.i.epil = getelementptr inbounds i8, ptr %.pn13122.i.epil.init, i64 -1 ; 3 uses
  %i.fo = load i8, ptr %.7.i.epil, align 1, !tbaa !26
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !42
  %i.ft = getelementptr inbounds i8, ptr %.523.i.epil.init, i64 -1
  store i8 %i.fs, ptr %.523.i.epil.init, align 1, !tbaa !26
  %i.fu = load i8, ptr %.7.i.epil, align 1, !tbaa !26
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !41
  %i.fz = getelementptr inbounds i8, ptr %.523.i.epil.init, i64 -2
  store i8 %i.fy, ptr %i.ft, align 1, !tbaa !26
  %i.ga = load i8, ptr %.7.i.epil, align 1, !tbaa !26
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !40
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !26
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %.lr.ph26.i.epil.preheader, %.sink.split.i.loopexit.unr-lcssa, %bb.q, %bb.n
  %.sink48.i = phi i8 [ 32, %bb.n ], [ 24, %.lr.ph26.i.epil.preheader ], [ 24, %bb.q ], [ 24, %.sink.split.i.loopexit.unr-lcssa ], [ 32, %bb.p ]
  %.sink46.i = phi i64 [ %i.da, %bb.n ], [ %i.eb, %.lr.ph26.i.epil.preheader ], [ %i.eb, %bb.q ], [ %i.eb, %.sink.split.i.loopexit.unr-lcssa ], [ %i.da, %bb.p ]
  %.sink45.i = phi i8 [ 6, %bb.n ], [ 2, %.lr.ph26.i.epil.preheader ], [ 2, %bb.q ], [ 2, %.sink.split.i.loopexit.unr-lcssa ], [ 6, %bb.p ]
  %.sink.i = phi i8 [ 4, %bb.n ], [ 3, %.lr.ph26.i.epil.preheader ], [ 3, %bb.q ], [ 3, %.sink.split.i.loopexit.unr-lcssa ], [ 4, %bb.p ]
  store i8 8, ptr %i.v, align 1, !tbaa !75
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %.sink48.i, ptr %i.ge, align 1, !tbaa !76
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink46.i, ptr %i.gf, align 8, !tbaa !77
  store i8 %.sink45.i, ptr %i.k, align 8, !tbaa !73
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %.sink.i, ptr %i.gg, align 2, !tbaa !78
  br label %png_do_expand_palette.exit

bb.r:                                             ; preds = %bb.f
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !51
  %.not139 = icmp eq i16 %i.gi, 0
  %i.gj = and i32 %i.i, 33554432
  %.not140 = icmp eq i32 %i.gj, 0
  %or.cond175 = or i1 %.not140, %.not139
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %or.cond175, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 808
  tail call fastcc void @png_do_expand(ptr noundef nonnull %1, ptr noundef nonnull %i.gk, ptr noundef nonnull %i.gl)
  br label %png_do_expand_palette.exit

bb.t:                                             ; preds = %bb.r
  tail call fastcc void @png_do_expand(ptr noundef nonnull %1, ptr noundef nonnull %i.gk, ptr noundef null)
  br label %png_do_expand_palette.exit
end_hunk_0
begin_hunk_1_@png_do_read_transformations:bb.a
  store <8 x i8> %i.csk, ptr %next.gep659, align 1, !tbaa !26
  %index.next661 = add nuw i64 %index658, 8       ; 2 uses
  %i.csl = icmp eq i64 %index.next661, %n.vec656
  br i1 %i.csl, label %vec.epilog.middle.block662, label %vec.epilog.vector.body657, !llvm.loop !281

vec.epilog.middle.block662:                       ; preds = %vec.epilog.vector.body657
  %cmp.n663 = icmp eq i64 %i.crz, %n.vec656
  br i1 %cmp.n663, label %.sink.split.i251, label %.lr.ph112.i.preheader

.lr.ph112.i.preheader:                            ; preds = %iter.check651, %vec.epilog.iter.check653, %vec.epilog.middle.block662
  %.085111.i.ph = phi ptr [ %i.cqa, %iter.check651 ], [ %i.csb, %vec.epilog.iter.check653 ], [ %i.csi, %vec.epilog.middle.block662 ]
  br label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.lr.ph112.i.preheader, %.lr.ph112.i
  %.085111.i = phi ptr [ %i.csp, %.lr.ph112.i ], [ %.085111.i.ph, %.lr.ph112.i.preheader ] ; 3 uses
  %i.csm = load i8, ptr %.085111.i, align 1, !tbaa !26
  %i.csn = lshr i8 %i.csm, 1
  %i.cso = and i8 %i.csn, 85
  %i.csp = getelementptr inbounds nuw i8, ptr %.085111.i, i64 1 ; 2 uses
  store i8 %i.cso, ptr %.085111.i, align 1, !tbaa !26
  %i.csq = icmp ult ptr %i.csp, %i.cru
  br i1 %i.csq, label %.lr.ph112.i, label %.sink.split.i251, !llvm.loop !282

bb.in:                                            ; preds = %.split.i252
  %i.csr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.css = load i64, ptr %i.csr, align 8, !tbaa !77 ; 3 uses
  %i.cst = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.css
  %i.csu = load i32, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %i.csv = lshr i32 15, %i.csu
  %i.csw = mul nuw nsw i32 %i.csv, 17             ; 3 uses
  %.not115.i = icmp eq i64 %i.css, 0
  br i1 %.not115.i, label %.sink.split.i251, label %iter.check

iter.check:                                       ; preds = %bb.in
  %i.csx = add i64 %i.css, %i.cpz
  %i.csy = add i64 %i.csx, 1
  %i.csz = add i64 %i.cpz, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.csy, i64 %i.csz)
  %i.cta = xor i64 %i.cpz, -1
  %i.ctb = add i64 %umax, %i.cta                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ctb, 4
  br i1 %min.iters.check, label %.lr.ph110.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check622 = icmp ult i64 %i.ctb, 16
  br i1 %min.iters.check622, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ctc = and i64 %i.ctb, 12
  %n.vec = and i64 %i.ctb, -16                    ; 4 uses
  %i.ctd = getelementptr i8, ptr %i.cqa, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.csu, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert623 = insertelement <16 x i32> poison, i32 %i.csw, i64 0
  %broadcast.splat624 = shufflevector <16 x i32> %broadcast.splatinsert623, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cqa, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %i.cte = zext <16 x i8> %wide.load to <16 x i32>
  %i.ctf = lshr <16 x i32> %i.cte, %broadcast.splat
  %i.ctg = and <16 x i32> %i.ctf, %broadcast.splat624
  %i.cth = trunc nuw <16 x i32> %i.ctg to <16 x i8>
  store <16 x i8> %i.cth, ptr %next.gep, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cti = icmp eq i64 %index.next, %n.vec
  br i1 %i.cti, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ctb, %n.vec
  br i1 %cmp.n, label %.sink.split.i251, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ctc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph110.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec625 = and i64 %i.ctb, -4                  ; 3 uses
  %i.ctj = getelementptr i8, ptr %i.cqa, i64 %n.vec625
  %broadcast.splatinsert626.a = insertelement <4 x i32> poison, i32 %i.csu, i64 0
  %broadcast.splat627.a = shufflevector <4 x i32> %broadcast.splatinsert626.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert628 = insertelement <4 x i32> poison, i32 %i.csw, i64 0
  %broadcast.splat629 = shufflevector <4 x i32> %broadcast.splatinsert628, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index630 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next633, %vec.epilog.vector.body ] ; 2 uses
  %next.gep631 = getelementptr i8, ptr %i.cqa, i64 %index630 ; 2 uses
  %wide.load632 = load <4 x i8>, ptr %next.gep631, align 1, !tbaa !26
  %i.ctk = zext <4 x i8> %wide.load632 to <4 x i32>
  %i.ctl = lshr <4 x i32> %i.ctk, %broadcast.splat627.a
  %i.ctm = and <4 x i32> %i.ctl, %broadcast.splat629
  %i.ctn = trunc nuw <4 x i32> %i.ctm to <4 x i8>
  store <4 x i8> %i.ctn, ptr %next.gep631, align 1, !tbaa !26
  %index.next633 = add nuw i64 %index630, 4       ; 2 uses
  %i.cto = icmp eq i64 %index.next633, %n.vec625
  br i1 %i.cto, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n634 = icmp eq i64 %i.ctb, %n.vec625
  br i1 %cmp.n634, label %.sink.split.i251, label %.lr.ph110.i.preheader

.lr.ph110.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.083109.i.ph = phi ptr [ %i.cqa, %iter.check ], [ %i.ctd, %vec.epilog.iter.check ], [ %i.ctj, %vec.epilog.middle.block ]
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.preheader, %.lr.ph110.i
  %.083109.i = phi ptr [ %i.ctu, %.lr.ph110.i ], [ %.083109.i.ph, %.lr.ph110.i.preheader ] ; 3 uses
  %i.ctp = load i8, ptr %.083109.i, align 1, !tbaa !26
  %i.ctq = zext i8 %i.ctp to i32
  %i.ctr = lshr i32 %i.ctq, %i.csu
  %i.cts = and i32 %i.ctr, %i.csw
  %i.ctt = trunc nuw i32 %i.cts to i8
  %i.ctu = getelementptr inbounds nuw i8, ptr %.083109.i, i64 1 ; 2 uses
  store i8 %i.ctt, ptr %.083109.i, align 1, !tbaa !26
  %i.ctv = icmp ult ptr %i.ctu, %i.cst
  br i1 %i.ctv, label %.lr.ph110.i, label %.sink.split.i251, !llvm.loop !285

bb.io:                                            ; preds = %.split.i252
  %i.ctw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !77 ; 2 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.ctx
  %.not114.i = icmp eq i64 %i.ctx, 0
  br i1 %.not114.i, label %.sink.split.i251, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.io, %.lr.ph108.i
  %.081107.i = phi i32 [ %spec.store.select.i, %.lr.ph108.i ], [ 0, %bb.io ] ; 2 uses
  %.082106.i = phi ptr [ %i.cuh, %.lr.ph108.i ], [ %i.cqa, %bb.io ] ; 3 uses
  %i.ctz = load i8, ptr %.082106.i, align 1, !tbaa !26
  %i.cua = zext i8 %i.ctz to i32
  %i.cub = sext i32 %.081107.i to i64
  %i.cuc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cub
  %i.cud = load i32, ptr %i.cuc, align 4, !tbaa !32
  %i.cue = lshr i32 %i.cua, %i.cud
  %i.cuf = add nsw i32 %.081107.i, 1              ; 2 uses
  %.not96.i = icmp slt i32 %i.cuf, %.1.i248
  %spec.store.select.i = select i1 %.not96.i, i32 %i.cuf, i32 0
  %i.cug = trunc nuw i32 %i.cue to i8
  %i.cuh = getelementptr inbounds nuw i8, ptr %.082106.i, i64 1 ; 2 uses
  store i8 %i.cug, ptr %.082106.i, align 1, !tbaa !26
  %i.cui = icmp ult ptr %i.cuh, %i.cty
  br i1 %i.cui, label %.lr.ph108.i, label %.sink.split.i251, !llvm.loop !286

bb.ip:                                            ; preds = %.split.i252
  %i.cuj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !77 ; 2 uses
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cqa, i64 %i.cuk
  %.not113.i = icmp eq i64 %i.cuk, 0
  br i1 %.not113.i, label %.sink.split.i251, label %.lr.ph.i253

.lr.ph.i253:                                      ; preds = %bb.ip, %.lr.ph.i253
  %.0105.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i253 ], [ 0, %bb.ip ] ; 2 uses
  %.079104.i = phi ptr [ %i.cvb, %.lr.ph.i253 ], [ %i.cqa, %bb.ip ] ; 4 uses
  %i.cum = load i8, ptr %.079104.i, align 1, !tbaa !26
  %i.cun = zext i8 %i.cum to i32
  %i.cuo = shl nuw nsw i32 %i.cun, 8
  %i.cup = getelementptr inbounds nuw i8, ptr %.079104.i, i64 1 ; 2 uses
  %i.cuq = load i8, ptr %i.cup, align 1, !tbaa !26
  %i.cur = zext i8 %i.cuq to i32
  %i.cus = or disjoint i32 %i.cuo, %i.cur
  %i.cut = sext i32 %.0105.i to i64
  %i.cuu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cut
  %i.cuv = load i32, ptr %i.cuu, align 4, !tbaa !32
  %i.cuw = lshr i32 %i.cus, %i.cuv                ; 2 uses
  %i.cux = add nsw i32 %.0105.i, 1                ; 2 uses
  %.not95.i = icmp slt i32 %i.cux, %.1.i248
  %spec.store.select2.i = select i1 %.not95.i, i32 %i.cux, i32 0
  %i.cuy = lshr i32 %i.cuw, 8
  %i.cuz = trunc nuw i32 %i.cuy to i8
  store i8 %i.cuz, ptr %.079104.i, align 1, !tbaa !26
  %i.cva = trunc i32 %i.cuw to i8
  %i.cvb = getelementptr inbounds nuw i8, ptr %.079104.i, i64 2 ; 2 uses
  store i8 %i.cva, ptr %i.cup, align 1, !tbaa !26
  %i.cvc = icmp ult ptr %i.cvb, %i.cul
  br i1 %i.cvc, label %.lr.ph.i253, label %.sink.split.i251, !llvm.loop !287

.sink.split.i251:                                 ; preds = %.lr.ph.i253, %.lr.ph108.i, %.lr.ph110.i, %.lr.ph112.i, %middle.block, %vec.epilog.middle.block, %middle.block648, %vec.epilog.middle.block662, %bb.ip, %bb.io, %bb.in, %bb.im, %.split.i252, %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre391.a = load i32, ptr %i.h, align 4, !tbaa !25
  br label %png_do_unshift.exit

png_do_unshift.exit:                              ; preds = %.sink.split.i251, %bb.ib, %png_do_read_invert_alpha.exit
  %i.cvd = phi i32 [ %.pre391.a, %.sink.split.i251 ], [ %i.cpw, %bb.ib ], [ %i.cpw, %png_do_read_invert_alpha.exit ]
  %i.cve = and i32 %i.cvd, 4
  %.not164 = icmp eq i32 %i.cve, 0
  br i1 %.not164, label %png_do_unpack.exit, label %bb.iq

bb.iq:                                            ; preds = %png_do_unshift.exit
  %i.cvf = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 1 ; 6 uses
  %i.cvh = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cvi = load i8, ptr %i.cvh, align 1, !tbaa !75 ; 2 uses
  %i.cvj = icmp ult i8 %i.cvi, 8
  br i1 %i.cvj, label %bb.ir, label %png_do_unpack.exit

bb.ir:                                            ; preds = %bb.iq
  %i.cvk = load i32, ptr %1, align 8, !tbaa !74   ; 19 uses
  %.pre.i254 = zext i32 %i.cvk to i64             ; 4 uses
  switch i8 %i.cvi, label %.loopexit.i260 [
    i8 1, label %bb.is
    i8 2, label %bb.it
    i8 4, label %bb.iu
  ]

bb.is:                                            ; preds = %bb.ir
  %.not88.i = icmp eq i32 %i.cvk, 0
  br i1 %.not88.i, label %.loopexit.i260, label %.lr.ph85.preheader.i

.lr.ph85.preheader.i:                             ; preds = %bb.is
  %i.cvl = sub i32 0, %i.cvk
  %i.cvm = and i32 %i.cvl, 7                      ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i254 ; 2 uses
  %i.cvo = add i32 %i.cvk, -1                     ; 2 uses
  %i.cvp = lshr i32 %i.cvo, 3
  %i.cvq = zext nneg i32 %i.cvp to i64
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cvq ; 2 uses
  %xtraiter846 = and i32 %i.cvk, 1
  %i.cvs = icmp eq i32 %i.cvo, 0
  br i1 %i.cvs, label %.lr.ph85.i.epil.preheader, label %.lr.ph85.preheader.i.new

.lr.ph85.preheader.i.new:                         ; preds = %.lr.ph85.preheader.i
  %unroll_iter850 = and i32 %i.cvk, -2
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.preheader.i.new
  %.06084.i = phi i32 [ %i.cvm, %.lr.ph85.preheader.i.new ], [ %.161.i.1, %.lr.ph85.i ] ; 3 uses
  %.pn6983.i = phi ptr [ %i.cvn, %.lr.ph85.preheader.i.new ], [ %.062.i.1, %.lr.ph85.i ] ; 2 uses
  %.06382.i = phi ptr [ %i.cvr, %.lr.ph85.preheader.i.new ], [ %.164.i.1, %.lr.ph85.i ] ; 2 uses
  %niter851 = phi i32 [ 0, %.lr.ph85.preheader.i.new ], [ %niter851.next.1, %.lr.ph85.i ]
  %.062.i = getelementptr inbounds i8, ptr %.pn6983.i, i64 -1
  %i.cvt = load i8, ptr %.06382.i, align 1, !tbaa !26
  %i.cvu = zext i8 %i.cvt to i32
  %i.cvv = lshr i32 %i.cvu, %.06084.i
  %i.cvw = trunc nuw i32 %i.cvv to i8
  %i.cvx = and i8 %i.cvw, 1
  store i8 %i.cvx, ptr %.062.i, align 1, !tbaa !26
  %i.cvy = icmp eq i32 %.06084.i, 7               ; 2 uses
  %i.cvz = add nuw nsw i32 %.06084.i, 1
  %.164.idx.i = sext i1 %i.cvy to i64
  %.164.i = getelementptr inbounds i8, ptr %.06382.i, i64 %.164.idx.i ; 2 uses
  %.161.i = select i1 %i.cvy, i32 0, i32 %i.cvz   ; 3 uses
  %.062.i.1 = getelementptr inbounds i8, ptr %.pn6983.i, i64 -2 ; 3 uses
  %i.cwa = load i8, ptr %.164.i, align 1, !tbaa !26
  %i.cwb = zext i8 %i.cwa to i32
  %i.cwc = lshr i32 %i.cwb, %.161.i
  %i.cwd = trunc nuw i32 %i.cwc to i8
  %i.cwe = and i8 %i.cwd, 1
  store i8 %i.cwe, ptr %.062.i.1, align 1, !tbaa !26
  %i.cwf = icmp eq i32 %.161.i, 7                 ; 2 uses
  %i.cwg = add nuw nsw i32 %.161.i, 1
  %.164.idx.i.1 = sext i1 %i.cwf to i64
  %.164.i.1 = getelementptr inbounds i8, ptr %.164.i, i64 %.164.idx.i.1 ; 2 uses
  %.161.i.1 = select i1 %i.cwf, i32 0, i32 %i.cwg ; 2 uses
  %niter851.next.1 = add nuw i32 %niter851, 2     ; 2 uses
  %niter851.ncmp.1 = icmp eq i32 %niter851.next.1, %unroll_iter850
  br i1 %niter851.ncmp.1, label %.loopexit.i260.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !288

bb.it:                                            ; preds = %bb.ir
  %.not87.i = icmp eq i32 %i.cvk, 0
  br i1 %.not87.i, label %.loopexit.i260, label %.lr.ph80.preheader.i

.lr.ph80.preheader.i:                             ; preds = %bb.it
  %.neg.i262 = mul i32 %i.cvk, 6
  %i.cwh = and i32 %.neg.i262, 6                  ; 2 uses
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i254 ; 2 uses
  %i.cwj = add i32 %i.cvk, -1                     ; 2 uses
  %i.cwk = lshr i32 %i.cwj, 2
  %i.cwl = zext nneg i32 %i.cwk to i64
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cwl ; 2 uses
  %xtraiter840 = and i32 %i.cvk, 1
  %i.cwn = icmp eq i32 %i.cwj, 0
  br i1 %i.cwn, label %.lr.ph80.i.epil.preheader, label %.lr.ph80.preheader.i.new

.lr.ph80.preheader.i.new:                         ; preds = %.lr.ph80.preheader.i
  %unroll_iter844 = and i32 %i.cvk, -2
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.lr.ph80.i, %.lr.ph80.preheader.i.new
  %.05579.i = phi i32 [ %i.cwh, %.lr.ph80.preheader.i.new ], [ %.156.i.1, %.lr.ph80.i ] ; 3 uses
  %.pn6878.i = phi ptr [ %i.cwi, %.lr.ph80.preheader.i.new ], [ %.057.i.1, %.lr.ph80.i ] ; 2 uses
  %.05877.i = phi ptr [ %i.cwm, %.lr.ph80.preheader.i.new ], [ %.159.i.1, %.lr.ph80.i ] ; 2 uses
  %niter845 = phi i32 [ 0, %.lr.ph80.preheader.i.new ], [ %niter845.next.1, %.lr.ph80.i ]
  %.057.i = getelementptr inbounds i8, ptr %.pn6878.i, i64 -1
  %i.cwo = load i8, ptr %.05877.i, align 1, !tbaa !26
  %i.cwp = zext i8 %i.cwo to i32
  %i.cwq = lshr i32 %i.cwp, %.05579.i
  %i.cwr = trunc nuw i32 %i.cwq to i8
  %i.cws = and i8 %i.cwr, 3
  store i8 %i.cws, ptr %.057.i, align 1, !tbaa !26
  %i.cwt = icmp eq i32 %.05579.i, 6               ; 2 uses
  %i.cwu = add i32 %.05579.i, 2
  %.159.idx.i = sext i1 %i.cwt to i64
  %.159.i = getelementptr inbounds i8, ptr %.05877.i, i64 %.159.idx.i ; 2 uses
  %.156.i = select i1 %i.cwt, i32 0, i32 %i.cwu   ; 3 uses
  %.057.i.1 = getelementptr inbounds i8, ptr %.pn6878.i, i64 -2 ; 3 uses
  %i.cwv = load i8, ptr %.159.i, align 1, !tbaa !26
  %i.cww = zext i8 %i.cwv to i32
  %i.cwx = lshr i32 %i.cww, %.156.i
  %i.cwy = trunc nuw i32 %i.cwx to i8
  %i.cwz = and i8 %i.cwy, 3
  store i8 %i.cwz, ptr %.057.i.1, align 1, !tbaa !26
  %i.cxa = icmp eq i32 %.156.i, 6                 ; 2 uses
  %i.cxb = add i32 %.156.i, 2
  %.159.idx.i.1 = sext i1 %i.cxa to i64
  %.159.i.1 = getelementptr inbounds i8, ptr %.159.i, i64 %.159.idx.i.1 ; 2 uses
  %.156.i.1 = select i1 %i.cxa, i32 0, i32 %i.cxb ; 2 uses
  %niter845.next.1 = add nuw i32 %niter845, 2     ; 2 uses
  %niter845.ncmp.1 = icmp eq i32 %niter845.next.1, %unroll_iter844
  br i1 %niter845.ncmp.1, label %.loopexit.i260.loopexit671.unr-lcssa, label %.lr.ph80.i, !llvm.loop !289

bb.iu:                                            ; preds = %bb.ir
  %.not86.i = icmp eq i32 %i.cvk, 0
  br i1 %.not86.i, label %.loopexit.i260, label %.lr.ph.preheader.i255

.lr.ph.preheader.i255:                            ; preds = %bb.iu
  %i.cxc = shl i32 %i.cvk, 2
  %i.cxd = and i32 %i.cxc, 4                      ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %.pre.i254 ; 2 uses
  %i.cxf = add i32 %i.cvk, -1                     ; 2 uses
  %i.cxg = lshr i32 %i.cxf, 1
  %i.cxh = zext nneg i32 %i.cxg to i64
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cvg, i64 %i.cxh ; 2 uses
  %xtraiter834 = and i32 %i.cvk, 1
  %i.cxj = icmp eq i32 %i.cxf, 0
  br i1 %i.cxj, label %.lr.ph.i256.epil.preheader, label %.lr.ph.preheader.i255.new

.lr.ph.preheader.i255.new:                        ; preds = %.lr.ph.preheader.i255
  %unroll_iter838 = and i32 %i.cvk, -2
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %.lr.ph.i256, %.lr.ph.preheader.i255.new
  %.075.i = phi i32 [ %i.cxd, %.lr.ph.preheader.i255.new ], [ %.1.i258.1, %.lr.ph.i256 ] ; 2 uses
  %.pn74.i = phi ptr [ %i.cxe, %.lr.ph.preheader.i255.new ], [ %.052.i.1, %.lr.ph.i256 ] ; 2 uses
  %.05373.i = phi ptr [ %i.cxi, %.lr.ph.preheader.i255.new ], [ %.154.i.1, %.lr.ph.i256 ] ; 2 uses
  %niter839 = phi i32 [ 0, %.lr.ph.preheader.i255.new ], [ %niter839.next.1, %.lr.ph.i256 ]
  %.052.i = getelementptr inbounds i8, ptr %.pn74.i, i64 -1
  %i.cxk = load i8, ptr %.05373.i, align 1, !tbaa !26
  %i.cxl = zext i8 %i.cxk to i32
  %i.cxm = lshr i32 %i.cxl, %.075.i
  %i.cxn = trunc nuw i32 %i.cxm to i8
  %i.cxo = and i8 %i.cxn, 15
  store i8 %i.cxo, ptr %.052.i, align 1, !tbaa !26
  %.not.i257 = icmp ne i32 %.075.i, 0             ; 4 uses
  %.154.idx.i = sext i1 %.not.i257 to i64
  %.154.i = getelementptr inbounds i8, ptr %.05373.i, i64 %.154.idx.i ; 2 uses
  %.1.i258 = select i1 %.not.i257, i32 0, i32 4
  %.052.i.1 = getelementptr inbounds i8, ptr %.pn74.i, i64 -2 ; 3 uses
  %i.cxp = load i8, ptr %.154.i, align 1, !tbaa !26
  %i.cxq = zext i8 %i.cxp to i32
  %i.cxr = lshr i32 %i.cxq, %.1.i258
  %i.cxs = trunc nuw i32 %i.cxr to i8
  %i.cxt = and i8 %i.cxs, 15
  store i8 %i.cxt, ptr %.052.i.1, align 1, !tbaa !26
  %not..not.i257 = xor i1 %.not.i257, true
  %.154.idx.i.1 = sext i1 %not..not.i257 to i64
  %.154.i.1 = getelementptr inbounds i8, ptr %.154.i, i64 %.154.idx.i.1 ; 2 uses
  %.1.i258.1 = select i1 %.not.i257, i32 4, i32 0 ; 2 uses
  %niter839.next.1 = add nuw i32 %niter839, 2     ; 2 uses
  %niter839.ncmp.1 = icmp eq i32 %niter839.next.1, %unroll_iter838
  br i1 %niter839.ncmp.1, label %.loopexit.i260.loopexit672.unr-lcssa, label %.lr.ph.i256, !llvm.loop !290

.loopexit.i260.loopexit.unr-lcssa:                ; preds = %.lr.ph85.i
  %lcmp.mod848.not = icmp eq i32 %xtraiter846, 0
  br i1 %lcmp.mod848.not, label %.loopexit.i260, label %.lr.ph85.i.epil.preheader

.lr.ph85.i.epil.preheader:                        ; preds = %.loopexit.i260.loopexit.unr-lcssa, %.lr.ph85.preheader.i
  %.06084.i.epil.init = phi i32 [ %i.cvm, %.lr.ph85.preheader.i ], [ %.161.i.1, %.loopexit.i260.loopexit.unr-lcssa ]
  %.pn6983.i.epil.init = phi ptr [ %i.cvn, %.lr.ph85.preheader.i ], [ %.062.i.1, %.loopexit.i260.loopexit.unr-lcssa ]
  %.06382.i.epil.init = phi ptr [ %i.cvr, %.lr.ph85.preheader.i ], [ %.164.i.1, %.loopexit.i260.loopexit.unr-lcssa ]
  %lcmp.mod849 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod849)
  %.062.i.epil = getelementptr inbounds i8, ptr %.pn6983.i.epil.init, i64 -1
  %i.cxu = load i8, ptr %.06382.i.epil.init, align 1, !tbaa !26
  %i.cxv = zext i8 %i.cxu to i32
  %i.cxw = lshr i32 %i.cxv, %.06084.i.epil.init
  %i.cxx = trunc nuw i32 %i.cxw to i8
  %i.cxy = and i8 %i.cxx, 1
  store i8 %i.cxy, ptr %.062.i.epil, align 1, !tbaa !26
  br label %.loopexit.i260

.loopexit.i260.loopexit671.unr-lcssa:             ; preds = %.lr.ph80.i
  %lcmp.mod842.not = icmp eq i32 %xtraiter840, 0
  br i1 %lcmp.mod842.not, label %.loopexit.i260, label %.lr.ph80.i.epil.preheader

.lr.ph80.i.epil.preheader:                        ; preds = %.loopexit.i260.loopexit671.unr-lcssa, %.lr.ph80.preheader.i
  %.05579.i.epil.init = phi i32 [ %i.cwh, %.lr.ph80.preheader.i ], [ %.156.i.1, %.loopexit.i260.loopexit671.unr-lcssa ]
  %.pn6878.i.epil.init = phi ptr [ %i.cwi, %.lr.ph80.preheader.i ], [ %.057.i.1, %.loopexit.i260.loopexit671.unr-lcssa ]
  %.05877.i.epil.init = phi ptr [ %i.cwm, %.lr.ph80.preheader.i ], [ %.159.i.1, %.loopexit.i260.loopexit671.unr-lcssa ]
  %lcmp.mod843 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod843)
  %.057.i.epil = getelementptr inbounds i8, ptr %.pn6878.i.epil.init, i64 -1
  %i.cxz = load i8, ptr %.05877.i.epil.init, align 1, !tbaa !26
  %i.cya = zext i8 %i.cxz to i32
  %i.cyb = lshr i32 %i.cya, %.05579.i.epil.init
  %i.cyc = trunc nuw i32 %i.cyb to i8
  %i.cyd = and i8 %i.cyc, 3
  store i8 %i.cyd, ptr %.057.i.epil, align 1, !tbaa !26
  br label %.loopexit.i260

.loopexit.i260.loopexit672.unr-lcssa:             ; preds = %.lr.ph.i256
  %lcmp.mod836.not = icmp eq i32 %xtraiter834, 0
  br i1 %lcmp.mod836.not, label %.loopexit.i260, label %.lr.ph.i256.epil.preheader

.lr.ph.i256.epil.preheader:                       ; preds = %.loopexit.i260.loopexit672.unr-lcssa, %.lr.ph.preheader.i255
  %.075.i.epil.init = phi i32 [ %i.cxd, %.lr.ph.preheader.i255 ], [ %.1.i258.1, %.loopexit.i260.loopexit672.unr-lcssa ]
  %.pn74.i.epil.init = phi ptr [ %i.cxe, %.lr.ph.preheader.i255 ], [ %.052.i.1, %.loopexit.i260.loopexit672.unr-lcssa ]
  %.05373.i.epil.init = phi ptr [ %i.cxi, %.lr.ph.preheader.i255 ], [ %.154.i.1, %.loopexit.i260.loopexit672.unr-lcssa ]
  %lcmp.mod837 = trunc i32 %i.cvk to i1
  tail call void @llvm.assume(i1 %lcmp.mod837)
  %.052.i.epil = getelementptr inbounds i8, ptr %.pn74.i.epil.init, i64 -1
  %i.cye = load i8, ptr %.05373.i.epil.init, align 1, !tbaa !26
  %i.cyf = zext i8 %i.cye to i32
  %i.cyg = lshr i32 %i.cyf, %.075.i.epil.init
  %i.cyh = trunc nuw i32 %i.cyg to i8
  %i.cyi = and i8 %i.cyh, 15
  store i8 %i.cyi, ptr %.052.i.epil, align 1, !tbaa !26
  br label %.loopexit.i260

.loopexit.i260:                                   ; preds = %.lr.ph.i256.epil.preheader, %.loopexit.i260.loopexit672.unr-lcssa, %.lr.ph80.i.epil.preheader, %.loopexit.i260.loopexit671.unr-lcssa, %.lr.ph85.i.epil.preheader, %.loopexit.i260.loopexit.unr-lcssa, %bb.iu, %bb.it, %bb.is, %bb.ir
  store i8 8, ptr %i.cvh, align 1, !tbaa !75
  %i.cyj = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cyk = load i8, ptr %i.cyj, align 2, !tbaa !78 ; 2 uses
  %i.cyl = shl i8 %i.cyk, 3
  %i.cym = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cyl, ptr %i.cym, align 1, !tbaa !76
  %i.cyn = zext i8 %i.cyk to i64
  %i.cyo = mul nuw nsw i64 %i.cyn, %.pre.i254
  %i.cyp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cyo, ptr %i.cyp, align 8, !tbaa !77
  br label %png_do_unpack.exit

png_do_unpack.exit:                               ; preds = %.loopexit.i260, %bb.iq, %png_do_unshift.exit
  %i.cyq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cyr = load i8, ptr %i.cyq, align 8, !tbaa !73
  %i.cys = icmp eq i8 %i.cyr, 3
  br i1 %i.cys, label %bb.iv, label %bb.ix

bb.iv:                                            ; preds = %png_do_unpack.exit
  %i.cyt = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cyu = load i32, ptr %i.cyt, align 4, !tbaa !327
  %i.cyv = icmp sgt i32 %i.cyu, -1
  br i1 %i.cyv, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  tail call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %png_do_unpack.exit
  %i.cyw = load i32, ptr %i.h, align 4, !tbaa !25 ; 2 uses
  %i.cyx = and i32 %i.cyw, 1
  %.not165 = icmp eq i32 %i.cyx, 0
  br i1 %.not165, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.cyy = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyy, i64 1
  tail call void @png_do_bgr(ptr noundef nonnull %1, ptr noundef nonnull %i.cyz) #11
  %.pre392.a = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.cza = phi i32 [ %.pre392.a, %bb.iy ], [ %i.cyw, %bb.ix ] ; 2 uses
  %i.czb = and i32 %i.cza, 65536
  %.not166 = icmp eq i32 %i.czb, 0
  br i1 %.not166, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.czc = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.czd = getelementptr inbounds nuw i8, ptr %i.czc, i64 1
  tail call void @png_do_packswap(ptr noundef nonnull %1, ptr noundef nonnull %i.czd) #11
  %.pre393.a = load i32, ptr %i.h, align 4, !tbaa !25
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.cze = phi i32 [ %.pre393.a, %bb.ja ], [ %i.cza, %bb.iz ] ; 5 uses
  %i.czf = and i32 %i.cze, 32768
  %.not167 = icmp eq i32 %i.czf, 0
  br i1 %.not167, label %png_do_read_filler.exit, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.czg = load ptr, ptr %i.b, align 8, !tbaa !308
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 1 ; 8 uses
  %i.czi = getelementptr inbounds nuw i8, ptr %0, i64 634
  %i.czj = load i16, ptr %i.czi, align 2, !tbaa !328 ; 2 uses
  %i.czk = load i32, ptr %i.e, align 8, !tbaa !24 ; 4 uses
  %i.czl = load i32, ptr %1, align 8, !tbaa !74   ; 31 uses
  %i.czm = lshr i16 %i.czj, 8
  %i.czn = trunc nuw i16 %i.czm to i8             ; 10 uses
  %i.czo = trunc i16 %i.czj to i8                 ; 28 uses
  %i.czp = load i8, ptr %i.cyq, align 8, !tbaa !73
  switch i8 %i.czp, label %png_do_read_filler.exit [
    i8 0, label %bb.jd
    i8 2, label %bb.jk
  ]

bb.jd:                                            ; preds = %bb.jc
  %i.czq = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.czr = load i8, ptr %i.czq, align 1, !tbaa !75
  switch i8 %i.czr, label %png_do_read_filler.exit [
    i8 8, label %bb.je
    i8 16, label %bb.jh
  ]

bb.je:                                            ; preds = %bb.jd
  %i.czs = and i32 %i.czk, 128
  %.not205.i = icmp eq i32 %i.czs, 0
  %i.czt = zext i32 %i.czl to i64                 ; 6 uses
  br i1 %.not205.i, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czh, i64 %i.czt ; 3 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 %i.czt ; 3 uses
  %i.czw = icmp ugt i32 %i.czl, 1
  br i1 %i.czw, label %.lr.ph245.i.preheader, label %._crit_edge246.i

.lr.ph245.i.preheader:                            ; preds = %bb.jf
  %i.czx = add i32 %i.czl, -1                     ; 2 uses
  %i.czy = add i32 %i.czl, -2
  %xtraiter878 = and i32 %i.czx, 3                ; 3 uses
  %i.czz = icmp ult i32 %i.czy, 3
  br i1 %i.czz, label %.lr.ph245.i.epil.preheader, label %.lr.ph245.i.preheader.new

.lr.ph245.i.preheader.new:                        ; preds = %.lr.ph245.i.preheader
  %unroll_iter883 = and i32 %i.czx, -4
  br label %.lr.ph245.i

.lr.ph245.i:                                      ; preds = %.lr.ph245.i, %.lr.ph245.i.preheader.new
  %.0197243.i = phi ptr [ %i.czv, %.lr.ph245.i.preheader.new ], [ %i.dap, %.lr.ph245.i ] ; 8 uses
  %.0198242.i = phi ptr [ %i.czu, %.lr.ph245.i.preheader.new ], [ %i.dan, %.lr.ph245.i ] ; 4 uses
  %niter884 = phi i32 [ 0, %.lr.ph245.i.preheader.new ], [ %niter884.next.3, %.lr.ph245.i ]
  %i.daa = getelementptr inbounds i8, ptr %.0197243.i, i64 -1
  store i8 %i.czo, ptr %i.daa, align 1, !tbaa !26
  %i.dab = getelementptr inbounds i8, ptr %.0198242.i, i64 -1
  %i.dac = load i8, ptr %i.dab, align 1, !tbaa !26
  %i.dad = getelementptr inbounds i8, ptr %.0197243.i, i64 -2
  store i8 %i.dac, ptr %i.dad, align 1, !tbaa !26
  %i.dae = getelementptr inbounds i8, ptr %.0197243.i, i64 -3
  store i8 %i.czo, ptr %i.dae, align 1, !tbaa !26
  %i.daf = getelementptr inbounds i8, ptr %.0198242.i, i64 -2
  %i.dag = load i8, ptr %i.daf, align 1, !tbaa !26
  %i.dah = getelementptr inbounds i8, ptr %.0197243.i, i64 -4
  store i8 %i.dag, ptr %i.dah, align 1, !tbaa !26
  %i.dai = getelementptr inbounds i8, ptr %.0197243.i, i64 -5
  store i8 %i.czo, ptr %i.dai, align 1, !tbaa !26
  %i.daj = getelementptr inbounds i8, ptr %.0198242.i, i64 -3
  %i.dak = load i8, ptr %i.daj, align 1, !tbaa !26
  %i.dal = getelementptr inbounds i8, ptr %.0197243.i, i64 -6
  store i8 %i.dak, ptr %i.dal, align 1, !tbaa !26
  %i.dam = getelementptr inbounds i8, ptr %.0197243.i, i64 -7
  store i8 %i.czo, ptr %i.dam, align 1, !tbaa !26
  %i.dan = getelementptr inbounds i8, ptr %.0198242.i, i64 -4 ; 3 uses
  %i.dao = load i8, ptr %i.dan, align 1, !tbaa !26
  %i.dap = getelementptr inbounds i8, ptr %.0197243.i, i64 -8 ; 4 uses
  store i8 %i.dao, ptr %i.dap, align 1, !tbaa !26
  %niter884.next.3 = add i32 %niter884, 4         ; 2 uses
  %niter884.ncmp.3 = icmp eq i32 %niter884.next.3, %unroll_iter883
  br i1 %niter884.ncmp.3, label %._crit_edge246.i.loopexit.unr-lcssa, label %.lr.ph245.i, !llvm.loop !291

._crit_edge246.i.loopexit.unr-lcssa:              ; preds = %.lr.ph245.i
  %lcmp.mod880.not = icmp eq i32 %xtraiter878, 0
  br i1 %lcmp.mod880.not, label %._crit_edge246.i, label %.lr.ph245.i.epil.preheader

.lr.ph245.i.epil.preheader:                       ; preds = %._crit_edge246.i.loopexit.unr-lcssa, %.lr.ph245.i.preheader
  %.0197243.i.epil.init = phi ptr [ %i.czv, %.lr.ph245.i.preheader ], [ %i.dap, %._crit_edge246.i.loopexit.unr-lcssa ]
  %.0198242.i.epil.init = phi ptr [ %i.czu, %.lr.ph245.i.preheader ], [ %i.dan, %._crit_edge246.i.loopexit.unr-lcssa ]
  %lcmp.mod882 = icmp ne i32 %xtraiter878, 0
  tail call void @llvm.assume(i1 %lcmp.mod882)
  br label %.lr.ph245.i.epil

.lr.ph245.i.epil:                                 ; preds = %.lr.ph245.i.epil, %.lr.ph245.i.epil.preheader
  %.0197243.i.epil = phi ptr [ %i.dat, %.lr.ph245.i.epil ], [ %.0197243.i.epil.init, %.lr.ph245.i.epil.preheader ] ; 2 uses
  %.0198242.i.epil = phi ptr [ %i.dar, %.lr.ph245.i.epil ], [ %.0198242.i.epil.init, %.lr.ph245.i.epil.preheader ]
  %epil.iter879 = phi i32 [ %epil.iter879.next, %.lr.ph245.i.epil ], [ 0, %.lr.ph245.i.epil.preheader ]
  %i.daq = getelementptr inbounds i8, ptr %.0197243.i.epil, i64 -1
  store i8 %i.czo, ptr %i.daq, align 1, !tbaa !26
  %i.dar = getelementptr inbounds i8, ptr %.0198242.i.epil, i64 -1 ; 2 uses
  %i.das = load i8, ptr %i.dar, align 1, !tbaa !26
  %i.dat = getelementptr inbounds i8, ptr %.0197243.i.epil, i64 -2 ; 3 uses
  store i8 %i.das, ptr %i.dat, align 1, !tbaa !26
  %epil.iter879.next = add i32 %epil.iter879, 1   ; 2 uses
  %epil.iter879.cmp.not = icmp eq i32 %epil.iter879.next, %xtraiter878
  br i1 %epil.iter879.cmp.not, label %._crit_edge246.i, label %.lr.ph245.i.epil, !llvm.loop !292

._crit_edge246.i:                                 ; preds = %._crit_edge246.i.loopexit.unr-lcssa, %.lr.ph245.i.epil, %bb.jf
  %.0197.lcssa.i = phi ptr [ %i.czv, %bb.jf ], [ %i.dap, %._crit_edge246.i.loopexit.unr-lcssa ], [ %i.dat, %.lr.ph245.i.epil ]
  %i.dau = getelementptr inbounds i8, ptr %.0197.lcssa.i, i64 -1
  store i8 %i.czo, ptr %i.dau, align 1, !tbaa !26
  %i.dav = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 2, ptr %i.dav, align 2, !tbaa !78
  %i.daw = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 16, ptr %i.daw, align 1, !tbaa !76
  %i.dax = shl nuw nsw i64 %i.czt, 1
  br label %.sink.split.i265

bb.jg:                                            ; preds = %bb.je
  %.not257.i = icmp eq i32 %i.czl, 0
  br i1 %.not257.i, label %._crit_edge253.i, label %.lr.ph252.preheader.i

.lr.ph252.preheader.i:                            ; preds = %bb.jg
  %i.day = getelementptr inbounds nuw i8, ptr %i.czh, i64 %i.czt ; 3 uses
  %i.daz = getelementptr inbounds nuw i8, ptr %i.day, i64 %i.czt ; 2 uses
  %xtraiter885 = and i32 %i.czl, 3                ; 3 uses
  %i.dba = icmp ult i32 %i.czl, 4
  br i1 %i.dba, label %.lr.ph252.i.epil.preheader, label %.lr.ph252.preheader.i.new

.lr.ph252.preheader.i.new:                        ; preds = %.lr.ph252.preheader.i
  %unroll_iter889 = and i32 %i.czl, -4
  br label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %.lr.ph252.i, %.lr.ph252.preheader.i.new
  %.0195250.i = phi ptr [ %i.daz, %.lr.ph252.preheader.i.new ], [ %i.dbq, %.lr.ph252.i ] ; 8 uses
  %.0196249.i = phi ptr [ %i.day, %.lr.ph252.preheader.i.new ], [ %i.dbn, %.lr.ph252.i ] ; 4 uses
  %niter890 = phi i32 [ 0, %.lr.ph252.preheader.i.new ], [ %niter890.next.3, %.lr.ph252.i ]
  %i.dbb = getelementptr inbounds i8, ptr %.0196249.i, i64 -1
  %i.dbc = load i8, ptr %i.dbb, align 1, !tbaa !26
  %i.dbd = getelementptr inbounds i8, ptr %.0195250.i, i64 -1
  store i8 %i.dbc, ptr %i.dbd, align 1, !tbaa !26
  %i.dbe = getelementptr inbounds i8, ptr %.0195250.i, i64 -2
  store i8 %i.czo, ptr %i.dbe, align 1, !tbaa !26
  %i.dbf = getelementptr inbounds i8, ptr %.0196249.i, i64 -2
  %i.dbg = load i8, ptr %i.dbf, align 1, !tbaa !26
  %i.dbh = getelementptr inbounds i8, ptr %.0195250.i, i64 -3
  store i8 %i.dbg, ptr %i.dbh, align 1, !tbaa !26
  %i.dbi = getelementptr inbounds i8, ptr %.0195250.i, i64 -4
  store i8 %i.czo, ptr %i.dbi, align 1, !tbaa !26
  %i.dbj = getelementptr inbounds i8, ptr %.0196249.i, i64 -3
  %i.dbk = load i8, ptr %i.dbj, align 1, !tbaa !26
end_hunk_1
