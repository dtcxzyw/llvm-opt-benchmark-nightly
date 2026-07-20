inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 49
begin_hunk_0_@png_read_transform_info:bb.a
bb.af:                                            ; preds = %thread-pre-split
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.bo = add nuw nsw i8 %i.bh, 1                 ; 2 uses
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !199
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %thread-pre-split
  %i.bp = phi i8 [ %i.bo, %bb.af ], [ %i.bh, %thread-pre-split ] ; 3 uses
  %i.bq = and i32 %i.b, 32768
  %.not98 = icmp eq i32 %i.bq, 0
  br i1 %.not98, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i8 %i.bl, label %bb.ak [
    i8 2, label %bb.ai
    i8 0, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.bs = add nuw nsw i8 %i.bp, 1                 ; 3 uses
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !199
  %i.bt = and i32 %i.b, 16777216
  %.not99 = icmp eq i32 %i.bt, 0
  br i1 %.not99, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bu = or i8 %i.bl, 4
  store i8 %i.bu, ptr %i.bb, align 1, !tbaa !188
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ag
  %i.bv = phi i8 [ %i.bp, %bb.ah ], [ %i.bs, %bb.ai ], [ %i.bs, %bb.aj ], [ %i.bp, %bb.ag ] ; 2 uses
  %i.bw = and i32 %i.b, 1048576
  %.not100 = icmp eq i32 %i.bw, 0
  br i1 %.not100, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !200 ; 3 uses
  %.not101 = icmp eq i8 %i.by, 0
  br i1 %.not101, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 %i.by, ptr %i.z, align 4, !tbaa !196
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bz = phi i8 [ %i.by, %bb.am ], [ %i.ba, %bb.al ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !201 ; 3 uses
  %.not102 = icmp eq i8 %i.cb, 0
  br i1 %.not102, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 41
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !199
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.ak
  %i.cd = phi i8 [ %i.bz, %bb.an ], [ %i.bz, %bb.ao ], [ %i.ba, %bb.ak ]
  %i.ce = phi i8 [ %i.bv, %bb.an ], [ %i.cb, %bb.ao ], [ %i.bv, %bb.ak ]
  %i.cf = mul i8 %i.cd, %i.ce                     ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !202
  %i.ch = icmp ugt i8 %i.cf, 7
  %i.ci = load i32, ptr %1, align 8, !tbaa !203
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  br i1 %i.ch, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ck = lshr i8 %i.cf, 3
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cj, %i.cl
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cn = zext nneg i8 %i.cf to i64
  %i.co = mul nuw nsw i64 %i.cj, %i.cn
  %i.cp = add nuw nsw i64 %i.co, 7
  %i.cq = lshr i64 %i.cp, 3
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cr = phi i64 [ %i.cm, %bb.aq ], [ %i.cq, %bb.ar ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !204
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !205
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_do_read_transformations(ptr noalias noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 23 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7
  %i.g = and i32 %i.f, 16448
  %or.cond = icmp eq i32 %i.g, 16384
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 24 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !27   ; 2 uses
  %i.j = and i32 %i.i, 4096
  %.not140 = icmp eq i32 %i.j, 0
  br i1 %.not140, label %png_do_expand_palette.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !207
  %i.m = icmp eq i8 %i.l, 3
  br i1 %i.m, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92   ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.t = load i16, ptr %i.s, align 8, !tbaa !144  ; 2 uses
  %i.u = load i32, ptr %1, align 8, !tbaa !209    ; 30 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 4 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !210   ; 3 uses
  %i.x = icmp ult i8 %i.w, 8
  br i1 %i.x, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.pre.i = zext i32 %i.u to i64                  ; 10 uses
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
  %xtraiter745 = and i32 %i.u, 1
  %i.af = icmp eq i32 %i.ab, 0
  br i1 %i.af, label %.lr.ph16.i.epil.preheader, label %.lr.ph16.preheader.i.new

.lr.ph16.preheader.i.new:                         ; preds = %.lr.ph16.preheader.i
  %unroll_iter748 = and i32 %i.u, -2
  br label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %.lr.ph16.i, %.lr.ph16.preheader.i.new
  %.015.i = phi i32 [ %i.z, %.lr.ph16.preheader.i.new ], [ %.1.i.1, %.lr.ph16.i ] ; 3 uses
  %.pn13013.i = phi ptr [ %i.aa, %.lr.ph16.preheader.i.new ], [ %.0114.i.1, %.lr.ph16.i ] ; 2 uses
  %.012012.i = phi ptr [ %i.ae, %.lr.ph16.preheader.i.new ], [ %.1121.i.1, %.lr.ph16.i ] ; 2 uses
  %niter749 = phi i32 [ 0, %.lr.ph16.preheader.i.new ], [ %niter749.next.1, %.lr.ph16.i ]
  %.0114.i = getelementptr inbounds i8, ptr %.pn13013.i, i64 -1
  %i.ag = load i8, ptr %.012012.i, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i32
  %i.ai = lshr i32 %i.ah, %.015.i
  %i.aj = trunc nuw i32 %i.ai to i8
  %..i = and i8 %i.aj, 1
  store i8 %..i, ptr %.0114.i, align 1, !tbaa !29
  %i.ak = icmp eq i32 %.015.i, 7                  ; 2 uses
  %i.al = add nuw nsw i32 %.015.i, 1
  %.1121.idx.i = sext i1 %i.ak to i64
  %.1121.i = getelementptr inbounds i8, ptr %.012012.i, i64 %.1121.idx.i ; 2 uses
  %.1.i = select i1 %i.ak, i32 0, i32 %i.al       ; 3 uses
  %.0114.i.1 = getelementptr inbounds i8, ptr %.pn13013.i, i64 -2 ; 3 uses
  %i.am = load i8, ptr %.1121.i, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i32
  %i.ao = lshr i32 %i.an, %.1.i
  %i.ap = trunc nuw i32 %i.ao to i8
  %..i.1 = and i8 %i.ap, 1
  store i8 %..i.1, ptr %.0114.i.1, align 1, !tbaa !29
  %i.aq = icmp eq i32 %.1.i, 7                    ; 2 uses
  %i.ar = add nuw nsw i32 %.1.i, 1
  %.1121.idx.i.1 = sext i1 %i.aq to i64
  %.1121.i.1 = getelementptr inbounds i8, ptr %.1121.i, i64 %.1121.idx.i.1 ; 2 uses
  %.1.i.1 = select i1 %i.aq, i32 0, i32 %i.ar     ; 2 uses
  %niter749.next.1 = add nuw i32 %niter749, 2     ; 2 uses
  %niter749.ncmp.1 = icmp eq i32 %niter749.next.1, %unroll_iter748
  br i1 %niter749.ncmp.1, label %.thread.i.loopexit.unr-lcssa, label %.lr.ph16.i, !llvm.loop !211

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
  %xtraiter740 = and i32 %i.u, 1
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %.lr.ph11.i.epil.preheader, label %.lr.ph11.preheader.i.new

.lr.ph11.preheader.i.new:                         ; preds = %.lr.ph11.preheader.i
  %unroll_iter743 = and i32 %i.u, -2
  br label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i.new
  %.210.i = phi i32 [ %i.as, %.lr.ph11.preheader.i.new ], [ %.3.i.1, %.lr.ph11.i ] ; 3 uses
  %.pn1298.i = phi ptr [ %i.at, %.lr.ph11.preheader.i.new ], [ %.1115.i.1, %.lr.ph11.i ] ; 2 uses
  %.21227.i = phi ptr [ %i.ax, %.lr.ph11.preheader.i.new ], [ %.3123.i.1, %.lr.ph11.i ] ; 2 uses
  %niter744 = phi i32 [ 0, %.lr.ph11.preheader.i.new ], [ %niter744.next.1, %.lr.ph11.i ]
  %.1115.i = getelementptr inbounds i8, ptr %.pn1298.i, i64 -1
  %i.az = load i8, ptr %.21227.i, align 1, !tbaa !29
  %i.ba = zext i8 %i.az to i32
  %i.bb = lshr i32 %i.ba, %.210.i
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = and i8 %i.bc, 3
  store i8 %i.bd, ptr %.1115.i, align 1, !tbaa !29
  %i.be = icmp eq i32 %.210.i, 6                  ; 2 uses
  %i.bf = add nsw i32 %.210.i, 2
  %.3123.idx.i = sext i1 %i.be to i64
  %.3123.i = getelementptr inbounds i8, ptr %.21227.i, i64 %.3123.idx.i ; 2 uses
  %.3.i = select i1 %i.be, i32 0, i32 %i.bf       ; 3 uses
  %.1115.i.1 = getelementptr inbounds i8, ptr %.pn1298.i, i64 -2 ; 3 uses
  %i.bg = load i8, ptr %.3123.i, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = lshr i32 %i.bh, %.3.i
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = and i8 %i.bj, 3
  store i8 %i.bk, ptr %.1115.i.1, align 1, !tbaa !29
  %i.bl = icmp eq i32 %.3.i, 6                    ; 2 uses
  %i.bm = add nsw i32 %.3.i, 2
  %.3123.idx.i.1 = sext i1 %i.bl to i64
  %.3123.i.1 = getelementptr inbounds i8, ptr %.3123.i, i64 %.3123.idx.i.1 ; 2 uses
  %.3.i.1 = select i1 %i.bl, i32 0, i32 %i.bm     ; 2 uses
  %niter744.next.1 = add nuw i32 %niter744, 2     ; 2 uses
  %niter744.ncmp.1 = icmp eq i32 %niter744.next.1, %unroll_iter743
  br i1 %niter744.ncmp.1, label %.thread.i.loopexit737.unr-lcssa, label %.lr.ph11.i, !llvm.loop !212

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
  %.46.i = phi i32 [ %i.bo, %.lr.ph.preheader.i.new ], [ %.5.i.1, %.lr.ph.i ] ; 3 uses
  %.pn4.i = phi ptr [ %i.bp, %.lr.ph.preheader.i.new ], [ %.2116.i.1, %.lr.ph.i ] ; 2 uses
  %.41243.i = phi ptr [ %i.bt, %.lr.ph.preheader.i.new ], [ %.5125.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %.2116.i = getelementptr inbounds i8, ptr %.pn4.i, i64 -1
  %i.bv = load i8, ptr %.41243.i, align 1, !tbaa !29
  %i.bw = zext i8 %i.bv to i32
  %i.bx = lshr i32 %i.bw, %.46.i
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = and i8 %i.by, 15
  store i8 %i.bz, ptr %.2116.i, align 1, !tbaa !29
  %i.ca = icmp eq i32 %.46.i, 4                   ; 2 uses
  %i.cb = add nsw i32 %.46.i, 4
  %.5125.idx.i = sext i1 %i.ca to i64
  %.5125.i = getelementptr inbounds i8, ptr %.41243.i, i64 %.5125.idx.i ; 2 uses
  %.5.i = select i1 %i.ca, i32 0, i32 %i.cb       ; 3 uses
  %.2116.i.1 = getelementptr inbounds i8, ptr %.pn4.i, i64 -2 ; 3 uses
  %i.cc = load i8, ptr %.5125.i, align 1, !tbaa !29
  %i.cd = zext i8 %i.cc to i32
  %i.ce = lshr i32 %i.cd, %.5.i
  %i.cf = trunc nuw i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 15
  store i8 %i.cg, ptr %.2116.i.1, align 1, !tbaa !29
  %i.ch = icmp eq i32 %.5.i, 4                    ; 2 uses
  %i.ci = add nsw i32 %.5.i, 4
  %.5125.idx.i.1 = sext i1 %i.ch to i64
  %.5125.i.1 = getelementptr inbounds i8, ptr %.5125.i, i64 %.5125.idx.i.1 ; 2 uses
  %.5.i.1 = select i1 %i.ch, i32 0, i32 %i.ci     ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i.loopexit738.unr-lcssa, label %.lr.ph.i, !llvm.loop !213

.thread.i.loopexit.unr-lcssa:                     ; preds = %.lr.ph16.i
  %lcmp.mod746.not = icmp eq i32 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %.thread.i, label %.lr.ph16.i.epil.preheader

.lr.ph16.i.epil.preheader:                        ; preds = %.thread.i.loopexit.unr-lcssa, %.lr.ph16.preheader.i
  %.015.i.epil.init = phi i32 [ %i.z, %.lr.ph16.preheader.i ], [ %.1.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.pn13013.i.epil.init = phi ptr [ %i.aa, %.lr.ph16.preheader.i ], [ %.0114.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.012012.i.epil.init = phi ptr [ %i.ae, %.lr.ph16.preheader.i ], [ %.1121.i.1, %.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod747 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod747)
  %.0114.i.epil = getelementptr inbounds i8, ptr %.pn13013.i.epil.init, i64 -1
  %i.cj = load i8, ptr %.012012.i.epil.init, align 1, !tbaa !29
  %i.ck = zext i8 %i.cj to i32
  %i.cl = lshr i32 %i.ck, %.015.i.epil.init
  %i.cm = trunc nuw i32 %i.cl to i8
  %..i.epil = and i8 %i.cm, 1
  store i8 %..i.epil, ptr %.0114.i.epil, align 1, !tbaa !29
  br label %.thread.i

.thread.i.loopexit737.unr-lcssa:                  ; preds = %.lr.ph11.i
  %lcmp.mod741.not = icmp eq i32 %xtraiter740, 0
  br i1 %lcmp.mod741.not, label %.thread.i, label %.lr.ph11.i.epil.preheader

.lr.ph11.i.epil.preheader:                        ; preds = %.thread.i.loopexit737.unr-lcssa, %.lr.ph11.preheader.i
  %.210.i.epil.init = phi i32 [ %i.as, %.lr.ph11.preheader.i ], [ %.3.i.1, %.thread.i.loopexit737.unr-lcssa ]
  %.pn1298.i.epil.init = phi ptr [ %i.at, %.lr.ph11.preheader.i ], [ %.1115.i.1, %.thread.i.loopexit737.unr-lcssa ]
  %.21227.i.epil.init = phi ptr [ %i.ax, %.lr.ph11.preheader.i ], [ %.3123.i.1, %.thread.i.loopexit737.unr-lcssa ]
  %lcmp.mod742 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod742)
  %.1115.i.epil = getelementptr inbounds i8, ptr %.pn1298.i.epil.init, i64 -1
  %i.cn = load i8, ptr %.21227.i.epil.init, align 1, !tbaa !29
  %i.co = zext i8 %i.cn to i32
  %i.cp = lshr i32 %i.co, %.210.i.epil.init
  %i.cq = trunc nuw i32 %i.cp to i8
  %i.cr = and i8 %i.cq, 3
  store i8 %i.cr, ptr %.1115.i.epil, align 1, !tbaa !29
  br label %.thread.i

.thread.i.loopexit738.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread.i.loopexit738.unr-lcssa, %.lr.ph.preheader.i
  %.46.i.epil.init = phi i32 [ %i.bo, %.lr.ph.preheader.i ], [ %.5.i.1, %.thread.i.loopexit738.unr-lcssa ]
  %.pn4.i.epil.init = phi ptr [ %i.bp, %.lr.ph.preheader.i ], [ %.2116.i.1, %.thread.i.loopexit738.unr-lcssa ]
  %.41243.i.epil.init = phi ptr [ %i.bt, %.lr.ph.preheader.i ], [ %.5125.i.1, %.thread.i.loopexit738.unr-lcssa ]
  %lcmp.mod739 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod739)
  %.2116.i.epil = getelementptr inbounds i8, ptr %.pn4.i.epil.init, i64 -1
  %i.cs = load i8, ptr %.41243.i.epil.init, align 1, !tbaa !29
  %i.ct = zext i8 %i.cs to i32
  %i.cu = lshr i32 %i.ct, %.46.i.epil.init
  %i.cv = trunc nuw i32 %i.cu to i8
  %i.cw = and i8 %i.cv, 15
  store i8 %i.cw, ptr %.2116.i.epil, align 1, !tbaa !29
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i.epil.preheader, %.thread.i.loopexit738.unr-lcssa, %.lr.ph11.i.epil.preheader, %.thread.i.loopexit737.unr-lcssa, %.lr.ph16.i.epil.preheader, %.thread.i.loopexit.unr-lcssa, %bb.k, %bb.j, %bb.i, %bb.h
  %.pre-phi.i = phi i64 [ %.pre.i, %.lr.ph11.i.epil.preheader ], [ %.pre.i, %bb.h ], [ %.pre.i, %.lr.ph16.i.epil.preheader ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ], [ %.pre.i, %.thread.i.loopexit.unr-lcssa ], [ %.pre.i, %.thread.i.loopexit737.unr-lcssa ], [ %.pre.i, %.thread.i.loopexit738.unr-lcssa ], [ %.pre.i, %.lr.ph.i.epil.preheader ]
  store i8 8, ptr %i.v, align 1, !tbaa !210
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 8, ptr %i.cx, align 1, !tbaa !214
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.pre-phi.i, ptr %i.cy, align 8, !tbaa !215
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.cz = icmp eq i8 %i.w, 8
  br i1 %i.cz, label %bb.m, label %png_do_expand_palette.exit

bb.m:                                             ; preds = %bb.l, %.thread.i
  %.not131.i = icmp eq i16 %i.t, 0
  br i1 %.not131.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not30.i = icmp eq i32 %i.u, 0
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph21.preheader.i

.lr.ph21.preheader.i:                             ; preds = %bb.n
  %i.da = zext i32 %i.u to i64                    ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -1
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.da
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.p, %.lr.ph21.preheader.i
  %.620.pn.i = phi ptr [ %.620.i, %bb.p ], [ %i.de, %.lr.ph21.preheader.i ]
  %.311219.i = phi i32 [ %i.eb, %bb.p ], [ 0, %.lr.ph21.preheader.i ]
  %.311718.i = phi ptr [ %i.ea, %bb.p ], [ %i.dd, %.lr.ph21.preheader.i ] ; 5 uses
  %.620.i = getelementptr inbounds i8, ptr %.620.pn.i, i64 -1 ; 5 uses
  %i.df = load i8, ptr %.620.i, align 1, !tbaa !29 ; 2 uses
  %i.dg = zext i8 %i.df to i16
  %.not133.i = icmp ugt i16 %i.t, %i.dg
  br i1 %.not133.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph21.i
  %i.dh = zext i8 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph21.i
  %storemerge134.i = phi i8 [ %i.dj, %bb.o ], [ -1, %.lr.ph21.i ]
  %.4118.i = getelementptr inbounds i8, ptr %.311718.i, i64 -1
  store i8 %storemerge134.i, ptr %.311718.i, align 1, !tbaa !29
  %i.dk = load i8, ptr %.620.i, align 1, !tbaa !29
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !73
  %i.dp = getelementptr inbounds i8, ptr %.311718.i, i64 -2
  store i8 %i.do, ptr %.4118.i, align 1, !tbaa !29
  %i.dq = load i8, ptr %.620.i, align 1, !tbaa !29
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !72
  %i.dv = getelementptr inbounds i8, ptr %.311718.i, i64 -3
  store i8 %i.du, ptr %i.dp, align 1, !tbaa !29
  %i.dw = load i8, ptr %.620.i, align 1, !tbaa !29
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !70
  %i.ea = getelementptr inbounds i8, ptr %.311718.i, i64 -4
  store i8 %i.dz, ptr %i.dv, align 1, !tbaa !29
  %i.eb = add nuw i32 %.311219.i, 1               ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.eb, %i.u
  br i1 %exitcond36.not.i, label %._crit_edge.i, label %.lr.ph21.i, !llvm.loop !216

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  store i8 8, ptr %i.v, align 1, !tbaa !210
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 32, ptr %i.ec, align 1, !tbaa !214
  %i.ed = shl i32 %i.u, 2
  %i.ee = zext i32 %i.ed to i64
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.ef = mul i32 %i.u, 3
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %.not31.i = icmp eq i32 %i.u, 0
  br i1 %.not31.i, label %._crit_edge27.i, label %.lr.ph26.preheader.i

.lr.ph26.preheader.i:                             ; preds = %bb.q
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -1 ; 2 uses
  %i.ej = zext i32 %i.u to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ej ; 2 uses
  %xtraiter750 = and i32 %i.u, 1
  %i.el = icmp eq i32 %i.u, 1
  br i1 %i.el, label %.lr.ph26.i.epil.preheader, label %.lr.ph26.preheader.i.new

.lr.ph26.preheader.i.new:                         ; preds = %.lr.ph26.preheader.i
  %unroll_iter753 = and i32 %i.u, -2
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i, %.lr.ph26.preheader.i.new
  %.511923.i = phi ptr [ %i.ei, %.lr.ph26.preheader.i.new ], [ %i.ft, %.lr.ph26.i ] ; 7 uses
  %.pn13222.i = phi ptr [ %i.ek, %.lr.ph26.preheader.i.new ], [ %.7.i.1, %.lr.ph26.i ] ; 2 uses
  %niter754 = phi i32 [ 0, %.lr.ph26.preheader.i.new ], [ %niter754.next.1, %.lr.ph26.i ]
  %.7.i = getelementptr inbounds i8, ptr %.pn13222.i, i64 -1 ; 3 uses
  %i.em = load i8, ptr %.7.i, align 1, !tbaa !29
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !73
  %i.er = getelementptr inbounds i8, ptr %.511923.i, i64 -1
  store i8 %i.eq, ptr %.511923.i, align 1, !tbaa !29
  %i.es = load i8, ptr %.7.i, align 1, !tbaa !29
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !72
  %i.ex = getelementptr inbounds i8, ptr %.511923.i, i64 -2
  store i8 %i.ew, ptr %i.er, align 1, !tbaa !29
  %i.ey = load i8, ptr %.7.i, align 1, !tbaa !29
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !70
  %i.fc = getelementptr inbounds i8, ptr %.511923.i, i64 -3
  store i8 %i.fb, ptr %i.ex, align 1, !tbaa !29
  %.7.i.1 = getelementptr inbounds i8, ptr %.pn13222.i, i64 -2 ; 5 uses
  %i.fd = load i8, ptr %.7.i.1, align 1, !tbaa !29
  %i.fe = zext i8 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !73
  %i.fi = getelementptr inbounds i8, ptr %.511923.i, i64 -4
  store i8 %i.fh, ptr %i.fc, align 1, !tbaa !29
  %i.fj = load i8, ptr %.7.i.1, align 1, !tbaa !29
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !72
  %i.fo = getelementptr inbounds i8, ptr %.511923.i, i64 -5
  store i8 %i.fn, ptr %i.fi, align 1, !tbaa !29
  %i.fp = load i8, ptr %.7.i.1, align 1, !tbaa !29
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !70
  %i.ft = getelementptr inbounds i8, ptr %.511923.i, i64 -6 ; 2 uses
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !29
  %niter754.next.1 = add nuw i32 %niter754, 2     ; 2 uses
  %niter754.ncmp.1 = icmp eq i32 %niter754.next.1, %unroll_iter753
  br i1 %niter754.ncmp.1, label %._crit_edge27.i.loopexit.unr-lcssa, label %.lr.ph26.i, !llvm.loop !217

._crit_edge27.i.loopexit.unr-lcssa:               ; preds = %.lr.ph26.i
  %lcmp.mod751.not = icmp eq i32 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %._crit_edge27.i, label %.lr.ph26.i.epil.preheader

.lr.ph26.i.epil.preheader:                        ; preds = %._crit_edge27.i.loopexit.unr-lcssa, %.lr.ph26.preheader.i
  %.511923.i.epil.init = phi ptr [ %i.ei, %.lr.ph26.preheader.i ], [ %i.ft, %._crit_edge27.i.loopexit.unr-lcssa ] ; 3 uses
  %.pn13222.i.epil.init = phi ptr [ %i.ek, %.lr.ph26.preheader.i ], [ %.7.i.1, %._crit_edge27.i.loopexit.unr-lcssa ]
  %lcmp.mod752 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod752)
  %.7.i.epil = getelementptr inbounds i8, ptr %.pn13222.i.epil.init, i64 -1 ; 3 uses
  %i.fu = load i8, ptr %.7.i.epil, align 1, !tbaa !29
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !73
  %i.fz = getelementptr inbounds i8, ptr %.511923.i.epil.init, i64 -1
  store i8 %i.fy, ptr %.511923.i.epil.init, align 1, !tbaa !29
  %i.ga = load i8, ptr %.7.i.epil, align 1, !tbaa !29
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !72
  %i.gf = getelementptr inbounds i8, ptr %.511923.i.epil.init, i64 -2
  store i8 %i.ge, ptr %i.fz, align 1, !tbaa !29
  %i.gg = load i8, ptr %.7.i.epil, align 1, !tbaa !29
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [3 x i8], ptr %i.p, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !70
  store i8 %i.gj, ptr %i.gf, align 1, !tbaa !29
  br label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.lr.ph26.i.epil.preheader, %._crit_edge27.i.loopexit.unr-lcssa, %bb.q
  store i8 8, ptr %i.v, align 1, !tbaa !210
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 24, ptr %i.gk, align 1, !tbaa !214
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge27.i, %._crit_edge.i
  %.sink48.i = phi i64 [ %i.eg, %._crit_edge27.i ], [ %i.ee, %._crit_edge.i ]
  %.sink47.i = phi i8 [ 2, %._crit_edge27.i ], [ 6, %._crit_edge.i ]
  %.sink.i = phi i8 [ 3, %._crit_edge27.i ], [ 4, %._crit_edge.i ]
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink48.i, ptr %i.gl, align 8, !tbaa !215
  store i8 %.sink47.i, ptr %i.k, align 8, !tbaa !207
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %.sink.i, ptr %i.gm, align 2, !tbaa !218
  br label %png_do_expand_palette.exit

bb.r:                                             ; preds = %bb.f
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.go = load i16, ptr %i.gn, align 8, !tbaa !144
  %.not141 = icmp eq i16 %i.go, 0
  %i.gp = and i32 %i.i, 33554432
  %.not142 = icmp eq i32 %i.gp, 0
  %or.cond177 = or i1 %.not142, %.not141
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %or.cond177, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 808
  tail call fastcc void @png_do_expand(ptr noundef nonnull %1, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gr)
  br label %png_do_expand_palette.exit

bb.t:                                             ; preds = %bb.r
  tail call fastcc void @png_do_expand(ptr noundef nonnull %1, ptr noundef nonnull %i.gq, ptr noundef null)
  br label %png_do_expand_palette.exit

png_do_expand_palette.exit:                       ; preds = %.sink.split.i, %bb.l, %bb.t, %bb.s, %bb.e
  %i.gs = load i32, ptr %i.h, align 4, !tbaa !27  ; 3 uses
  %i.gt = and i32 %i.gs, 262272
  %or.cond179 = icmp eq i32 %i.gt, 262144
  br i1 %or.cond179, label %bb.u, label %bb.w

bb.u:                                             ; preds = %png_do_expand_palette.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !207
  switch i8 %i.gv, label %bb.w [
    i8 6, label %bb.v
    i8 4, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.gw = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  tail call void @png_do_strip_channel(ptr noundef nonnull %1, ptr noundef nonnull %i.gx, i32 noundef 0) #11
  %.pre = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %png_do_expand_palette.exit
  %i.gy = phi i32 [ %i.gs, %bb.u ], [ %.pre, %bb.v ], [ %i.gs, %png_do_expand_palette.exit ] ; 3 uses
  %i.gz = and i32 %i.gy, 6291456
  %.not144 = icmp eq i32 %i.gz, 0
  br i1 %.not144, label %png_do_rgb_to_gray.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !207, !noalias !219 ; 2 uses
  %i.he = zext i8 %i.hd to i32                    ; 2 uses
  %i.hf = trunc i8 %i.hd to i1
  %i.hg = and i32 %i.he, 2
  %.not.i183 = icmp eq i32 %i.hg, 0
  %or.cond.i = or i1 %.not.i183, %i.hf
  br i1 %or.cond.i, label %png_do_rgb_to_gray.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1034
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !132, !alias.scope !219
  %i.hj = zext i16 %i.hi to i32                   ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1036
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !133, !alias.scope !219
  %i.hm = zext i16 %i.hl to i32                   ; 6 uses
  %i.hn = add nuw nsw i32 %i.hj, %i.hm
  %i.ho = sub nsw i32 32768, %i.hn                ; 5 uses
  %i.hp = load i32, ptr %1, align 8, !tbaa !209, !noalias !219 ; 10 uses
  %i.hq = and i32 %i.he, 4
  %.not212.i = icmp eq i32 %i.hq, 0               ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !210, !noalias !219
  %i.ht = icmp eq i8 %i.hs, 8
  br i1 %i.ht, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !171, !alias.scope !219 ; 2 uses
  %.not218.i = icmp eq ptr %i.hv, null
  br i1 %.not218.i, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !170, !alias.scope !219 ; 4 uses
  %.not219.i = icmp eq ptr %i.hx, null
  br i1 %.not219.i, label %bb.ai, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %.not260.i = icmp eq i32 %i.hp, 0
  br i1 %.not260.i, label %.loopexit.i, label %.lr.ph250.i

.lr.ph250.i:                                      ; preds = %.preheader.i
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 736
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ah, %.lr.ph250.i
  %.0249.i = phi i32 [ 0, %.lr.ph250.i ], [ %.1.i188, %bb.ah ] ; 2 uses
  %.0182248.i = phi ptr [ %i.hb, %.lr.ph250.i ], [ %.1183.i, %bb.ah ] ; 5 uses
  %.0184247.i = phi ptr [ %i.hb, %.lr.ph250.i ], [ %.2186.i, %bb.ah ] ; 3 uses
  %.0187246.i = phi i32 [ 0, %.lr.ph250.i ], [ %i.ji, %bb.ah ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.0182248.i, i64 1
  %i.ia = load i8, ptr %.0182248.i, align 1, !tbaa !29, !noalias !219 ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0182248.i, i64 2
  %i.ic = load i8, ptr %i.hz, align 1, !tbaa !29, !noalias !219 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0182248.i, i64 3 ; 2 uses
  %i.ie = load i8, ptr %i.ib, align 1, !tbaa !29, !noalias !219 ; 2 uses
  %.not222.i = icmp eq i8 %i.ia, %i.ic
  %.not223.i = icmp eq i8 %i.ia, %i.ie
  %or.cond226.i = select i1 %.not222.i, i1 %.not223.i, i1 false
  br i1 %or.cond226.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = zext i8 %i.ia to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !29, !noalias !219
  %i.ii = zext i8 %i.ic to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !29, !noalias !219
  %i.il = zext i8 %i.ie to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !29, !noalias !219
  %i.io = zext i8 %i.ih to i32
  %i.ip = mul nuw nsw i32 %i.io, %i.hj
  %i.iq = zext i8 %i.ik to i32
  %i.ir = mul nuw nsw i32 %i.iq, %i.hm
  %i.is = zext i8 %i.in to i32
  %i.it = mul nsw i32 %i.ho, %i.is
  %i.iu = add nuw nsw i32 %i.ip, 16384
  %i.iv = add nuw nsw i32 %i.iu, %i.ir
  %i.iw = add nsw i32 %i.iv, %i.it
  %i.ix = lshr i32 %i.iw, 15
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29, !noalias !219
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.jb = load ptr, ptr %i.hy, align 8, !tbaa !169, !alias.scope !219 ; 2 uses
  %.not224.i = icmp eq ptr %i.jb, null
  br i1 %.not224.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = zext i8 %i.ia to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !29, !noalias !219
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
end_hunk_0
begin_hunk_1_@png_do_read_transformations:bb.a
  %i.ur = sub nsw i32 6, %.4727892.i
  %i.us = lshr i32 16191, %i.ur
  %i.ut = and i32 %i.us, %i.un
  %i.uu = load i16, ptr %i.tt, align 4, !tbaa !148, !alias.scope !232
  %i.uv = zext i16 %i.uu to i32
  %i.uw = shl i32 %i.uv, %.4727892.i
  %i.ux = or i32 %i.uw, %i.ut
  %i.uy = trunc i32 %i.ux to i8
  store i8 %i.uy, ptr %.4894.i, align 1, !tbaa !29, !noalias !232
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.uz = icmp eq i32 %.4727892.i, 0              ; 2 uses
  %i.va = add nsw i32 %.4727892.i, -2
  %.5728.i = select i1 %i.uz, i32 6, i32 %i.va
  %.5.idx.i = zext i1 %i.uz to i64
  %.5.i204 = getelementptr inbounds nuw i8, ptr %.4894.i, i64 %.5.idx.i
  %i.vb = add nuw i32 %.2704893.i, 1              ; 2 uses
  %exitcond959.not.i = icmp eq i32 %i.vb, %i.sj
  br i1 %exitcond959.not.i, label %png_do_compose.exit, label %bb.bs, !llvm.loop !237

bb.bv:                                            ; preds = %.split.i
  %.not782.i = icmp eq ptr %i.ru, null
  %.not917.i = icmp eq i32 %i.sj, 0               ; 2 uses
  br i1 %.not782.i, label %.preheader797.i, label %.preheader799.i

.preheader799.i:                                  ; preds = %bb.bv
  br i1 %.not917.i, label %png_do_compose.exit, label %.lr.ph883.i

.lr.ph883.i:                                      ; preds = %.preheader799.i
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.vd = load i16, ptr %i.vc, align 8, !tbaa !164, !alias.scope !232
  %i.ve = zext i16 %i.vd to i32
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %bb.bw

.preheader797.i:                                  ; preds = %bb.bv
  br i1 %.not917.i, label %png_do_compose.exit, label %.lr.ph887.i

.lr.ph887.i:                                      ; preds = %.preheader797.i
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.vh = load i16, ptr %i.vg, align 8, !tbaa !164, !alias.scope !232
  %i.vi = zext i16 %i.vh to i32
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bz, %.lr.ph883.i
  %.6882.i = phi ptr [ %i.rs, %.lr.ph883.i ], [ %.7.i201, %bb.bz ] ; 3 uses
  %.3705881.i = phi i32 [ 0, %.lr.ph883.i ], [ %i.wb, %bb.bz ]
  %.6729880.i = phi i32 [ 4, %.lr.ph883.i ], [ %.7730.i, %bb.bz ] ; 5 uses
  %i.vk = load i8, ptr %.6882.i, align 1, !tbaa !29, !noalias !232
  %i.vl = zext i8 %i.vk to i32                    ; 2 uses
  %i.vm = lshr i32 %i.vl, %.6729880.i
  %i.vn = and i32 %i.vm, 15                       ; 2 uses
  %i.vo = icmp eq i32 %i.vn, %i.ve
  br i1 %i.vo, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vp = load i16, ptr %i.vf, align 4, !tbaa !148, !alias.scope !232
  %i.vq = zext i16 %i.vp to i32
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.vr = mul nuw nsw i32 %i.vn, 17
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !29
  %i.vv = lshr i8 %i.vu, 4
  %i.vw = zext nneg i8 %i.vv to i32
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sink1034.i = phi i32 [ %i.vw, %bb.by ], [ %i.vq, %bb.bx ]
  %.pn1037.i = sub nsw i32 4, %.6729880.i
  %.pn.i = lshr i32 3855, %.pn1037.i
  %.sink1033.i = and i32 %.pn.i, %i.vl
  %i.vx = shl i32 %.sink1034.i, %.6729880.i
  %i.vy = or i32 %i.vx, %.sink1033.i
  %storemerge783.i = trunc i32 %i.vy to i8
  store i8 %storemerge783.i, ptr %.6882.i, align 1, !tbaa !29, !noalias !232
  %i.vz = icmp eq i32 %.6729880.i, 0              ; 2 uses
  %i.wa = add nsw i32 %.6729880.i, -4
  %.7730.i = select i1 %i.vz, i32 4, i32 %i.wa
  %.7.idx.i = zext i1 %i.vz to i64
  %.7.i201 = getelementptr inbounds nuw i8, ptr %.6882.i, i64 %.7.idx.i
  %i.wb = add nuw i32 %.3705881.i, 1              ; 2 uses
  %exitcond956.not.i = icmp eq i32 %i.wb, %i.sj
  br i1 %exitcond956.not.i, label %png_do_compose.exit, label %bb.bw, !llvm.loop !238

bb.ca:                                            ; preds = %bb.cc, %.lr.ph887.i
  %.8886.i = phi ptr [ %i.rs, %.lr.ph887.i ], [ %.9.i202, %bb.cc ] ; 3 uses
  %.4706885.i = phi i32 [ 0, %.lr.ph887.i ], [ %i.wr, %bb.cc ]
  %.8731884.i = phi i32 [ 4, %.lr.ph887.i ], [ %.9732.i, %bb.cc ] ; 5 uses
  %i.wc = load i8, ptr %.8886.i, align 1, !tbaa !29, !noalias !232
  %i.wd = zext i8 %i.wc to i32                    ; 2 uses
  %i.we = lshr i32 %i.wd, %.8731884.i
  %i.wf = and i32 %i.we, 15
  %i.wg = icmp eq i32 %i.wf, %i.vi
  br i1 %i.wg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wh = sub nsw i32 4, %.8731884.i
  %i.wi = lshr i32 3855, %i.wh
  %i.wj = and i32 %i.wi, %i.wd
  %i.wk = load i16, ptr %i.vj, align 4, !tbaa !148, !alias.scope !232
  %i.wl = zext i16 %i.wk to i32
  %i.wm = shl i32 %i.wl, %.8731884.i
  %i.wn = or i32 %i.wm, %i.wj
  %i.wo = trunc i32 %i.wn to i8
  store i8 %i.wo, ptr %.8886.i, align 1, !tbaa !29, !noalias !232
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.wp = icmp eq i32 %.8731884.i, 0              ; 2 uses
  %i.wq = add nsw i32 %.8731884.i, -4
  %.9732.i = select i1 %i.wp, i32 4, i32 %i.wq
  %.9.idx.i = zext i1 %i.wp to i64
  %.9.i202 = getelementptr inbounds nuw i8, ptr %.8886.i, i64 %.9.idx.i
  %i.wr = add nuw i32 %.4706885.i, 1              ; 2 uses
  %exitcond957.not.i = icmp eq i32 %i.wr, %i.sj
  br i1 %exitcond957.not.i, label %png_do_compose.exit, label %bb.ca, !llvm.loop !239

bb.cd:                                            ; preds = %.split.i
  %.not780.i = icmp eq ptr %i.ru, null
  %.not915.i = icmp eq i32 %i.sj, 0               ; 2 uses
  br i1 %.not780.i, label %.preheader801.i, label %.preheader803.i

.preheader803.i:                                  ; preds = %bb.cd
  br i1 %.not915.i, label %png_do_compose.exit, label %.lr.ph876.i

.lr.ph876.i:                                      ; preds = %.preheader803.i
  %i.ws = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.wt = load i16, ptr %i.ws, align 8, !tbaa !164, !alias.scope !232 ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter761 = and i32 %i.sj, 1
  %i.wv = icmp eq i32 %i.sj, 1
  br i1 %i.wv, label %.epil.preheader760, label %.lr.ph876.i.new

.lr.ph876.i.new:                                  ; preds = %.lr.ph876.i
  %unroll_iter764 = and i32 %i.sj, -2
  br label %bb.ce

.preheader801.i:                                  ; preds = %bb.cd
  br i1 %.not915.i, label %png_do_compose.exit, label %.lr.ph879.i

.lr.ph879.i:                                      ; preds = %.preheader801.i
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.wx = load i16, ptr %i.ww, align 8, !tbaa !164, !alias.scope !232 ; 3 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter767 = and i32 %i.sj, 1
  %i.wz = icmp eq i32 %i.sj, 1
  br i1 %i.wz, label %.epil.preheader766, label %.lr.ph879.i.new

.lr.ph879.i.new:                                  ; preds = %.lr.ph879.i
  %unroll_iter770 = and i32 %i.sj, -2
  br label %bb.cl

bb.ce:                                            ; preds = %bb.ck, %.lr.ph876.i.new
  %.10875.i = phi ptr [ %i.rs, %.lr.ph876.i.new ], [ %i.xr, %bb.ck ] ; 4 uses
  %niter765 = phi i32 [ 0, %.lr.ph876.i.new ], [ %niter765.next.1, %bb.ck ]
  %i.xa = load i8, ptr %.10875.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.xb = zext i8 %i.xa to i16
  %i.xc = icmp eq i16 %i.wt, %i.xb
  br i1 %i.xc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.xd = load i16, ptr %i.wu, align 4, !tbaa !148, !alias.scope !232
  %i.xe = trunc i16 %i.xd to i8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.xf = zext i8 %i.xa to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !29
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %storemerge781.i = phi i8 [ %i.xh, %bb.cg ], [ %i.xe, %bb.cf ]
  store i8 %storemerge781.i, ptr %.10875.i, align 1, !tbaa !29, !noalias !232
  %i.xi = getelementptr inbounds nuw i8, ptr %.10875.i, i64 1 ; 2 uses
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.xk = zext i8 %i.xj to i16
  %i.xl = icmp eq i16 %i.wt, %i.xk
  br i1 %i.xl, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.xm = zext i8 %i.xj to i64
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.xm
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !29
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.xp = load i16, ptr %i.wu, align 4, !tbaa !148, !alias.scope !232
  %i.xq = trunc i16 %i.xp to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %storemerge781.i.1 = phi i8 [ %i.xo, %bb.ci ], [ %i.xq, %bb.cj ]
  store i8 %storemerge781.i.1, ptr %i.xi, align 1, !tbaa !29, !noalias !232
  %i.xr = getelementptr inbounds nuw i8, ptr %.10875.i, i64 2 ; 2 uses
  %niter765.next.1 = add nuw i32 %niter765, 2     ; 2 uses
  %niter765.ncmp.1 = icmp eq i32 %niter765.next.1, %unroll_iter764
  br i1 %niter765.ncmp.1, label %png_do_compose.exit.loopexit718.unr-lcssa, label %bb.ce, !llvm.loop !240

bb.cl:                                            ; preds = %bb.cp, %.lr.ph879.i.new
  %.11878.i = phi ptr [ %i.rs, %.lr.ph879.i.new ], [ %i.yd, %bb.cp ] ; 4 uses
  %niter771 = phi i32 [ 0, %.lr.ph879.i.new ], [ %niter771.next.1, %bb.cp ]
  %i.xs = load i8, ptr %.11878.i, align 1, !tbaa !29, !noalias !232
  %i.xt = zext i8 %i.xs to i16
  %i.xu = icmp eq i16 %i.wx, %i.xt
  br i1 %i.xu, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xv = load i16, ptr %i.wy, align 4, !tbaa !148, !alias.scope !232
  %i.xw = trunc i16 %i.xv to i8
  store i8 %i.xw, ptr %.11878.i, align 1, !tbaa !29, !noalias !232
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.xx = getelementptr inbounds nuw i8, ptr %.11878.i, i64 1 ; 2 uses
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !29, !noalias !232
  %i.xz = zext i8 %i.xy to i16
  %i.ya = icmp eq i16 %i.wx, %i.xz
  br i1 %i.ya, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.yb = load i16, ptr %i.wy, align 4, !tbaa !148, !alias.scope !232
  %i.yc = trunc i16 %i.yb to i8
  store i8 %i.yc, ptr %i.xx, align 1, !tbaa !29, !noalias !232
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.yd = getelementptr inbounds nuw i8, ptr %.11878.i, i64 2 ; 2 uses
  %niter771.next.1 = add nuw i32 %niter771, 2     ; 2 uses
  %niter771.ncmp.1 = icmp eq i32 %niter771.next.1, %unroll_iter770
  br i1 %niter771.ncmp.1, label %png_do_compose.exit.loopexit717.unr-lcssa, label %bb.cl, !llvm.loop !241

bb.cq:                                            ; preds = %.split.i
  %.not777.i = icmp eq ptr %i.sa, null
  %.not913.i = icmp eq i32 %i.sj, 0               ; 2 uses
  br i1 %.not777.i, label %.preheader805.i, label %.preheader807.i

.preheader807.i:                                  ; preds = %bb.cq
  br i1 %.not913.i, label %png_do_compose.exit, label %.lr.ph870.i

.lr.ph870.i:                                      ; preds = %.preheader807.i
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.yf = load i16, ptr %i.ye, align 8, !tbaa !164, !alias.scope !232
  %i.yg = zext i16 %i.yf to i32
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 652
  br label %bb.cr

.preheader805.i:                                  ; preds = %bb.cq
  br i1 %.not913.i, label %png_do_compose.exit, label %.lr.ph873.i

.lr.ph873.i:                                      ; preds = %.preheader805.i
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.yj = load i16, ptr %i.yi, align 8, !tbaa !164, !alias.scope !232
  %i.yk = zext i16 %i.yj to i32                   ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 3 uses
  %xtraiter755 = and i32 %i.sj, 1
  %i.ym = icmp eq i32 %i.sj, 1
  br i1 %i.ym, label %.epil.preheader, label %.lr.ph873.i.new

.lr.ph873.i.new:                                  ; preds = %.lr.ph873.i
  %unroll_iter758 = and i32 %i.sj, -2
  br label %bb.cu

bb.cr:                                            ; preds = %bb.ct, %.lr.ph870.i
  %.12869.i = phi ptr [ %i.rs, %.lr.ph870.i ], [ %i.zc, %bb.ct ] ; 4 uses
  %.7709868.i = phi i32 [ 0, %.lr.ph870.i ], [ %i.zb, %bb.ct ]
  %i.yn = load i8, ptr %.12869.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.yo = zext i8 %i.yn to i32
  %i.yp = shl nuw nsw i32 %i.yo, 8
  %i.yq = getelementptr inbounds nuw i8, ptr %.12869.i, i64 1 ; 2 uses
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !29, !noalias !232
  %i.ys = zext i8 %i.yr to i32                    ; 2 uses
  %i.yt = or disjoint i32 %i.yp, %i.ys
  %i.yu = icmp eq i32 %i.yt, %i.yg
  br i1 %i.yu, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yv = lshr i32 %i.ys, %i.sg
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.sa, i64 %i.yw
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !228
  %i.yz = zext i8 %i.yn to i64
  %i.za = getelementptr inbounds nuw [2 x i8], ptr %i.yy, i64 %i.yz
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %storemerge778.in.in.i = phi ptr [ %i.za, %bb.cs ], [ %i.yh, %bb.cr ]
  %storemerge778.in.i = load i16, ptr %storemerge778.in.in.i, align 2, !tbaa !30 ; 2 uses
  %storemerge779.in.i = lshr i16 %storemerge778.in.i, 8
  %storemerge779.i = trunc nuw i16 %storemerge779.in.i to i8
  store i8 %storemerge779.i, ptr %.12869.i, align 1, !tbaa !29, !noalias !232
  %storemerge778.i = trunc i16 %storemerge778.in.i to i8
  store i8 %storemerge778.i, ptr %i.yq, align 1, !tbaa !29, !noalias !232
  %i.zb = add nuw i32 %.7709868.i, 1              ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.12869.i, i64 2
  %exitcond952.not.i = icmp eq i32 %i.zb, %i.sj
  br i1 %exitcond952.not.i, label %png_do_compose.exit, label %bb.cr, !llvm.loop !242

bb.cu:                                            ; preds = %bb.cy, %.lr.ph873.i.new
  %.13872.i = phi ptr [ %i.rs, %.lr.ph873.i.new ], [ %i.aac, %bb.cy ] ; 6 uses
  %niter759 = phi i32 [ 0, %.lr.ph873.i.new ], [ %niter759.next.1, %bb.cy ]
  %i.zd = load i8, ptr %.13872.i, align 1, !tbaa !29, !noalias !232
  %i.ze = zext i8 %i.zd to i32
  %i.zf = shl nuw nsw i32 %i.ze, 8
  %i.zg = getelementptr inbounds nuw i8, ptr %.13872.i, i64 1 ; 2 uses
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !29, !noalias !232
  %i.zi = zext i8 %i.zh to i32
  %i.zj = or disjoint i32 %i.zf, %i.zi
  %i.zk = icmp eq i32 %i.zj, %i.yk
  br i1 %i.zk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.zl = load i16, ptr %i.yl, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %i.zm = lshr i16 %i.zl, 8
  %i.zn = trunc nuw i16 %i.zm to i8
  store i8 %i.zn, ptr %.13872.i, align 1, !tbaa !29, !noalias !232
  %i.zo = trunc i16 %i.zl to i8
  store i8 %i.zo, ptr %i.zg, align 1, !tbaa !29, !noalias !232
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.zp = getelementptr inbounds nuw i8, ptr %.13872.i, i64 2 ; 2 uses
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !29, !noalias !232
  %i.zr = zext i8 %i.zq to i32
  %i.zs = shl nuw nsw i32 %i.zr, 8
  %i.zt = getelementptr inbounds nuw i8, ptr %.13872.i, i64 3 ; 2 uses
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !29, !noalias !232
  %i.zv = zext i8 %i.zu to i32
  %i.zw = or disjoint i32 %i.zs, %i.zv
  %i.zx = icmp eq i32 %i.zw, %i.yk
  br i1 %i.zx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.zy = load i16, ptr %i.yl, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %i.zz = lshr i16 %i.zy, 8
  %i.aaa = trunc nuw i16 %i.zz to i8
  store i8 %i.aaa, ptr %i.zp, align 1, !tbaa !29, !noalias !232
  %i.aab = trunc i16 %i.zy to i8
  store i8 %i.aab, ptr %i.zt, align 1, !tbaa !29, !noalias !232
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.aac = getelementptr inbounds nuw i8, ptr %.13872.i, i64 4 ; 2 uses
  %niter759.next.1 = add nuw i32 %niter759, 2     ; 2 uses
  %niter759.ncmp.1 = icmp eq i32 %niter759.next.1, %unroll_iter758
  br i1 %niter759.ncmp.1, label %png_do_compose.exit.loopexit719.unr-lcssa, label %bb.cu, !llvm.loop !243

bb.cz:                                            ; preds = %bb.bi
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !210, !noalias !232
  %i.aaf = icmp eq i8 %i.aae, 8
  %.not911.i = icmp eq i32 %i.sj, 0               ; 4 uses
  br i1 %i.aaf, label %bb.da, label %bb.dl

bb.da:                                            ; preds = %bb.cz
  %.not776.i = icmp eq ptr %i.ru, null
  br i1 %.not776.i, label %.preheader809.i, label %.preheader811.i

.preheader811.i:                                  ; preds = %bb.da
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph864.i

.lr.ph864.i:                                      ; preds = %.preheader811.i
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !168, !alias.scope !232
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.db

.preheader809.i:                                  ; preds = %bb.da
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %.preheader809.i
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !168, !alias.scope !232
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.dg

bb.db:                                            ; preds = %bb.df, %.lr.ph864.i
  %.14863.i = phi ptr [ %i.rs, %.lr.ph864.i ], [ %i.abz, %bb.df ] ; 7 uses
  %.9711862.i = phi i32 [ 0, %.lr.ph864.i ], [ %i.aby, %bb.df ]
  %i.aau = load i8, ptr %.14863.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.aav = zext i8 %i.aau to i16
  %i.aaw = icmp eq i16 %i.aah, %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %.14863.i, i64 1 ; 3 uses
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !29, !noalias !232 ; 2 uses
  br i1 %i.aaw, label %bb.dc, label %._crit_edge.i200

bb.dc:                                            ; preds = %bb.db
  %i.aaz = load i16, ptr %i.aai, align 4, !tbaa !167, !alias.scope !232
  %i.aba = zext i8 %i.aay to i16
  %i.abb = icmp eq i16 %i.aaz, %i.aba
  br i1 %i.abb, label %bb.dd, label %._crit_edge.i200

bb.dd:                                            ; preds = %bb.dc
  %i.abc = getelementptr inbounds nuw i8, ptr %.14863.i, i64 2 ; 2 uses
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !29, !noalias !232
  %i.abe = load i16, ptr %i.aaj, align 2, !tbaa !166, !alias.scope !232
  %i.abf = zext i8 %i.abd to i16
  %i.abg = icmp eq i16 %i.abe, %i.abf
  br i1 %i.abg, label %bb.de, label %._crit_edge.i200

bb.de:                                            ; preds = %bb.dd
  %i.abh = load i16, ptr %i.aak, align 2, !tbaa !145, !alias.scope !232
  %i.abi = trunc i16 %i.abh to i8
  store i8 %i.abi, ptr %.14863.i, align 1, !tbaa !29, !noalias !232
  %i.abj = load i16, ptr %i.aal, align 8, !tbaa !146, !alias.scope !232
  %i.abk = trunc i16 %i.abj to i8
  store i8 %i.abk, ptr %i.aax, align 1, !tbaa !29, !noalias !232
  %i.abl = load i16, ptr %i.aam, align 2, !tbaa !147, !alias.scope !232
  %i.abm = trunc i16 %i.abl to i8
  store i8 %i.abm, ptr %i.abc, align 1, !tbaa !29, !noalias !232
  br label %bb.df

._crit_edge.i200:                                 ; preds = %bb.dd, %bb.dc, %bb.db
  %i.abn = zext i8 %i.aau to i64
  %i.abo = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !29
  store i8 %i.abp, ptr %.14863.i, align 1, !tbaa !29, !noalias !232
  %i.abq = zext i8 %i.aay to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.abq
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !29
  store i8 %i.abs, ptr %i.aax, align 1, !tbaa !29, !noalias !232
  %i.abt = getelementptr inbounds nuw i8, ptr %.14863.i, i64 2 ; 2 uses
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !29, !noalias !232
  %i.abv = zext i8 %i.abu to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !29
  store i8 %i.abx, ptr %i.abt, align 1, !tbaa !29, !noalias !232
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge.i200, %bb.de
  %i.aby = add nuw i32 %.9711862.i, 1             ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.14863.i, i64 3
  %exitcond950.not.i = icmp eq i32 %i.aby, %i.sj
  br i1 %exitcond950.not.i, label %png_do_compose.exit, label %bb.db, !llvm.loop !244

bb.dg:                                            ; preds = %bb.dk, %.lr.ph867.i
  %.15866.i = phi ptr [ %i.rs, %.lr.ph867.i ], [ %i.acu, %bb.dk ] ; 5 uses
  %.10712865.i = phi i32 [ 0, %.lr.ph867.i ], [ %i.act, %bb.dk ]
  %i.aca = load i8, ptr %.15866.i, align 1, !tbaa !29, !noalias !232
  %i.acb = zext i8 %i.aca to i16
  %i.acc = icmp eq i16 %i.aao, %i.acb
  br i1 %i.acc, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.acd = getelementptr inbounds nuw i8, ptr %.15866.i, i64 1 ; 2 uses
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !29, !noalias !232
  %i.acf = load i16, ptr %i.aap, align 4, !tbaa !167, !alias.scope !232
  %i.acg = zext i8 %i.ace to i16
  %i.ach = icmp eq i16 %i.acf, %i.acg
  br i1 %i.ach, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.aci = getelementptr inbounds nuw i8, ptr %.15866.i, i64 2 ; 2 uses
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !29, !noalias !232
  %i.ack = load i16, ptr %i.aaq, align 2, !tbaa !166, !alias.scope !232
  %i.acl = zext i8 %i.acj to i16
  %i.acm = icmp eq i16 %i.ack, %i.acl
  br i1 %i.acm, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.acn = load i16, ptr %i.aar, align 2, !tbaa !145, !alias.scope !232
  %i.aco = trunc i16 %i.acn to i8
  store i8 %i.aco, ptr %.15866.i, align 1, !tbaa !29, !noalias !232
  %i.acp = load i16, ptr %i.aas, align 8, !tbaa !146, !alias.scope !232
  %i.acq = trunc i16 %i.acp to i8
  store i8 %i.acq, ptr %i.acd, align 1, !tbaa !29, !noalias !232
  %i.acr = load i16, ptr %i.aat, align 2, !tbaa !147, !alias.scope !232
  %i.acs = trunc i16 %i.acr to i8
  store i8 %i.acs, ptr %i.aci, align 1, !tbaa !29, !noalias !232
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %i.act = add nuw i32 %.10712865.i, 1            ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.15866.i, i64 3
  %exitcond951.not.i = icmp eq i32 %i.act, %i.sj
  br i1 %exitcond951.not.i, label %png_do_compose.exit, label %bb.dg, !llvm.loop !245

bb.dl:                                            ; preds = %bb.cz
  %.not774.i = icmp eq ptr %i.sa, null
  br i1 %.not774.i, label %.preheader813.i, label %.preheader815.i

.preheader815.i:                                  ; preds = %bb.dl
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph858.i

.lr.ph858.i:                                      ; preds = %.preheader815.i
  %i.acv = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !168, !alias.scope !232
  %i.acx = zext i16 %i.acw to i32
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.dm

.preheader813.i:                                  ; preds = %bb.dl
  br i1 %.not911.i, label %png_do_compose.exit, label %.lr.ph861.i

.lr.ph861.i:                                      ; preds = %.preheader813.i
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 810
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !168, !alias.scope !232
  %i.adf = zext i16 %i.ade to i32
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 812
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 814
  %i.adi = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 650
  br label %bb.ds

bb.dm:                                            ; preds = %bb.dr, %.lr.ph858.i
  %.16857.i = phi ptr [ %i.rs, %.lr.ph858.i ], [ %i.afw, %bb.dr ] ; 9 uses
  %.11713856.i = phi i32 [ 0, %.lr.ph858.i ], [ %i.afv, %bb.dr ]
  %i.adl = load i8, ptr %.16857.i, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.adm = zext i8 %i.adl to i32
  %i.adn = shl nuw nsw i32 %i.adm, 8
  %i.ado = getelementptr inbounds nuw i8, ptr %.16857.i, i64 1 ; 3 uses
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !29, !noalias !232
  %i.adq = zext i8 %i.adp to i32                  ; 2 uses
  %i.adr = or disjoint i32 %i.adn, %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %.16857.i, i64 2 ; 3 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.16857.i, i64 3 ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.16857.i, i64 4 ; 2 uses
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.adw = zext i8 %i.adv to i32
  %i.adx = shl nuw nsw i32 %i.adw, 8
  %i.ady = getelementptr inbounds nuw i8, ptr %.16857.i, i64 5 ; 2 uses
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !29, !noalias !232
  %i.aea = zext i8 %i.adz to i32                  ; 2 uses
  %i.aeb = or disjoint i32 %i.adx, %i.aea
  %i.aec = icmp eq i32 %i.adr, %i.acx
  %.pre.i197 = load i8, ptr %i.adt, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %.pre961.i = load i8, ptr %i.ads, align 1, !tbaa !29, !noalias !232 ; 2 uses
  br i1 %i.aec, label %bb.dn, label %._crit_edge963.i

._crit_edge963.i:                                 ; preds = %bb.dm
  %.pre964.i = zext i8 %.pre.i197 to i32
end_hunk_1
begin_hunk_2_@png_do_read_transformations:bb.a
  br i1 %lcmp.mod768.not, label %png_do_compose.exit, label %.epil.preheader766

.epil.preheader766:                               ; preds = %png_do_compose.exit.loopexit717.unr-lcssa, %.lr.ph879.i
  %.11878.i.epil.init = phi ptr [ %i.rs, %.lr.ph879.i ], [ %i.yd, %png_do_compose.exit.loopexit717.unr-lcssa ] ; 2 uses
  %lcmp.mod769 = trunc i32 %i.sj to i1
  tail call void @llvm.assume(i1 %lcmp.mod769)
  %i.beo = load i8, ptr %.11878.i.epil.init, align 1, !tbaa !29, !noalias !232
  %i.bep = zext i8 %i.beo to i16
  %i.beq = icmp eq i16 %i.wx, %i.bep
  br i1 %i.beq, label %bb.gc, label %png_do_compose.exit

bb.gc:                                            ; preds = %.epil.preheader766
  %i.ber = load i16, ptr %i.wy, align 4, !tbaa !148, !alias.scope !232
  %i.bes = trunc i16 %i.ber to i8
  store i8 %i.bes, ptr %.11878.i.epil.init, align 1, !tbaa !29, !noalias !232
  br label %png_do_compose.exit

png_do_compose.exit.loopexit718.unr-lcssa:        ; preds = %bb.ck
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %png_do_compose.exit, label %.epil.preheader760

.epil.preheader760:                               ; preds = %png_do_compose.exit.loopexit718.unr-lcssa, %.lr.ph876.i
  %.10875.i.epil.init = phi ptr [ %i.rs, %.lr.ph876.i ], [ %i.xr, %png_do_compose.exit.loopexit718.unr-lcssa ] ; 2 uses
  %lcmp.mod763 = trunc i32 %i.sj to i1
  tail call void @llvm.assume(i1 %lcmp.mod763)
  %i.bet = load i8, ptr %.10875.i.epil.init, align 1, !tbaa !29, !noalias !232 ; 2 uses
  %i.beu = zext i8 %i.bet to i16
  %i.bev = icmp eq i16 %i.wt, %i.beu
  br i1 %i.bev, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.epil.preheader760
  %i.bew = zext i8 %i.bet to i64
  %i.bex = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.bew
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !29
  br label %png_do_compose.exit.loopexit718.epilog-lcssa

bb.ge:                                            ; preds = %.epil.preheader760
  %i.bez = load i16, ptr %i.wu, align 4, !tbaa !148, !alias.scope !232
  %i.bfa = trunc i16 %i.bez to i8
  br label %png_do_compose.exit.loopexit718.epilog-lcssa

png_do_compose.exit.loopexit718.epilog-lcssa:     ; preds = %bb.ge, %bb.gd
  %storemerge781.i.epil = phi i8 [ %i.bey, %bb.gd ], [ %i.bfa, %bb.ge ]
  store i8 %storemerge781.i.epil, ptr %.10875.i.epil.init, align 1, !tbaa !29, !noalias !232
  br label %png_do_compose.exit

png_do_compose.exit.loopexit719.unr-lcssa:        ; preds = %bb.cy
  %lcmp.mod756.not = icmp eq i32 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %png_do_compose.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %png_do_compose.exit.loopexit719.unr-lcssa, %.lr.ph873.i
  %.13872.i.epil.init = phi ptr [ %i.rs, %.lr.ph873.i ], [ %i.aac, %png_do_compose.exit.loopexit719.unr-lcssa ] ; 3 uses
  %lcmp.mod757 = trunc i32 %i.sj to i1
  tail call void @llvm.assume(i1 %lcmp.mod757)
  %i.bfb = load i8, ptr %.13872.i.epil.init, align 1, !tbaa !29, !noalias !232
  %i.bfc = zext i8 %i.bfb to i32
  %i.bfd = shl nuw nsw i32 %i.bfc, 8
  %i.bfe = getelementptr inbounds nuw i8, ptr %.13872.i.epil.init, i64 1 ; 2 uses
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !29, !noalias !232
  %i.bfg = zext i8 %i.bff to i32
  %i.bfh = or disjoint i32 %i.bfd, %i.bfg
  %i.bfi = icmp eq i32 %i.bfh, %i.yk
  br i1 %i.bfi, label %bb.gf, label %png_do_compose.exit

bb.gf:                                            ; preds = %.epil.preheader
  %i.bfj = load i16, ptr %i.yl, align 4, !tbaa !148, !alias.scope !232 ; 2 uses
  %i.bfk = lshr i16 %i.bfj, 8
  %i.bfl = trunc nuw i16 %i.bfk to i8
  store i8 %i.bfl, ptr %.13872.i.epil.init, align 1, !tbaa !29, !noalias !232
  %i.bfm = trunc i16 %i.bfj to i8
  store i8 %i.bfm, ptr %i.bfe, align 1, !tbaa !29, !noalias !232
  br label %png_do_compose.exit

png_do_compose.exit:                              ; preds = %bb.gb, %bb.fx, %bb.fl, %bb.fh, %bb.eu, %bb.eq, %bb.ei, %bb.ee, %bb.dr, %bb.dw, %bb.df, %bb.dk, %bb.ct, %png_do_compose.exit.loopexit719.unr-lcssa, %bb.gf, %.epil.preheader, %png_do_compose.exit.loopexit718.epilog-lcssa, %png_do_compose.exit.loopexit718.unr-lcssa, %png_do_compose.exit.loopexit717.unr-lcssa, %bb.gc, %.epil.preheader766, %bb.bz, %bb.cc, %bb.br, %bb.bu, %bb.bm, %.preheader829.i, %.preheader831.i, %.preheader825.i, %.preheader827.i, %.preheader821.i, %.preheader823.i, %.preheader817.i, %.preheader819.i, %.preheader813.i, %.preheader815.i, %.preheader809.i, %.preheader811.i, %.preheader805.i, %.preheader807.i, %.preheader801.i, %.preheader803.i, %.preheader797.i, %.preheader799.i, %.preheader793.i, %.preheader795.i, %.preheader.i205, %.split.i, %bb.bj, %bb.bi, %bb.bh
  %i.bfn = load i32, ptr %i.h, align 4, !tbaa !27 ; 2 uses
  %i.bfo = and i32 %i.bfn, 6299648
  %or.cond181 = icmp eq i32 %i.bfo, 8192
  br i1 %or.cond181, label %bb.gg, label %png_do_gamma.exit

bb.gg:                                            ; preds = %png_do_compose.exit
  %i.bfp = and i32 %i.bfn, 128
  %.not149 = icmp eq i32 %i.bfp, 0
  br i1 %.not149, label %._crit_edge, label %bb.gh

._crit_edge:                                      ; preds = %bb.gg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 623
  %.pre400 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !131
  br label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.bfr = load i16, ptr %i.bfq, align 8, !tbaa !144
  %.not150 = icmp eq i16 %i.bfr, 0
  br i1 %.not150, label %bb.gi, label %png_do_gamma.exit

bb.gi:                                            ; preds = %bb.gh
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.bft = load i8, ptr %i.bfs, align 1, !tbaa !131 ; 2 uses
  %i.bfu = and i8 %i.bft, 4
  %.not151 = icmp eq i8 %i.bfu, 0
  br i1 %.not151, label %bb.gj, label %png_do_gamma.exit

bb.gj:                                            ; preds = %._crit_edge, %bb.gi
  %i.bfv = phi i8 [ %.pre400, %._crit_edge ], [ %i.bft, %bb.gi ]
  %.not152 = icmp eq i8 %i.bfv, 3
  br i1 %.not152, label %png_do_gamma.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bfw = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 1 ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !169, !alias.scope !256 ; 39 uses
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !226, !alias.scope !256 ; 13 uses
  %i.bgc = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bgd = load i32, ptr %i.bgc, align 8, !tbaa !227, !alias.scope !256 ; 12 uses
  %i.bge = load i32, ptr %1, align 8, !tbaa !209, !noalias !256 ; 33 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !210, !noalias !256 ; 7 uses
  %i.bgh = icmp ult i8 %i.bgg, 9
  %i.bgi = icmp ne ptr %i.bfz, null
  %or.cond.i207 = select i1 %i.bgh, i1 %i.bgi, i1 false
  br i1 %or.cond.i207, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.bgj = icmp eq i8 %i.bgg, 16
  %i.bgk = icmp ne ptr %i.bgb, null
  %or.cond3.i208 = select i1 %i.bgj, i1 %i.bgk, i1 false
  br i1 %or.cond3.i208, label %bb.gm, label %png_do_gamma.exit

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.bgl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bgm = load i8, ptr %i.bgl, align 8, !tbaa !207, !noalias !256
  switch i8 %i.bgm, label %png_do_gamma.exit [
    i8 2, label %bb.gn
    i8 6, label %bb.go
    i8 4, label %bb.gp
    i8 0, label %bb.gq
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.bgn = icmp eq i8 %i.bgg, 8
  %.not265.i = icmp eq i32 %i.bge, 0              ; 2 uses
  br i1 %i.bgn, label %.preheader.i219, label %.preheader210.i

.preheader210.i:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph253.i

.preheader.i219:                                  ; preds = %bb.gn
  br i1 %.not265.i, label %png_do_gamma.exit, label %.lr.ph256.i220.preheader

.lr.ph256.i220.preheader:                         ; preds = %.preheader.i219
  %xtraiter806 = and i32 %i.bge, 1
  %i.bgo = icmp eq i32 %i.bge, 1
  br i1 %i.bgo, label %.lr.ph256.i220.epil.preheader, label %.lr.ph256.i220.preheader.new

.lr.ph256.i220.preheader.new:                     ; preds = %.lr.ph256.i220.preheader
  %unroll_iter810 = and i32 %i.bge, -2
  br label %.lr.ph256.i220

.lr.ph256.i220:                                   ; preds = %.lr.ph256.i220, %.lr.ph256.i220.preheader.new
  %.0255.i = phi ptr [ %i.bfx, %.lr.ph256.i220.preheader.new ], [ %i.bhs, %.lr.ph256.i220 ] ; 8 uses
  %niter811 = phi i32 [ 0, %.lr.ph256.i220.preheader.new ], [ %niter811.next.1, %.lr.ph256.i220 ]
  %i.bgp = load i8, ptr %.0255.i, align 1, !tbaa !29, !noalias !256
  %i.bgq = zext i8 %i.bgp to i64
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bgq
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !29, !noalias !256
  store i8 %i.bgs, ptr %.0255.i, align 1, !tbaa !29, !noalias !256
  %i.bgt = getelementptr inbounds nuw i8, ptr %.0255.i, i64 1 ; 2 uses
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !29, !noalias !256
  %i.bgv = zext i8 %i.bgu to i64
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bgv
  %i.bgx = load i8, ptr %i.bgw, align 1, !tbaa !29, !noalias !256
  store i8 %i.bgx, ptr %i.bgt, align 1, !tbaa !29, !noalias !256
  %i.bgy = getelementptr inbounds nuw i8, ptr %.0255.i, i64 2 ; 2 uses
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !29, !noalias !256
  %i.bha = zext i8 %i.bgz to i64
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bha
  %i.bhc = load i8, ptr %i.bhb, align 1, !tbaa !29, !noalias !256
  store i8 %i.bhc, ptr %i.bgy, align 1, !tbaa !29, !noalias !256
  %i.bhd = getelementptr inbounds nuw i8, ptr %.0255.i, i64 3 ; 2 uses
  %i.bhe = load i8, ptr %i.bhd, align 1, !tbaa !29, !noalias !256
  %i.bhf = zext i8 %i.bhe to i64
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bhf
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !29, !noalias !256
  store i8 %i.bhh, ptr %i.bhd, align 1, !tbaa !29, !noalias !256
  %i.bhi = getelementptr inbounds nuw i8, ptr %.0255.i, i64 4 ; 2 uses
  %i.bhj = load i8, ptr %i.bhi, align 1, !tbaa !29, !noalias !256
  %i.bhk = zext i8 %i.bhj to i64
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bhk
  %i.bhm = load i8, ptr %i.bhl, align 1, !tbaa !29, !noalias !256
  store i8 %i.bhm, ptr %i.bhi, align 1, !tbaa !29, !noalias !256
  %i.bhn = getelementptr inbounds nuw i8, ptr %.0255.i, i64 5 ; 2 uses
  %i.bho = load i8, ptr %i.bhn, align 1, !tbaa !29, !noalias !256
  %i.bhp = zext i8 %i.bho to i64
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bhp
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !29, !noalias !256
  store i8 %i.bhr, ptr %i.bhn, align 1, !tbaa !29, !noalias !256
  %i.bhs = getelementptr inbounds nuw i8, ptr %.0255.i, i64 6 ; 2 uses
  %niter811.next.1 = add nuw i32 %niter811, 2     ; 2 uses
  %niter811.ncmp.1 = icmp eq i32 %niter811.next.1, %unroll_iter810
  br i1 %niter811.ncmp.1, label %png_do_gamma.exit.loopexit.unr-lcssa, label %.lr.ph256.i220, !llvm.loop !259

.lr.ph253.i:                                      ; preds = %.preheader210.i, %.lr.ph253.i
  %.1252.i = phi ptr [ %i.bjl, %.lr.ph253.i ], [ %i.bfx, %.preheader210.i ] ; 8 uses
  %.1200251.i = phi i32 [ %i.bjm, %.lr.ph253.i ], [ 0, %.preheader210.i ]
  %i.bht = getelementptr inbounds nuw i8, ptr %.1252.i, i64 1 ; 2 uses
  %i.bhu = load i8, ptr %i.bht, align 1, !tbaa !29, !noalias !256
  %i.bhv = zext i8 %i.bhu to i32
  %i.bhw = lshr i32 %i.bhv, %i.bgd
  %i.bhx = zext nneg i32 %i.bhw to i64
  %i.bhy = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bhx
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !228, !noalias !256
  %i.bia = load i8, ptr %.1252.i, align 1, !tbaa !29, !noalias !256
  %i.bib = zext i8 %i.bia to i64
  %i.bic = getelementptr inbounds nuw [2 x i8], ptr %i.bhz, i64 %i.bib
  %i.bid = load i16, ptr %i.bic, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bie = lshr i16 %i.bid, 8
  %i.bif = trunc nuw i16 %i.bie to i8
  store i8 %i.bif, ptr %.1252.i, align 1, !tbaa !29, !noalias !256
  %i.big = trunc i16 %i.bid to i8
  store i8 %i.big, ptr %i.bht, align 1, !tbaa !29, !noalias !256
  %i.bih = getelementptr inbounds nuw i8, ptr %.1252.i, i64 2 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %.1252.i, i64 3 ; 2 uses
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !29, !noalias !256
  %i.bik = zext i8 %i.bij to i32
  %i.bil = lshr i32 %i.bik, %i.bgd
  %i.bim = zext nneg i32 %i.bil to i64
  %i.bin = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bim
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !228, !noalias !256
  %i.bip = load i8, ptr %i.bih, align 1, !tbaa !29, !noalias !256
  %i.biq = zext i8 %i.bip to i64
  %i.bir = getelementptr inbounds nuw [2 x i8], ptr %i.bio, i64 %i.biq
  %i.bis = load i16, ptr %i.bir, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bit = lshr i16 %i.bis, 8
  %i.biu = trunc nuw i16 %i.bit to i8
  store i8 %i.biu, ptr %i.bih, align 1, !tbaa !29, !noalias !256
  %i.biv = trunc i16 %i.bis to i8
  store i8 %i.biv, ptr %i.bii, align 1, !tbaa !29, !noalias !256
  %i.biw = getelementptr inbounds nuw i8, ptr %.1252.i, i64 4 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %.1252.i, i64 5 ; 2 uses
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !29, !noalias !256
  %i.biz = zext i8 %i.biy to i32
  %i.bja = lshr i32 %i.biz, %i.bgd
  %i.bjb = zext nneg i32 %i.bja to i64
  %i.bjc = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bjb
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !228, !noalias !256
  %i.bje = load i8, ptr %i.biw, align 1, !tbaa !29, !noalias !256
  %i.bjf = zext i8 %i.bje to i64
  %i.bjg = getelementptr inbounds nuw [2 x i8], ptr %i.bjd, i64 %i.bjf
  %i.bjh = load i16, ptr %i.bjg, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bji = lshr i16 %i.bjh, 8
  %i.bjj = trunc nuw i16 %i.bji to i8
  store i8 %i.bjj, ptr %i.biw, align 1, !tbaa !29, !noalias !256
  %i.bjk = trunc i16 %i.bjh to i8
  store i8 %i.bjk, ptr %i.bix, align 1, !tbaa !29, !noalias !256
  %i.bjl = getelementptr inbounds nuw i8, ptr %.1252.i, i64 6
  %i.bjm = add nuw i32 %.1200251.i, 1             ; 2 uses
  %exitcond279.not.i = icmp eq i32 %i.bjm, %i.bge
  br i1 %exitcond279.not.i, label %png_do_gamma.exit, label %.lr.ph253.i, !llvm.loop !260

bb.go:                                            ; preds = %bb.gm
  %i.bjn = icmp eq i8 %i.bgg, 8
  %.not263.i = icmp eq i32 %i.bge, 0              ; 2 uses
  br i1 %i.bjn, label %.preheader212.i, label %.preheader214.i

.preheader214.i:                                  ; preds = %bb.go
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph247.i

.preheader212.i:                                  ; preds = %bb.go
  br i1 %.not263.i, label %png_do_gamma.exit, label %.lr.ph250.i218.preheader

.lr.ph250.i218.preheader:                         ; preds = %.preheader212.i
  %xtraiter800 = and i32 %i.bge, 1
  %i.bjo = icmp eq i32 %i.bge, 1
  br i1 %i.bjo, label %.lr.ph250.i218.epil.preheader, label %.lr.ph250.i218.preheader.new

.lr.ph250.i218.preheader.new:                     ; preds = %.lr.ph250.i218.preheader
  %unroll_iter804 = and i32 %i.bge, -2
  br label %.lr.ph250.i218

.lr.ph250.i218:                                   ; preds = %.lr.ph250.i218, %.lr.ph250.i218.preheader.new
  %.2249.i = phi ptr [ %i.bfx, %.lr.ph250.i218.preheader.new ], [ %i.bks, %.lr.ph250.i218 ] ; 8 uses
  %niter805 = phi i32 [ 0, %.lr.ph250.i218.preheader.new ], [ %niter805.next.1, %.lr.ph250.i218 ]
  %i.bjp = load i8, ptr %.2249.i, align 1, !tbaa !29, !noalias !256
  %i.bjq = zext i8 %i.bjp to i64
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bjq
  %i.bjs = load i8, ptr %i.bjr, align 1, !tbaa !29, !noalias !256
  store i8 %i.bjs, ptr %.2249.i, align 1, !tbaa !29, !noalias !256
  %i.bjt = getelementptr inbounds nuw i8, ptr %.2249.i, i64 1 ; 2 uses
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !29, !noalias !256
  %i.bjv = zext i8 %i.bju to i64
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bjv
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !29, !noalias !256
  store i8 %i.bjx, ptr %i.bjt, align 1, !tbaa !29, !noalias !256
  %i.bjy = getelementptr inbounds nuw i8, ptr %.2249.i, i64 2 ; 2 uses
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !29, !noalias !256
  %i.bka = zext i8 %i.bjz to i64
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bka
  %i.bkc = load i8, ptr %i.bkb, align 1, !tbaa !29, !noalias !256
  store i8 %i.bkc, ptr %i.bjy, align 1, !tbaa !29, !noalias !256
  %i.bkd = getelementptr inbounds nuw i8, ptr %.2249.i, i64 4 ; 2 uses
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !29, !noalias !256
  %i.bkf = zext i8 %i.bke to i64
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bkf
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !29, !noalias !256
  store i8 %i.bkh, ptr %i.bkd, align 1, !tbaa !29, !noalias !256
  %i.bki = getelementptr inbounds nuw i8, ptr %.2249.i, i64 5 ; 2 uses
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !29, !noalias !256
  %i.bkk = zext i8 %i.bkj to i64
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bkk
  %i.bkm = load i8, ptr %i.bkl, align 1, !tbaa !29, !noalias !256
  store i8 %i.bkm, ptr %i.bki, align 1, !tbaa !29, !noalias !256
  %i.bkn = getelementptr inbounds nuw i8, ptr %.2249.i, i64 6 ; 2 uses
  %i.bko = load i8, ptr %i.bkn, align 1, !tbaa !29, !noalias !256
  %i.bkp = zext i8 %i.bko to i64
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bkp
  %i.bkr = load i8, ptr %i.bkq, align 1, !tbaa !29, !noalias !256
  store i8 %i.bkr, ptr %i.bkn, align 1, !tbaa !29, !noalias !256
  %i.bks = getelementptr inbounds nuw i8, ptr %.2249.i, i64 8 ; 2 uses
  %niter805.next.1 = add nuw i32 %niter805, 2     ; 2 uses
  %niter805.ncmp.1 = icmp eq i32 %niter805.next.1, %unroll_iter804
  br i1 %niter805.ncmp.1, label %png_do_gamma.exit.loopexit706.unr-lcssa, label %.lr.ph250.i218, !llvm.loop !261

.lr.ph247.i:                                      ; preds = %.preheader214.i, %.lr.ph247.i
  %.3246.i = phi ptr [ %i.bml, %.lr.ph247.i ], [ %i.bfx, %.preheader214.i ] ; 8 uses
  %.3202245.i = phi i32 [ %i.bmm, %.lr.ph247.i ], [ 0, %.preheader214.i ]
  %i.bkt = getelementptr inbounds nuw i8, ptr %.3246.i, i64 1 ; 2 uses
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !29, !noalias !256
  %i.bkv = zext i8 %i.bku to i32
  %i.bkw = lshr i32 %i.bkv, %i.bgd
  %i.bkx = zext nneg i32 %i.bkw to i64
  %i.bky = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bkx
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !228, !noalias !256
  %i.bla = load i8, ptr %.3246.i, align 1, !tbaa !29, !noalias !256
  %i.blb = zext i8 %i.bla to i64
  %i.blc = getelementptr inbounds nuw [2 x i8], ptr %i.bkz, i64 %i.blb
  %i.bld = load i16, ptr %i.blc, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.ble = lshr i16 %i.bld, 8
  %i.blf = trunc nuw i16 %i.ble to i8
  store i8 %i.blf, ptr %.3246.i, align 1, !tbaa !29, !noalias !256
  %i.blg = trunc i16 %i.bld to i8
  store i8 %i.blg, ptr %i.bkt, align 1, !tbaa !29, !noalias !256
  %i.blh = getelementptr inbounds nuw i8, ptr %.3246.i, i64 2 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %.3246.i, i64 3 ; 2 uses
  %i.blj = load i8, ptr %i.bli, align 1, !tbaa !29, !noalias !256
  %i.blk = zext i8 %i.blj to i32
  %i.bll = lshr i32 %i.blk, %i.bgd
  %i.blm = zext nneg i32 %i.bll to i64
  %i.bln = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.blm
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !228, !noalias !256
  %i.blp = load i8, ptr %i.blh, align 1, !tbaa !29, !noalias !256
  %i.blq = zext i8 %i.blp to i64
  %i.blr = getelementptr inbounds nuw [2 x i8], ptr %i.blo, i64 %i.blq
  %i.bls = load i16, ptr %i.blr, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.blt = lshr i16 %i.bls, 8
  %i.blu = trunc nuw i16 %i.blt to i8
  store i8 %i.blu, ptr %i.blh, align 1, !tbaa !29, !noalias !256
  %i.blv = trunc i16 %i.bls to i8
  store i8 %i.blv, ptr %i.bli, align 1, !tbaa !29, !noalias !256
  %i.blw = getelementptr inbounds nuw i8, ptr %.3246.i, i64 4 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %.3246.i, i64 5 ; 2 uses
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !29, !noalias !256
  %i.blz = zext i8 %i.bly to i32
  %i.bma = lshr i32 %i.blz, %i.bgd
  %i.bmb = zext nneg i32 %i.bma to i64
  %i.bmc = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bmb
  %i.bmd = load ptr, ptr %i.bmc, align 8, !tbaa !228, !noalias !256
  %i.bme = load i8, ptr %i.blw, align 1, !tbaa !29, !noalias !256
  %i.bmf = zext i8 %i.bme to i64
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr %i.bmd, i64 %i.bmf
  %i.bmh = load i16, ptr %i.bmg, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bmi = lshr i16 %i.bmh, 8
  %i.bmj = trunc nuw i16 %i.bmi to i8
  store i8 %i.bmj, ptr %i.blw, align 1, !tbaa !29, !noalias !256
  %i.bmk = trunc i16 %i.bmh to i8
  store i8 %i.bmk, ptr %i.blx, align 1, !tbaa !29, !noalias !256
  %i.bml = getelementptr inbounds nuw i8, ptr %.3246.i, i64 8
  %i.bmm = add nuw i32 %.3202245.i, 1             ; 2 uses
  %exitcond277.not.i = icmp eq i32 %i.bmm, %i.bge
  br i1 %exitcond277.not.i, label %png_do_gamma.exit, label %.lr.ph247.i, !llvm.loop !262

bb.gp:                                            ; preds = %bb.gm
  %i.bmn = icmp eq i8 %i.bgg, 8
  %.not261.i216 = icmp eq i32 %i.bge, 0           ; 2 uses
  br i1 %i.bmn, label %.preheader216.i, label %.preheader218.i

.preheader218.i:                                  ; preds = %bb.gp
  br i1 %.not261.i216, label %png_do_gamma.exit, label %.lr.ph241.i.preheader

.lr.ph241.i.preheader:                            ; preds = %.preheader218.i
  %xtraiter788 = and i32 %i.bge, 1
  %i.bmo = icmp eq i32 %i.bge, 1
  br i1 %i.bmo, label %.lr.ph241.i.epil.preheader, label %.lr.ph241.i.preheader.new

.lr.ph241.i.preheader.new:                        ; preds = %.lr.ph241.i.preheader
  %unroll_iter792 = and i32 %i.bge, -2
  br label %.lr.ph241.i

.preheader216.i:                                  ; preds = %bb.gp
  br i1 %.not261.i216, label %png_do_gamma.exit, label %.lr.ph244.i217.preheader

.lr.ph244.i217.preheader:                         ; preds = %.preheader216.i
  %i.bmp = add i32 %i.bge, -1
  %xtraiter794 = and i32 %i.bge, 3                ; 3 uses
  %i.bmq = icmp ult i32 %i.bmp, 3
  br i1 %i.bmq, label %.lr.ph244.i217.epil.preheader, label %.lr.ph244.i217.preheader.new

.lr.ph244.i217.preheader.new:                     ; preds = %.lr.ph244.i217.preheader
  %unroll_iter798 = and i32 %i.bge, -4
  br label %.lr.ph244.i217

.lr.ph244.i217:                                   ; preds = %.lr.ph244.i217, %.lr.ph244.i217.preheader.new
  %.4243.i = phi ptr [ %i.bfx, %.lr.ph244.i217.preheader.new ], [ %i.bnk, %.lr.ph244.i217 ] ; 6 uses
  %niter799 = phi i32 [ 0, %.lr.ph244.i217.preheader.new ], [ %niter799.next.3, %.lr.ph244.i217 ]
  %i.bmr = load i8, ptr %.4243.i, align 1, !tbaa !29, !noalias !256
  %i.bms = zext i8 %i.bmr to i64
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bms
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !29, !noalias !256
  store i8 %i.bmu, ptr %.4243.i, align 1, !tbaa !29, !noalias !256
  %i.bmv = getelementptr inbounds nuw i8, ptr %.4243.i, i64 2 ; 2 uses
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !29, !noalias !256
  %i.bmx = zext i8 %i.bmw to i64
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bmx
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !29, !noalias !256
  store i8 %i.bmz, ptr %i.bmv, align 1, !tbaa !29, !noalias !256
  %i.bna = getelementptr inbounds nuw i8, ptr %.4243.i, i64 4 ; 2 uses
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !29, !noalias !256
  %i.bnc = zext i8 %i.bnb to i64
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bnc
  %i.bne = load i8, ptr %i.bnd, align 1, !tbaa !29, !noalias !256
  store i8 %i.bne, ptr %i.bna, align 1, !tbaa !29, !noalias !256
  %i.bnf = getelementptr inbounds nuw i8, ptr %.4243.i, i64 6 ; 2 uses
  %i.bng = load i8, ptr %i.bnf, align 1, !tbaa !29, !noalias !256
  %i.bnh = zext i8 %i.bng to i64
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bnh
  %i.bnj = load i8, ptr %i.bni, align 1, !tbaa !29, !noalias !256
  store i8 %i.bnj, ptr %i.bnf, align 1, !tbaa !29, !noalias !256
  %i.bnk = getelementptr inbounds nuw i8, ptr %.4243.i, i64 8 ; 2 uses
  %niter799.next.3 = add nuw i32 %niter799, 4     ; 2 uses
  %niter799.ncmp.3 = icmp eq i32 %niter799.next.3, %unroll_iter798
  br i1 %niter799.ncmp.3, label %png_do_gamma.exit.loopexit708.unr-lcssa, label %.lr.ph244.i217, !llvm.loop !263

.lr.ph241.i:                                      ; preds = %.lr.ph241.i, %.lr.ph241.i.preheader.new
  %.5240.i = phi ptr [ %i.bfx, %.lr.ph241.i.preheader.new ], [ %i.boo, %.lr.ph241.i ] ; 6 uses
  %niter793 = phi i32 [ 0, %.lr.ph241.i.preheader.new ], [ %niter793.next.1, %.lr.ph241.i ]
  %i.bnl = getelementptr inbounds nuw i8, ptr %.5240.i, i64 1 ; 2 uses
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !29, !noalias !256
  %i.bnn = zext i8 %i.bnm to i32
  %i.bno = lshr i32 %i.bnn, %i.bgd
  %i.bnp = zext nneg i32 %i.bno to i64
  %i.bnq = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bnp
  %i.bnr = load ptr, ptr %i.bnq, align 8, !tbaa !228, !noalias !256
  %i.bns = load i8, ptr %.5240.i, align 1, !tbaa !29, !noalias !256
  %i.bnt = zext i8 %i.bns to i64
  %i.bnu = getelementptr inbounds nuw [2 x i8], ptr %i.bnr, i64 %i.bnt
  %i.bnv = load i16, ptr %i.bnu, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bnw = lshr i16 %i.bnv, 8
  %i.bnx = trunc nuw i16 %i.bnw to i8
  store i8 %i.bnx, ptr %.5240.i, align 1, !tbaa !29, !noalias !256
  %i.bny = trunc i16 %i.bnv to i8
  store i8 %i.bny, ptr %i.bnl, align 1, !tbaa !29, !noalias !256
  %i.bnz = getelementptr inbounds nuw i8, ptr %.5240.i, i64 4 ; 2 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %.5240.i, i64 5 ; 2 uses
  %i.bob = load i8, ptr %i.boa, align 1, !tbaa !29, !noalias !256
  %i.boc = zext i8 %i.bob to i32
  %i.bod = lshr i32 %i.boc, %i.bgd
  %i.boe = zext nneg i32 %i.bod to i64
  %i.bof = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.boe
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !228, !noalias !256
  %i.boh = load i8, ptr %i.bnz, align 1, !tbaa !29, !noalias !256
  %i.boi = zext i8 %i.boh to i64
  %i.boj = getelementptr inbounds nuw [2 x i8], ptr %i.bog, i64 %i.boi
  %i.bok = load i16, ptr %i.boj, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bol = lshr i16 %i.bok, 8
  %i.bom = trunc nuw i16 %i.bol to i8
  store i8 %i.bom, ptr %i.bnz, align 1, !tbaa !29, !noalias !256
  %i.bon = trunc i16 %i.bok to i8
  store i8 %i.bon, ptr %i.boa, align 1, !tbaa !29, !noalias !256
  %i.boo = getelementptr inbounds nuw i8, ptr %.5240.i, i64 8 ; 2 uses
  %niter793.next.1 = add nuw i32 %niter793, 2     ; 2 uses
  %niter793.ncmp.1 = icmp eq i32 %niter793.next.1, %unroll_iter792
  br i1 %niter793.ncmp.1, label %png_do_gamma.exit.loopexit709.unr-lcssa, label %.lr.ph241.i, !llvm.loop !264

bb.gq:                                            ; preds = %bb.gm
  %i.bop = icmp eq i8 %i.bgg, 2
  %i.boq = icmp ne i32 %i.bge, 0
  %or.cond257.i = select i1 %i.bop, i1 %i.boq, i1 false
  br i1 %or.cond257.i, label %.lr.ph.i214, label %.loopexit227.i

.lr.ph.i214:                                      ; preds = %bb.gq, %.lr.ph.i214
  %.6229.i = phi ptr [ %i.bqj, %.lr.ph.i214 ], [ %i.bfx, %bb.gq ] ; 3 uses
  %.6205228.i = phi i32 [ %i.bqk, %.lr.ph.i214 ], [ 0, %bb.gq ]
  %i.bor = load i8, ptr %.6229.i, align 1, !tbaa !29, !noalias !256
  %i.bos = zext i8 %i.bor to i32                  ; 5 uses
  %i.bot = and i32 %i.bos, 192                    ; 3 uses
  %i.bou = and i32 %i.bos, 48                     ; 4 uses
  %i.bov = and i32 %i.bos, 12                     ; 3 uses
  %i.bow = and i32 %i.bos, 3
  %i.box = lshr exact i32 %i.bot, 2
  %i.boy = lshr exact i32 %i.bot, 4
  %i.boz = lshr i32 %i.bos, 6
  %i.bpa = or disjoint i32 %i.boz, %i.boy
  %i.bpb = or disjoint i32 %i.bpa, %i.box
  %i.bpc = or disjoint i32 %i.bpb, %i.bot
  %i.bpd = zext nneg i32 %i.bpc to i64
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bpd
  %i.bpf = load i8, ptr %i.bpe, align 1, !tbaa !29, !noalias !256
  %i.bpg = and i8 %i.bpf, -64
  %i.bph = shl nuw nsw i32 %i.bou, 2
  %i.bpi = lshr exact i32 %i.bou, 2
  %i.bpj = or disjoint i32 %i.bph, %i.bpi
  %i.bpk = lshr exact i32 %i.bou, 4
  %i.bpl = or disjoint i32 %i.bpj, %i.bpk
  %i.bpm = or disjoint i32 %i.bpl, %i.bou
  %i.bpn = zext nneg i32 %i.bpm to i64
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bpn
  %i.bpp = load i8, ptr %i.bpo, align 1, !tbaa !29, !noalias !256
  %i.bpq = lshr i8 %i.bpp, 2
  %i.bpr = and i8 %i.bpq, 48
  %i.bps = or disjoint i8 %i.bpr, %i.bpg
  %i.bpt = mul nuw nsw i32 %i.bov, 20
  %i.bpu = lshr exact i32 %i.bov, 2
  %i.bpv = or disjoint i32 %i.bpt, %i.bpu
  %i.bpw = or disjoint i32 %i.bpv, %i.bov
  %i.bpx = zext nneg i32 %i.bpw to i64
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bpx
  %i.bpz = load i8, ptr %i.bpy, align 1, !tbaa !29, !noalias !256
  %i.bqa = lshr i8 %i.bpz, 4
  %i.bqb = and i8 %i.bqa, 12
  %i.bqc = or disjoint i8 %i.bps, %i.bqb
  %i.bqd = mul nuw nsw i32 %i.bow, 85
  %i.bqe = zext nneg i32 %i.bqd to i64
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bqe
  %i.bqg = load i8, ptr %i.bqf, align 1, !tbaa !29, !noalias !256
  %i.bqh = lshr i8 %i.bqg, 6
  %i.bqi = or disjoint i8 %i.bqc, %i.bqh
  store i8 %i.bqi, ptr %.6229.i, align 1, !tbaa !29, !noalias !256
  %i.bqj = getelementptr inbounds nuw i8, ptr %.6229.i, i64 1
  %i.bqk = add nuw i32 %.6205228.i, 4             ; 2 uses
  %i.bql = icmp ult i32 %i.bqk, %i.bge
  br i1 %i.bql, label %.lr.ph.i214, label %.loopexit227.loopexit.i, !llvm.loop !265

.loopexit227.loopexit.i:                          ; preds = %.lr.ph.i214
  %.pre.i215 = load i8, ptr %i.bgf, align 1, !tbaa !210, !noalias !256
  br label %.loopexit227.i

.loopexit227.i:                                   ; preds = %.loopexit227.loopexit.i, %bb.gq
  %i.bqm = phi i8 [ %.pre.i215, %.loopexit227.loopexit.i ], [ %i.bgg, %bb.gq ]
  switch i8 %i.bqm, label %png_do_gamma.exit [
    i8 4, label %.preheader220.i
    i8 8, label %.preheader222.i
    i8 16, label %.preheader224.i
  ]

.preheader224.i:                                  ; preds = %.loopexit227.i
  %.not.i210 = icmp eq i32 %i.bge, 0
  br i1 %.not.i210, label %png_do_gamma.exit, label %.lr.ph232.i.preheader

.lr.ph232.i.preheader:                            ; preds = %.preheader224.i
  %xtraiter772 = and i32 %i.bge, 1
  %i.bqn = icmp eq i32 %i.bge, 1
  br i1 %i.bqn, label %.lr.ph232.i.epil.preheader, label %.lr.ph232.i.preheader.new

.lr.ph232.i.preheader.new:                        ; preds = %.lr.ph232.i.preheader
  %unroll_iter775 = and i32 %i.bge, -2
  br label %.lr.ph232.i

.preheader222.i:                                  ; preds = %.loopexit227.i
  %.not258.i212 = icmp eq i32 %i.bge, 0
  br i1 %.not258.i212, label %png_do_gamma.exit, label %.lr.ph235.i.preheader

.lr.ph235.i.preheader:                            ; preds = %.preheader222.i
  %i.bqo = add i32 %i.bge, -1
  %xtraiter777 = and i32 %i.bge, 3                ; 3 uses
  %i.bqp = icmp ult i32 %i.bqo, 3
  br i1 %i.bqp, label %.lr.ph235.i.epil.preheader, label %.lr.ph235.i.preheader.new

.lr.ph235.i.preheader.new:                        ; preds = %.lr.ph235.i.preheader
  %unroll_iter780 = and i32 %i.bge, -4
  br label %.lr.ph235.i

.preheader220.i:                                  ; preds = %.loopexit227.i
  %.not259.i213 = icmp eq i32 %i.bge, 0
  br i1 %.not259.i213, label %png_do_gamma.exit, label %.lr.ph238.i.preheader

.lr.ph238.i.preheader:                            ; preds = %.preheader220.i
  %i.bqq = add i32 %i.bge, -1                     ; 2 uses
  %i.bqr = lshr i32 %i.bqq, 1                     ; 2 uses
  %i.bqs = add nuw i32 %i.bqr, 1                  ; 2 uses
  %i.bqt = icmp eq i32 %i.bqr, 0
  br i1 %i.bqt, label %.lr.ph238.i.epil.preheader, label %.lr.ph238.i.preheader.new

.lr.ph238.i.preheader.new:                        ; preds = %.lr.ph238.i.preheader
  %unroll_iter786 = and i32 %i.bqs, -2
  br label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %.lr.ph238.i, %.lr.ph238.i.preheader.new
  %.7237.i = phi ptr [ %i.bfx, %.lr.ph238.i.preheader.new ], [ %i.bsb, %.lr.ph238.i ] ; 4 uses
  %niter787 = phi i32 [ 0, %.lr.ph238.i.preheader.new ], [ %niter787.next.1, %.lr.ph238.i ]
  %i.bqu = load i8, ptr %.7237.i, align 1, !tbaa !29, !noalias !256
  %i.bqv = zext i8 %i.bqu to i32                  ; 3 uses
  %i.bqw = and i32 %i.bqv, 240
  %i.bqx = and i32 %i.bqv, 15
  %i.bqy = lshr i32 %i.bqv, 4
  %i.bqz = or disjoint i32 %i.bqw, %i.bqy
  %i.bra = zext nneg i32 %i.bqz to i64
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bra
  %i.brc = load i8, ptr %i.brb, align 1, !tbaa !29, !noalias !256
  %i.brd = and i8 %i.brc, -16
  %i.bre = mul nuw nsw i32 %i.bqx, 17
  %i.brf = zext nneg i32 %i.bre to i64
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.brf
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !29, !noalias !256
  %i.bri = lshr i8 %i.brh, 4
  %i.brj = or disjoint i8 %i.bri, %i.brd
  store i8 %i.brj, ptr %.7237.i, align 1, !tbaa !29, !noalias !256
  %i.brk = getelementptr inbounds nuw i8, ptr %.7237.i, i64 1 ; 2 uses
  %i.brl = load i8, ptr %i.brk, align 1, !tbaa !29, !noalias !256
  %i.brm = zext i8 %i.brl to i32                  ; 3 uses
  %i.brn = and i32 %i.brm, 240
  %i.bro = and i32 %i.brm, 15
  %i.brp = lshr i32 %i.brm, 4
  %i.brq = or disjoint i32 %i.brn, %i.brp
  %i.brr = zext nneg i32 %i.brq to i64
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.brr
  %i.brt = load i8, ptr %i.brs, align 1, !tbaa !29, !noalias !256
  %i.bru = and i8 %i.brt, -16
  %i.brv = mul nuw nsw i32 %i.bro, 17
  %i.brw = zext nneg i32 %i.brv to i64
  %i.brx = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.brw
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !29, !noalias !256
  %i.brz = lshr i8 %i.bry, 4
  %i.bsa = or disjoint i8 %i.brz, %i.bru
  store i8 %i.bsa, ptr %i.brk, align 1, !tbaa !29, !noalias !256
  %i.bsb = getelementptr inbounds nuw i8, ptr %.7237.i, i64 2 ; 2 uses
  %niter787.next.1 = add nuw i32 %niter787, 2     ; 2 uses
  %niter787.ncmp.1.not = icmp eq i32 %niter787.next.1, %unroll_iter786
  br i1 %niter787.ncmp.1.not, label %png_do_gamma.exit.loopexit710.unr-lcssa, label %.lr.ph238.i, !llvm.loop !266

.lr.ph235.i:                                      ; preds = %.lr.ph235.i, %.lr.ph235.i.preheader.new
  %.8234.i = phi ptr [ %i.bfx, %.lr.ph235.i.preheader.new ], [ %i.bsv, %.lr.ph235.i ] ; 6 uses
  %niter781 = phi i32 [ 0, %.lr.ph235.i.preheader.new ], [ %niter781.next.3, %.lr.ph235.i ]
  %i.bsc = load i8, ptr %.8234.i, align 1, !tbaa !29, !noalias !256
  %i.bsd = zext i8 %i.bsc to i64
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bsd
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !29, !noalias !256
  store i8 %i.bsf, ptr %.8234.i, align 1, !tbaa !29, !noalias !256
  %i.bsg = getelementptr inbounds nuw i8, ptr %.8234.i, i64 1 ; 2 uses
  %i.bsh = load i8, ptr %i.bsg, align 1, !tbaa !29, !noalias !256
  %i.bsi = zext i8 %i.bsh to i64
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bsi
  %i.bsk = load i8, ptr %i.bsj, align 1, !tbaa !29, !noalias !256
  store i8 %i.bsk, ptr %i.bsg, align 1, !tbaa !29, !noalias !256
  %i.bsl = getelementptr inbounds nuw i8, ptr %.8234.i, i64 2 ; 2 uses
  %i.bsm = load i8, ptr %i.bsl, align 1, !tbaa !29, !noalias !256
  %i.bsn = zext i8 %i.bsm to i64
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bsn
  %i.bsp = load i8, ptr %i.bso, align 1, !tbaa !29, !noalias !256
  store i8 %i.bsp, ptr %i.bsl, align 1, !tbaa !29, !noalias !256
  %i.bsq = getelementptr inbounds nuw i8, ptr %.8234.i, i64 3 ; 2 uses
  %i.bsr = load i8, ptr %i.bsq, align 1, !tbaa !29, !noalias !256
  %i.bss = zext i8 %i.bsr to i64
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bss
  %i.bsu = load i8, ptr %i.bst, align 1, !tbaa !29, !noalias !256
  store i8 %i.bsu, ptr %i.bsq, align 1, !tbaa !29, !noalias !256
  %i.bsv = getelementptr inbounds nuw i8, ptr %.8234.i, i64 4 ; 2 uses
  %niter781.next.3 = add nuw i32 %niter781, 4     ; 2 uses
  %niter781.ncmp.3 = icmp eq i32 %niter781.next.3, %unroll_iter780
  br i1 %niter781.ncmp.3, label %png_do_gamma.exit.loopexit711.unr-lcssa, label %.lr.ph235.i, !llvm.loop !267

.lr.ph232.i:                                      ; preds = %.lr.ph232.i, %.lr.ph232.i.preheader.new
  %.9231.i = phi ptr [ %i.bfx, %.lr.ph232.i.preheader.new ], [ %i.btz, %.lr.ph232.i ] ; 6 uses
  %niter776 = phi i32 [ 0, %.lr.ph232.i.preheader.new ], [ %niter776.next.1, %.lr.ph232.i ]
  %i.bsw = getelementptr inbounds nuw i8, ptr %.9231.i, i64 1 ; 2 uses
  %i.bsx = load i8, ptr %i.bsw, align 1, !tbaa !29, !noalias !256
  %i.bsy = zext i8 %i.bsx to i32
  %i.bsz = lshr i32 %i.bsy, %i.bgd
  %i.bta = zext nneg i32 %i.bsz to i64
  %i.btb = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bta
  %i.btc = load ptr, ptr %i.btb, align 8, !tbaa !228, !noalias !256
  %i.btd = load i8, ptr %.9231.i, align 1, !tbaa !29, !noalias !256
  %i.bte = zext i8 %i.btd to i64
  %i.btf = getelementptr inbounds nuw [2 x i8], ptr %i.btc, i64 %i.bte
  %i.btg = load i16, ptr %i.btf, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bth = lshr i16 %i.btg, 8
  %i.bti = trunc nuw i16 %i.bth to i8
  store i8 %i.bti, ptr %.9231.i, align 1, !tbaa !29, !noalias !256
  %i.btj = trunc i16 %i.btg to i8
  store i8 %i.btj, ptr %i.bsw, align 1, !tbaa !29, !noalias !256
  %i.btk = getelementptr inbounds nuw i8, ptr %.9231.i, i64 2 ; 2 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %.9231.i, i64 3 ; 2 uses
  %i.btm = load i8, ptr %i.btl, align 1, !tbaa !29, !noalias !256
  %i.btn = zext i8 %i.btm to i32
  %i.bto = lshr i32 %i.btn, %i.bgd
  %i.btp = zext nneg i32 %i.bto to i64
  %i.btq = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.btp
  %i.btr = load ptr, ptr %i.btq, align 8, !tbaa !228, !noalias !256
  %i.bts = load i8, ptr %i.btk, align 1, !tbaa !29, !noalias !256
  %i.btt = zext i8 %i.bts to i64
  %i.btu = getelementptr inbounds nuw [2 x i8], ptr %i.btr, i64 %i.btt
  %i.btv = load i16, ptr %i.btu, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.btw = lshr i16 %i.btv, 8
  %i.btx = trunc nuw i16 %i.btw to i8
  store i8 %i.btx, ptr %i.btk, align 1, !tbaa !29, !noalias !256
  %i.bty = trunc i16 %i.btv to i8
  store i8 %i.bty, ptr %i.btl, align 1, !tbaa !29, !noalias !256
  %i.btz = getelementptr inbounds nuw i8, ptr %.9231.i, i64 4 ; 2 uses
  %niter776.next.1 = add nuw i32 %niter776, 2     ; 2 uses
  %niter776.ncmp.1 = icmp eq i32 %niter776.next.1, %unroll_iter775
  br i1 %niter776.ncmp.1, label %png_do_gamma.exit.loopexit712.unr-lcssa, label %.lr.ph232.i, !llvm.loop !268

png_do_gamma.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph256.i220
  %lcmp.mod808.not = icmp eq i32 %xtraiter806, 0
  br i1 %lcmp.mod808.not, label %png_do_gamma.exit, label %.lr.ph256.i220.epil.preheader

.lr.ph256.i220.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit.unr-lcssa, %.lr.ph256.i220.preheader
  %.0255.i.epil.init = phi ptr [ %i.bfx, %.lr.ph256.i220.preheader ], [ %i.bhs, %png_do_gamma.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod809 = trunc i32 %i.bge to i1
  tail call void @llvm.assume(i1 %lcmp.mod809)
  %i.bua = load i8, ptr %.0255.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bub = zext i8 %i.bua to i64
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bub
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !29, !noalias !256
  store i8 %i.bud, ptr %.0255.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bue = getelementptr inbounds nuw i8, ptr %.0255.i.epil.init, i64 1 ; 2 uses
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !29, !noalias !256
  %i.bug = zext i8 %i.buf to i64
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bug
  %i.bui = load i8, ptr %i.buh, align 1, !tbaa !29, !noalias !256
  store i8 %i.bui, ptr %i.bue, align 1, !tbaa !29, !noalias !256
  %i.buj = getelementptr inbounds nuw i8, ptr %.0255.i.epil.init, i64 2 ; 2 uses
  %i.buk = load i8, ptr %i.buj, align 1, !tbaa !29, !noalias !256
  %i.bul = zext i8 %i.buk to i64
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bul
  %i.bun = load i8, ptr %i.bum, align 1, !tbaa !29, !noalias !256
  store i8 %i.bun, ptr %i.buj, align 1, !tbaa !29, !noalias !256
  br label %png_do_gamma.exit

png_do_gamma.exit.loopexit706.unr-lcssa:          ; preds = %.lr.ph250.i218
  %lcmp.mod802.not = icmp eq i32 %xtraiter800, 0
  br i1 %lcmp.mod802.not, label %png_do_gamma.exit, label %.lr.ph250.i218.epil.preheader

.lr.ph250.i218.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit706.unr-lcssa, %.lr.ph250.i218.preheader
  %.2249.i.epil.init = phi ptr [ %i.bfx, %.lr.ph250.i218.preheader ], [ %i.bks, %png_do_gamma.exit.loopexit706.unr-lcssa ] ; 4 uses
  %lcmp.mod803 = trunc i32 %i.bge to i1
  tail call void @llvm.assume(i1 %lcmp.mod803)
  %i.buo = load i8, ptr %.2249.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bup = zext i8 %i.buo to i64
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bup
  %i.bur = load i8, ptr %i.buq, align 1, !tbaa !29, !noalias !256
  store i8 %i.bur, ptr %.2249.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bus = getelementptr inbounds nuw i8, ptr %.2249.i.epil.init, i64 1 ; 2 uses
  %i.but = load i8, ptr %i.bus, align 1, !tbaa !29, !noalias !256
  %i.buu = zext i8 %i.but to i64
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.buu
  %i.buw = load i8, ptr %i.buv, align 1, !tbaa !29, !noalias !256
  store i8 %i.buw, ptr %i.bus, align 1, !tbaa !29, !noalias !256
  %i.bux = getelementptr inbounds nuw i8, ptr %.2249.i.epil.init, i64 2 ; 2 uses
  %i.buy = load i8, ptr %i.bux, align 1, !tbaa !29, !noalias !256
  %i.buz = zext i8 %i.buy to i64
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.buz
  %i.bvb = load i8, ptr %i.bva, align 1, !tbaa !29, !noalias !256
  store i8 %i.bvb, ptr %i.bux, align 1, !tbaa !29, !noalias !256
  br label %png_do_gamma.exit

png_do_gamma.exit.loopexit708.unr-lcssa:          ; preds = %.lr.ph244.i217
  %lcmp.mod796.not = icmp eq i32 %xtraiter794, 0
  br i1 %lcmp.mod796.not, label %png_do_gamma.exit, label %.lr.ph244.i217.epil.preheader

.lr.ph244.i217.epil.preheader:                    ; preds = %png_do_gamma.exit.loopexit708.unr-lcssa, %.lr.ph244.i217.preheader
  %.4243.i.epil.init = phi ptr [ %i.bfx, %.lr.ph244.i217.preheader ], [ %i.bnk, %png_do_gamma.exit.loopexit708.unr-lcssa ]
  %lcmp.mod797 = icmp ne i32 %xtraiter794, 0
  tail call void @llvm.assume(i1 %lcmp.mod797)
  br label %.lr.ph244.i217.epil

.lr.ph244.i217.epil:                              ; preds = %.lr.ph244.i217.epil, %.lr.ph244.i217.epil.preheader
  %.4243.i.epil = phi ptr [ %i.bvg, %.lr.ph244.i217.epil ], [ %.4243.i.epil.init, %.lr.ph244.i217.epil.preheader ] ; 3 uses
  %epil.iter795 = phi i32 [ %epil.iter795.next, %.lr.ph244.i217.epil ], [ 0, %.lr.ph244.i217.epil.preheader ]
  %i.bvc = load i8, ptr %.4243.i.epil, align 1, !tbaa !29, !noalias !256
  %i.bvd = zext i8 %i.bvc to i64
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bvd
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !29, !noalias !256
  store i8 %i.bvf, ptr %.4243.i.epil, align 1, !tbaa !29, !noalias !256
  %i.bvg = getelementptr inbounds nuw i8, ptr %.4243.i.epil, i64 2
  %epil.iter795.next = add i32 %epil.iter795, 1   ; 2 uses
  %epil.iter795.cmp.not = icmp eq i32 %epil.iter795.next, %xtraiter794
  br i1 %epil.iter795.cmp.not, label %png_do_gamma.exit, label %.lr.ph244.i217.epil, !llvm.loop !269

png_do_gamma.exit.loopexit709.unr-lcssa:          ; preds = %.lr.ph241.i
  %lcmp.mod790.not = icmp eq i32 %xtraiter788, 0
  br i1 %lcmp.mod790.not, label %png_do_gamma.exit, label %.lr.ph241.i.epil.preheader

.lr.ph241.i.epil.preheader:                       ; preds = %png_do_gamma.exit.loopexit709.unr-lcssa, %.lr.ph241.i.preheader
  %.5240.i.epil.init = phi ptr [ %i.bfx, %.lr.ph241.i.preheader ], [ %i.boo, %png_do_gamma.exit.loopexit709.unr-lcssa ] ; 3 uses
  %lcmp.mod791 = trunc i32 %i.bge to i1
  tail call void @llvm.assume(i1 %lcmp.mod791)
  %i.bvh = getelementptr inbounds nuw i8, ptr %.5240.i.epil.init, i64 1 ; 2 uses
  %i.bvi = load i8, ptr %i.bvh, align 1, !tbaa !29, !noalias !256
  %i.bvj = zext i8 %i.bvi to i32
  %i.bvk = lshr i32 %i.bvj, %i.bgd
  %i.bvl = zext nneg i32 %i.bvk to i64
  %i.bvm = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bvl
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !228, !noalias !256
  %i.bvo = load i8, ptr %.5240.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bvp = zext i8 %i.bvo to i64
  %i.bvq = getelementptr inbounds nuw [2 x i8], ptr %i.bvn, i64 %i.bvp
  %i.bvr = load i16, ptr %i.bvq, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bvs = lshr i16 %i.bvr, 8
  %i.bvt = trunc nuw i16 %i.bvs to i8
  store i8 %i.bvt, ptr %.5240.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bvu = trunc i16 %i.bvr to i8
  store i8 %i.bvu, ptr %i.bvh, align 1, !tbaa !29, !noalias !256
  br label %png_do_gamma.exit

png_do_gamma.exit.loopexit710.unr-lcssa:          ; preds = %.lr.ph238.i
  %i.bvv = and i32 %i.bqq, 2
  %lcmp.mod784.not.not = icmp eq i32 %i.bvv, 0
  br i1 %lcmp.mod784.not.not, label %.lr.ph238.i.epil.preheader, label %png_do_gamma.exit

.lr.ph238.i.epil.preheader:                       ; preds = %png_do_gamma.exit.loopexit710.unr-lcssa, %.lr.ph238.i.preheader
  %.7237.i.epil.init = phi ptr [ %i.bfx, %.lr.ph238.i.preheader ], [ %i.bsb, %png_do_gamma.exit.loopexit710.unr-lcssa ] ; 2 uses
  %lcmp.mod785 = trunc i32 %i.bqs to i1
  tail call void @llvm.assume(i1 %lcmp.mod785)
  %i.bvw = load i8, ptr %.7237.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bvx = zext i8 %i.bvw to i32                  ; 3 uses
  %i.bvy = and i32 %i.bvx, 240
  %i.bvz = and i32 %i.bvx, 15
  %i.bwa = lshr i32 %i.bvx, 4
  %i.bwb = or disjoint i32 %i.bvy, %i.bwa
  %i.bwc = zext nneg i32 %i.bwb to i64
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bwc
  %i.bwe = load i8, ptr %i.bwd, align 1, !tbaa !29, !noalias !256
  %i.bwf = and i8 %i.bwe, -16
  %i.bwg = mul nuw nsw i32 %i.bvz, 17
  %i.bwh = zext nneg i32 %i.bwg to i64
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bwh
  %i.bwj = load i8, ptr %i.bwi, align 1, !tbaa !29, !noalias !256
  %i.bwk = lshr i8 %i.bwj, 4
  %i.bwl = or disjoint i8 %i.bwk, %i.bwf
  store i8 %i.bwl, ptr %.7237.i.epil.init, align 1, !tbaa !29, !noalias !256
  br label %png_do_gamma.exit

png_do_gamma.exit.loopexit711.unr-lcssa:          ; preds = %.lr.ph235.i
  %lcmp.mod778.not = icmp eq i32 %xtraiter777, 0
  br i1 %lcmp.mod778.not, label %png_do_gamma.exit, label %.lr.ph235.i.epil.preheader

.lr.ph235.i.epil.preheader:                       ; preds = %png_do_gamma.exit.loopexit711.unr-lcssa, %.lr.ph235.i.preheader
  %.8234.i.epil.init = phi ptr [ %i.bfx, %.lr.ph235.i.preheader ], [ %i.bsv, %png_do_gamma.exit.loopexit711.unr-lcssa ]
  %lcmp.mod779 = icmp ne i32 %xtraiter777, 0
  tail call void @llvm.assume(i1 %lcmp.mod779)
  br label %.lr.ph235.i.epil

.lr.ph235.i.epil:                                 ; preds = %.lr.ph235.i.epil, %.lr.ph235.i.epil.preheader
  %.8234.i.epil = phi ptr [ %i.bwq, %.lr.ph235.i.epil ], [ %.8234.i.epil.init, %.lr.ph235.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph235.i.epil ], [ 0, %.lr.ph235.i.epil.preheader ]
  %i.bwm = load i8, ptr %.8234.i.epil, align 1, !tbaa !29, !noalias !256
  %i.bwn = zext i8 %i.bwm to i64
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bwn
  %i.bwp = load i8, ptr %i.bwo, align 1, !tbaa !29, !noalias !256
  store i8 %i.bwp, ptr %.8234.i.epil, align 1, !tbaa !29, !noalias !256
  %i.bwq = getelementptr inbounds nuw i8, ptr %.8234.i.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter777
  br i1 %epil.iter.cmp.not, label %png_do_gamma.exit, label %.lr.ph235.i.epil, !llvm.loop !270

png_do_gamma.exit.loopexit712.unr-lcssa:          ; preds = %.lr.ph232.i
  %lcmp.mod773.not = icmp eq i32 %xtraiter772, 0
  br i1 %lcmp.mod773.not, label %png_do_gamma.exit, label %.lr.ph232.i.epil.preheader

.lr.ph232.i.epil.preheader:                       ; preds = %png_do_gamma.exit.loopexit712.unr-lcssa, %.lr.ph232.i.preheader
  %.9231.i.epil.init = phi ptr [ %i.bfx, %.lr.ph232.i.preheader ], [ %i.btz, %png_do_gamma.exit.loopexit712.unr-lcssa ] ; 3 uses
  %lcmp.mod774 = trunc i32 %i.bge to i1
  tail call void @llvm.assume(i1 %lcmp.mod774)
  %i.bwr = getelementptr inbounds nuw i8, ptr %.9231.i.epil.init, i64 1 ; 2 uses
  %i.bws = load i8, ptr %i.bwr, align 1, !tbaa !29, !noalias !256
  %i.bwt = zext i8 %i.bws to i32
  %i.bwu = lshr i32 %i.bwt, %i.bgd
  %i.bwv = zext nneg i32 %i.bwu to i64
  %i.bww = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.bwv
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !228, !noalias !256
  %i.bwy = load i8, ptr %.9231.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bwz = zext i8 %i.bwy to i64
  %i.bxa = getelementptr inbounds nuw [2 x i8], ptr %i.bwx, i64 %i.bwz
  %i.bxb = load i16, ptr %i.bxa, align 2, !tbaa !30, !noalias !256 ; 2 uses
  %i.bxc = lshr i16 %i.bxb, 8
  %i.bxd = trunc nuw i16 %i.bxc to i8
  store i8 %i.bxd, ptr %.9231.i.epil.init, align 1, !tbaa !29, !noalias !256
  %i.bxe = trunc i16 %i.bxb to i8
  store i8 %i.bxe, ptr %i.bwr, align 1, !tbaa !29, !noalias !256
  br label %png_do_gamma.exit

png_do_gamma.exit:                                ; preds = %.lr.ph232.i.epil.preheader, %png_do_gamma.exit.loopexit712.unr-lcssa, %png_do_gamma.exit.loopexit711.unr-lcssa, %.lr.ph235.i.epil, %.lr.ph238.i.epil.preheader, %png_do_gamma.exit.loopexit710.unr-lcssa, %.lr.ph241.i.epil.preheader, %png_do_gamma.exit.loopexit709.unr-lcssa, %png_do_gamma.exit.loopexit708.unr-lcssa, %.lr.ph244.i217.epil, %.lr.ph247.i, %.lr.ph250.i218.epil.preheader, %png_do_gamma.exit.loopexit706.unr-lcssa, %.lr.ph253.i, %.lr.ph256.i220.epil.preheader, %png_do_gamma.exit.loopexit.unr-lcssa, %.preheader220.i, %.preheader222.i, %.preheader224.i, %.loopexit227.i, %.preheader216.i, %.preheader218.i, %.preheader212.i, %.preheader214.i, %.preheader.i219, %.preheader210.i, %bb.gm, %bb.gl, %bb.gj, %bb.gi, %bb.gh, %png_do_compose.exit
  %i.bxf = load i32, ptr %i.h, align 4, !tbaa !27 ; 3 uses
  %i.bxg = and i32 %i.bxf, 262272
  %or.cond182.not = icmp eq i32 %i.bxg, 262272
  br i1 %or.cond182.not, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %png_do_gamma.exit
  %i.bxh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bxi = load i8, ptr %i.bxh, align 8, !tbaa !207
  switch i8 %i.bxi, label %bb.gt [
    i8 6, label %bb.gs
    i8 4, label %bb.gs
  ]

bb.gs:                                            ; preds = %bb.gr, %bb.gr
  %i.bxj = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxj, i64 1
end_hunk_2
begin_hunk_3_@png_do_read_transformations:bb.a
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdr, i64 1 ; 6 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cdu = load ptr, ptr %i.cdt, align 8, !tbaa !94 ; 3 uses
  %i.cdv = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cdw = load ptr, ptr %i.cdv, align 8, !tbaa !56 ; 6 uses
  %i.cdx = load i32, ptr %1, align 8, !tbaa !209  ; 12 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 3 uses
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !210
  %i.cea = icmp eq i8 %i.cdz, 8
  br i1 %i.cea, label %bb.hf, label %png_do_quantize.exit

bb.hf:                                            ; preds = %bb.he
  %i.ceb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.cec = load i8, ptr %i.ceb, align 8, !tbaa !207 ; 3 uses
  %i.ced = icmp eq i8 %i.cec, 2
  %i.cee = icmp ne ptr %i.cdu, null               ; 2 uses
  %or.cond.i232 = and i1 %i.cee, %i.ced
  br i1 %or.cond.i232, label %.preheader.i241, label %bb.hi

.preheader.i241:                                  ; preds = %bb.hf
  %.not93.i = icmp eq i32 %i.cdx, 0
  br i1 %.not93.i, label %._crit_edge91.thread.i, label %.lr.ph90.i

._crit_edge91.thread.i:                           ; preds = %.preheader.i241
  store i8 3, ptr %i.ceb, align 8, !tbaa !207
  %i.cef = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cef, align 2, !tbaa !218
  %i.ceg = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 8, ptr %i.ceg, align 1, !tbaa !214
  br label %bb.hg

.lr.ph90.i:                                       ; preds = %.preheader.i241, %.lr.ph90.i
  %.089.i = phi ptr [ %i.cel, %.lr.ph90.i ], [ %i.cds, %.preheader.i241 ] ; 4 uses
  %.06988.i = phi ptr [ %i.cez, %.lr.ph90.i ], [ %i.cds, %.preheader.i241 ] ; 2 uses
  %.07187.i = phi i32 [ %i.cfa, %.lr.ph90.i ], [ 0, %.preheader.i241 ]
  %i.ceh = getelementptr inbounds nuw i8, ptr %.089.i, i64 1
  %i.cei = load i8, ptr %.089.i, align 1, !tbaa !29
  %i.cej = getelementptr inbounds nuw i8, ptr %.089.i, i64 2
  %i.cek = load i8, ptr %i.ceh, align 1, !tbaa !29
  %i.cel = getelementptr inbounds nuw i8, ptr %.089.i, i64 3
  %i.cem = load i8, ptr %i.cej, align 1, !tbaa !29
  %i.cen = lshr i8 %i.cei, 3
  %i.ceo = zext nneg i8 %i.cen to i64
  %i.cep = shl nuw nsw i64 %i.ceo, 10
  %i.ceq = lshr i8 %i.cek, 3
  %i.cer = zext nneg i8 %i.ceq to i64
  %i.ces = shl nuw nsw i64 %i.cer, 5
  %i.cet = lshr i8 %i.cem, 3
  %i.ceu = zext nneg i8 %i.cet to i64
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %i.cep
  %i.cew = getelementptr inbounds nuw i8, ptr %i.cev, i64 %i.ces
  %i.cex = getelementptr inbounds nuw i8, ptr %i.cew, i64 %i.ceu
  %i.cey = load i8, ptr %i.cex, align 1, !tbaa !29
  %i.cez = getelementptr inbounds nuw i8, ptr %.06988.i, i64 1
  store i8 %i.cey, ptr %.06988.i, align 1, !tbaa !29
  %i.cfa = add nuw i32 %.07187.i, 1               ; 2 uses
  %exitcond95.not.i = icmp eq i32 %i.cfa, %i.cdx
  br i1 %exitcond95.not.i, label %._crit_edge91.i, label %.lr.ph90.i, !llvm.loop !279

._crit_edge91.i:                                  ; preds = %.lr.ph90.i
  %.pre96.i = load i8, ptr %i.cdy, align 1, !tbaa !210 ; 4 uses
  store i8 3, ptr %i.ceb, align 8, !tbaa !207
  %i.cfb = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cfb, align 2, !tbaa !218
  %i.cfc = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %.pre96.i, ptr %i.cfc, align 1, !tbaa !214
  %i.cfd = icmp ugt i8 %.pre96.i, 7
  br i1 %i.cfd, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %._crit_edge91.i, %._crit_edge91.thread.i
  %i.cfe = phi i8 [ 8, %._crit_edge91.thread.i ], [ %.pre96.i, %._crit_edge91.i ]
  %i.cff = zext i32 %i.cdx to i64
  %i.cfg = lshr i8 %i.cfe, 3
  %i.cfh = zext nneg i8 %i.cfg to i64
  %i.cfi = mul nuw nsw i64 %i.cfh, %i.cff
  br label %.loopexit.sink.split.i

bb.hh:                                            ; preds = %._crit_edge91.i
  %i.cfj = zext i32 %i.cdx to i64
  %i.cfk = zext nneg i8 %.pre96.i to i64
  %i.cfl = mul nuw nsw i64 %i.cfk, %i.cfj
  %i.cfm = add nuw nsw i64 %i.cfl, 7
  %i.cfn = lshr i64 %i.cfm, 3
  br label %.loopexit.sink.split.i

bb.hi:                                            ; preds = %bb.hf
  %i.cfo = icmp eq i8 %i.cec, 6
  %or.cond3.i233 = and i1 %i.cee, %i.cfo
  br i1 %or.cond3.i233, label %.preheader79.i, label %bb.hl

.preheader79.i:                                   ; preds = %bb.hi
  %.not.i237 = icmp eq i32 %i.cdx, 0
  br i1 %.not.i237, label %._crit_edge.thread.i, label %.lr.ph86.i

._crit_edge.thread.i:                             ; preds = %.preheader79.i
  store i8 3, ptr %i.ceb, align 8, !tbaa !207
  %i.cfp = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cfp, align 2, !tbaa !218
  %i.cfq = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 8, ptr %i.cfq, align 1, !tbaa !214
  br label %bb.hj

.lr.ph86.i:                                       ; preds = %.preheader79.i, %.lr.ph86.i
  %.185.i = phi ptr [ %i.cfw, %.lr.ph86.i ], [ %i.cds, %.preheader79.i ] ; 4 uses
  %.17084.i = phi ptr [ %i.cgj, %.lr.ph86.i ], [ %i.cds, %.preheader79.i ] ; 2 uses
  %.17283.i = phi i32 [ %i.cgk, %.lr.ph86.i ], [ 0, %.preheader79.i ]
  %i.cfr = getelementptr inbounds nuw i8, ptr %.185.i, i64 1
  %i.cfs = load i8, ptr %.185.i, align 1, !tbaa !29
  %i.cft = getelementptr inbounds nuw i8, ptr %.185.i, i64 2
  %i.cfu = load i8, ptr %i.cfr, align 1, !tbaa !29
  %i.cfv = load i8, ptr %i.cft, align 1, !tbaa !29
  %i.cfw = getelementptr inbounds nuw i8, ptr %.185.i, i64 4
  %i.cfx = lshr i8 %i.cfs, 3
  %i.cfy = zext nneg i8 %i.cfx to i64
  %i.cfz = shl nuw nsw i64 %i.cfy, 10
  %i.cga = lshr i8 %i.cfu, 3
  %i.cgb = zext nneg i8 %i.cga to i64
  %i.cgc = shl nuw nsw i64 %i.cgb, 5
  %i.cgd = lshr i8 %i.cfv, 3
  %i.cge = zext nneg i8 %i.cgd to i64
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cdu, i64 %i.cfz
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 %i.cgc
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cgg, i64 %i.cge
  %i.cgi = load i8, ptr %i.cgh, align 1, !tbaa !29
  %i.cgj = getelementptr inbounds nuw i8, ptr %.17084.i, i64 1
  store i8 %i.cgi, ptr %.17084.i, align 1, !tbaa !29
  %i.cgk = add nuw i32 %.17283.i, 1               ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.cgk, %i.cdx
  br i1 %exitcond94.not.i, label %._crit_edge.i238, label %.lr.ph86.i, !llvm.loop !280

._crit_edge.i238:                                 ; preds = %.lr.ph86.i
  %.pre.i239 = load i8, ptr %i.cdy, align 1, !tbaa !210 ; 4 uses
  store i8 3, ptr %i.ceb, align 8, !tbaa !207
  %i.cgl = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 1, ptr %i.cgl, align 2, !tbaa !218
  %i.cgm = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %.pre.i239, ptr %i.cgm, align 1, !tbaa !214
  %i.cgn = icmp ugt i8 %.pre.i239, 7
  br i1 %i.cgn, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %._crit_edge.i238, %._crit_edge.thread.i
  %i.cgo = phi i8 [ 8, %._crit_edge.thread.i ], [ %.pre.i239, %._crit_edge.i238 ]
  %i.cgp = zext i32 %i.cdx to i64
  %i.cgq = lshr i8 %i.cgo, 3
  %i.cgr = zext nneg i8 %i.cgq to i64
  %i.cgs = mul nuw nsw i64 %i.cgr, %i.cgp
  br label %.loopexit.sink.split.i

bb.hk:                                            ; preds = %._crit_edge.i238
  %i.cgt = zext i32 %i.cdx to i64
  %i.cgu = zext nneg i8 %.pre.i239 to i64
  %i.cgv = mul nuw nsw i64 %i.cgu, %i.cgt
  %i.cgw = add nuw nsw i64 %i.cgv, 7
  %i.cgx = lshr i64 %i.cgw, 3
  br label %.loopexit.sink.split.i

bb.hl:                                            ; preds = %bb.hi
  %i.cgy = icmp eq i8 %i.cec, 3
  %i.cgz = icmp ne ptr %i.cdw, null
  %or.cond5.i234 = and i1 %i.cgz, %i.cgy
  %i.cha = icmp ne i32 %i.cdx, 0
  %or.cond92.i = select i1 %or.cond5.i234, i1 %i.cha, i1 false
  br i1 %or.cond92.i, label %.lr.ph.i235.preheader, label %png_do_quantize.exit

.lr.ph.i235.preheader:                            ; preds = %bb.hl
  %xtraiter816 = and i32 %i.cdx, 3                ; 3 uses
  %i.chb = icmp ult i32 %i.cdx, 4
  br i1 %i.chb, label %.lr.ph.i235.epil.preheader, label %.lr.ph.i235.preheader.new

.lr.ph.i235.preheader.new:                        ; preds = %.lr.ph.i235.preheader
  %unroll_iter820 = and i32 %i.cdx, -4
  br label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235, %.lr.ph.i235.preheader.new
  %.282.i = phi ptr [ %i.cds, %.lr.ph.i235.preheader.new ], [ %i.chv, %.lr.ph.i235 ] ; 6 uses
  %niter821 = phi i32 [ 0, %.lr.ph.i235.preheader.new ], [ %niter821.next.3, %.lr.ph.i235 ]
  %i.chc = load i8, ptr %.282.i, align 1, !tbaa !29
  %i.chd = zext i8 %i.chc to i64
  %i.che = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chd
  %i.chf = load i8, ptr %i.che, align 1, !tbaa !29
  store i8 %i.chf, ptr %.282.i, align 1, !tbaa !29
  %i.chg = getelementptr inbounds nuw i8, ptr %.282.i, i64 1 ; 2 uses
  %i.chh = load i8, ptr %i.chg, align 1, !tbaa !29
  %i.chi = zext i8 %i.chh to i64
  %i.chj = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chi
  %i.chk = load i8, ptr %i.chj, align 1, !tbaa !29
  store i8 %i.chk, ptr %i.chg, align 1, !tbaa !29
  %i.chl = getelementptr inbounds nuw i8, ptr %.282.i, i64 2 ; 2 uses
  %i.chm = load i8, ptr %i.chl, align 1, !tbaa !29
  %i.chn = zext i8 %i.chm to i64
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chn
  %i.chp = load i8, ptr %i.cho, align 1, !tbaa !29
  store i8 %i.chp, ptr %i.chl, align 1, !tbaa !29
  %i.chq = getelementptr inbounds nuw i8, ptr %.282.i, i64 3 ; 2 uses
  %i.chr = load i8, ptr %i.chq, align 1, !tbaa !29
  %i.chs = zext i8 %i.chr to i64
  %i.cht = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chs
  %i.chu = load i8, ptr %i.cht, align 1, !tbaa !29
  store i8 %i.chu, ptr %i.chq, align 1, !tbaa !29
  %i.chv = getelementptr inbounds nuw i8, ptr %.282.i, i64 4 ; 2 uses
  %niter821.next.3 = add nuw i32 %niter821, 4     ; 2 uses
  %niter821.ncmp.3 = icmp eq i32 %niter821.next.3, %unroll_iter820
  br i1 %niter821.ncmp.3, label %png_do_quantize.exit.loopexit.unr-lcssa, label %.lr.ph.i235, !llvm.loop !281

.loopexit.sink.split.i:                           ; preds = %bb.hk, %bb.hj, %bb.hh, %bb.hg
  %.sink.i240 = phi i64 [ %i.cfn, %bb.hh ], [ %i.cfi, %bb.hg ], [ %i.cgs, %bb.hj ], [ %i.cgx, %bb.hk ]
  %i.chw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink.i240, ptr %i.chw, align 8, !tbaa !215
  br label %png_do_quantize.exit

png_do_quantize.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i235
  %lcmp.mod818.not = icmp eq i32 %xtraiter816, 0
  br i1 %lcmp.mod818.not, label %png_do_quantize.exit, label %.lr.ph.i235.epil.preheader

.lr.ph.i235.epil.preheader:                       ; preds = %png_do_quantize.exit.loopexit.unr-lcssa, %.lr.ph.i235.preheader
  %.282.i.epil.init = phi ptr [ %i.cds, %.lr.ph.i235.preheader ], [ %i.chv, %png_do_quantize.exit.loopexit.unr-lcssa ]
  %lcmp.mod819 = icmp ne i32 %xtraiter816, 0
  tail call void @llvm.assume(i1 %lcmp.mod819)
  br label %.lr.ph.i235.epil

.lr.ph.i235.epil:                                 ; preds = %.lr.ph.i235.epil, %.lr.ph.i235.epil.preheader
  %.282.i.epil = phi ptr [ %i.cib, %.lr.ph.i235.epil ], [ %.282.i.epil.init, %.lr.ph.i235.epil.preheader ] ; 3 uses
  %epil.iter817 = phi i32 [ %epil.iter817.next, %.lr.ph.i235.epil ], [ 0, %.lr.ph.i235.epil.preheader ]
  %i.chx = load i8, ptr %.282.i.epil, align 1, !tbaa !29
  %i.chy = zext i8 %i.chx to i64
  %i.chz = getelementptr inbounds nuw i8, ptr %i.cdw, i64 %i.chy
  %i.cia = load i8, ptr %i.chz, align 1, !tbaa !29
  store i8 %i.cia, ptr %.282.i.epil, align 1, !tbaa !29
  %i.cib = getelementptr inbounds nuw i8, ptr %.282.i.epil, i64 1
  %epil.iter817.next = add i32 %epil.iter817, 1   ; 2 uses
  %epil.iter817.cmp.not = icmp eq i32 %epil.iter817.next, %xtraiter816
  br i1 %epil.iter817.cmp.not, label %png_do_quantize.exit, label %.lr.ph.i235.epil, !llvm.loop !282

png_do_quantize.exit:                             ; preds = %png_do_quantize.exit.loopexit.unr-lcssa, %.lr.ph.i235.epil, %bb.he, %bb.hl, %.loopexit.sink.split.i
  %i.cic = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cid = load i64, ptr %i.cic, align 8, !tbaa !215
  %i.cie = icmp eq i64 %i.cid, 0
  br i1 %i.cie, label %bb.hm, label %png_do_quantize.exit._crit_edge

png_do_quantize.exit._crit_edge:                  ; preds = %png_do_quantize.exit
  %.pre404 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.hn

bb.hm:                                            ; preds = %png_do_quantize.exit
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #12
  unreachable

bb.hn:                                            ; preds = %png_do_quantize.exit._crit_edge, %png_do_chop.exit
  %i.cif = phi i32 [ %.pre404, %png_do_quantize.exit._crit_edge ], [ %i.cdp, %png_do_chop.exit ] ; 5 uses
  %i.cig = and i32 %i.cif, 512
  %.not160 = icmp eq i32 %i.cig, 0
  br i1 %.not160, label %png_do_expand_16.exit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.cih = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 1
  %i.cij = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.cik = load i8, ptr %i.cij, align 1, !tbaa !210
  %i.cil = icmp eq i8 %i.cik, 8
  br i1 %i.cil, label %bb.hp, label %png_do_expand_16.exit

bb.hp:                                            ; preds = %bb.ho
  %i.cim = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cin = load i8, ptr %i.cim, align 8, !tbaa !207
  %.not.i242 = icmp eq i8 %i.cin, 3
  br i1 %.not.i242, label %png_do_expand_16.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.cio = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cip = load i64, ptr %i.cio, align 8, !tbaa !215 ; 3 uses
  %.not19.i = icmp eq i64 %i.cip, 0
  br i1 %.not19.i, label %._crit_edge.i248, label %.lr.ph.preheader.i243

.lr.ph.preheader.i243:                            ; preds = %bb.hq
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cii, i64 %i.cip ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 %i.cip
  br label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %.lr.ph.i244, %.lr.ph.preheader.i243
  %.018.i245 = phi ptr [ %i.civ, %.lr.ph.i244 ], [ %i.cir, %.lr.ph.preheader.i243 ] ; 2 uses
  %.01617.i246 = phi ptr [ %i.cis, %.lr.ph.i244 ], [ %i.ciq, %.lr.ph.preheader.i243 ]
  %i.cis = getelementptr inbounds i8, ptr %.01617.i246, i64 -1 ; 3 uses
  %i.cit = load i8, ptr %i.cis, align 1, !tbaa !29 ; 2 uses
  %i.ciu = getelementptr inbounds i8, ptr %.018.i245, i64 -1
  store i8 %i.cit, ptr %i.ciu, align 1, !tbaa !29
  %i.civ = getelementptr inbounds i8, ptr %.018.i245, i64 -2 ; 3 uses
  store i8 %i.cit, ptr %i.civ, align 1, !tbaa !29
  %i.ciw = icmp ugt ptr %i.civ, %i.cis
  br i1 %i.ciw, label %.lr.ph.i244, label %._crit_edge.loopexit.i, !llvm.loop !283

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i244
  %.pre.i247 = load i64, ptr %i.cio, align 8, !tbaa !215
  %i.cix = shl i64 %.pre.i247, 1
  %.pre405.pre = load i32, ptr %i.h, align 4, !tbaa !27
  br label %._crit_edge.i248

._crit_edge.i248:                                 ; preds = %._crit_edge.loopexit.i, %bb.hq
  %.pre405 = phi i32 [ %.pre405.pre, %._crit_edge.loopexit.i ], [ %i.cif, %bb.hq ]
  %i.ciy = phi i64 [ %i.cix, %._crit_edge.loopexit.i ], [ 0, %bb.hq ]
  store i64 %i.ciy, ptr %i.cio, align 8, !tbaa !215
  store i8 16, ptr %i.cij, align 1, !tbaa !210
  %i.ciz = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cja = load i8, ptr %i.ciz, align 2, !tbaa !218
  %i.cjb = shl i8 %i.cja, 4
  %i.cjc = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cjb, ptr %i.cjc, align 1, !tbaa !214
  br label %png_do_expand_16.exit

png_do_expand_16.exit:                            ; preds = %._crit_edge.i248, %bb.hp, %bb.ho, %bb.hn
  %i.cjd = phi i32 [ %.pre405, %._crit_edge.i248 ], [ %i.cif, %bb.hp ], [ %i.cif, %bb.ho ], [ %i.cif, %bb.hn ] ; 3 uses
  %i.cje = and i32 %i.cjd, 16384
  %.not161 = icmp eq i32 %i.cje, 0
  br i1 %.not161, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %png_do_expand_16.exit
  %i.cjf = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.cjg = load i32, ptr %i.cjf, align 4, !tbaa !130
  %i.cjh = and i32 %i.cjg, 2048
  %.not162 = icmp eq i32 %i.cjh, 0
  br i1 %.not162, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.cji = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cji, i64 1
  tail call fastcc void @png_do_gray_to_rgb(ptr noundef %1, ptr noundef nonnull %i.cjj)
  %.pre406 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %png_do_expand_16.exit
  %i.cjk = phi i32 [ %.pre406, %bb.hs ], [ %i.cjd, %bb.hr ], [ %i.cjd, %png_do_expand_16.exit ] ; 2 uses
  %i.cjl = and i32 %i.cjk, 32
  %.not163 = icmp eq i32 %i.cjl, 0
  br i1 %.not163, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.cjm = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 1
  tail call void @png_do_invert(ptr noundef %1, ptr noundef nonnull %i.cjn) #11
  %.pre407 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.cjo = phi i32 [ %.pre407, %bb.hu ], [ %i.cjk, %bb.ht ]
  %i.cjp = and i32 %i.cjo, 524288
  %.not164 = icmp eq i32 %i.cjp, 0
  br i1 %.not164, label %png_do_read_invert_alpha.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.cjq = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 1 ; 4 uses
  %i.cjs = load i32, ptr %1, align 8, !tbaa !209  ; 16 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cju = load i8, ptr %i.cjt, align 8, !tbaa !207
  switch i8 %i.cju, label %png_do_read_invert_alpha.exit [
    i8 6, label %bb.hx
    i8 4, label %bb.ia
  ]

bb.hx:                                            ; preds = %bb.hw
  %i.cjv = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cjw = load i8, ptr %i.cjv, align 1, !tbaa !210
  %i.cjx = icmp eq i8 %i.cjw, 8
  %.not77.i = icmp eq i32 %i.cjs, 0               ; 2 uses
  br i1 %i.cjx, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  br i1 %.not77.i, label %png_do_read_invert_alpha.exit, label %.lr.ph74.preheader.i

.lr.ph74.preheader.i:                             ; preds = %bb.hy
  %i.cjy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cjz = load i64, ptr %i.cjy, align 8, !tbaa !215
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.cjz ; 2 uses
  %xtraiter840 = and i32 %i.cjs, 3                ; 3 uses
  %i.ckb = icmp ult i32 %i.cjs, 4
  br i1 %i.ckb, label %.lr.ph74.i.epil.preheader, label %.lr.ph74.preheader.i.new

.lr.ph74.preheader.i.new:                         ; preds = %.lr.ph74.preheader.i
  %unroll_iter844 = and i32 %i.cjs, -4
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.preheader.i.new
  %.05772.i = phi ptr [ %i.cka, %.lr.ph74.preheader.i.new ], [ %i.cko, %.lr.ph74.i ] ; 5 uses
  %niter845 = phi i32 [ 0, %.lr.ph74.preheader.i.new ], [ %niter845.next.3, %.lr.ph74.i ]
  %i.ckc = getelementptr inbounds i8, ptr %.05772.i, i64 -1 ; 2 uses
  %i.ckd = load i8, ptr %i.ckc, align 1, !tbaa !29
  %i.cke = xor i8 %i.ckd, -1
  store i8 %i.cke, ptr %i.ckc, align 1, !tbaa !29
  %i.ckf = getelementptr inbounds i8, ptr %.05772.i, i64 -5 ; 2 uses
  %i.ckg = load i8, ptr %i.ckf, align 1, !tbaa !29
  %i.ckh = xor i8 %i.ckg, -1
  store i8 %i.ckh, ptr %i.ckf, align 1, !tbaa !29
  %i.cki = getelementptr inbounds i8, ptr %.05772.i, i64 -9 ; 2 uses
  %i.ckj = load i8, ptr %i.cki, align 1, !tbaa !29
  %i.ckk = xor i8 %i.ckj, -1
  store i8 %i.ckk, ptr %i.cki, align 1, !tbaa !29
  %i.ckl = getelementptr inbounds i8, ptr %.05772.i, i64 -13 ; 2 uses
  %i.ckm = load i8, ptr %i.ckl, align 1, !tbaa !29
  %i.ckn = xor i8 %i.ckm, -1
  store i8 %i.ckn, ptr %i.ckl, align 1, !tbaa !29
  %i.cko = getelementptr inbounds i8, ptr %.05772.i, i64 -16 ; 2 uses
  %niter845.next.3 = add nuw i32 %niter845, 4     ; 2 uses
  %niter845.ncmp.3 = icmp eq i32 %niter845.next.3, %unroll_iter844
  br i1 %niter845.ncmp.3, label %png_do_read_invert_alpha.exit.loopexit.unr-lcssa, label %.lr.ph74.i, !llvm.loop !284

bb.hz:                                            ; preds = %bb.hx
  br i1 %.not77.i, label %png_do_read_invert_alpha.exit, label %.lr.ph71.preheader.i

.lr.ph71.preheader.i:                             ; preds = %bb.hz
  %i.ckp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ckq = load i64, ptr %i.ckp, align 8, !tbaa !215
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.ckq ; 2 uses
  %xtraiter834 = and i32 %i.cjs, 1
  %i.cks = icmp eq i32 %i.cjs, 1
  br i1 %i.cks, label %.lr.ph71.i.epil.preheader, label %.lr.ph71.preheader.i.new

.lr.ph71.preheader.i.new:                         ; preds = %.lr.ph71.preheader.i
  %unroll_iter838 = and i32 %i.cjs, -2
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i, %.lr.ph71.preheader.i.new
  %.05469.i = phi ptr [ %i.ckr, %.lr.ph71.preheader.i.new ], [ %i.clf, %.lr.ph71.i ] ; 5 uses
  %niter839 = phi i32 [ 0, %.lr.ph71.preheader.i.new ], [ %niter839.next.1, %.lr.ph71.i ]
  %i.ckt = getelementptr inbounds i8, ptr %.05469.i, i64 -1 ; 2 uses
  %i.cku = load i8, ptr %i.ckt, align 1, !tbaa !29
  %i.ckv = xor i8 %i.cku, -1
  store i8 %i.ckv, ptr %i.ckt, align 1, !tbaa !29
  %i.ckw = getelementptr inbounds i8, ptr %.05469.i, i64 -2 ; 2 uses
  %i.ckx = load i8, ptr %i.ckw, align 1, !tbaa !29
  %i.cky = xor i8 %i.ckx, -1
  store i8 %i.cky, ptr %i.ckw, align 1, !tbaa !29
  %i.ckz = getelementptr inbounds i8, ptr %.05469.i, i64 -9 ; 2 uses
  %i.cla = load i8, ptr %i.ckz, align 1, !tbaa !29
  %i.clb = xor i8 %i.cla, -1
  store i8 %i.clb, ptr %i.ckz, align 1, !tbaa !29
  %i.clc = getelementptr inbounds i8, ptr %.05469.i, i64 -10 ; 2 uses
  %i.cld = load i8, ptr %i.clc, align 1, !tbaa !29
  %i.cle = xor i8 %i.cld, -1
  store i8 %i.cle, ptr %i.clc, align 1, !tbaa !29
  %i.clf = getelementptr inbounds i8, ptr %.05469.i, i64 -16 ; 2 uses
  %niter839.next.1 = add nuw i32 %niter839, 2     ; 2 uses
  %niter839.ncmp.1 = icmp eq i32 %niter839.next.1, %unroll_iter838
  br i1 %niter839.ncmp.1, label %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa, label %.lr.ph71.i, !llvm.loop !285

bb.ia:                                            ; preds = %bb.hw
  %i.clg = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.clh = load i8, ptr %i.clg, align 1, !tbaa !210
  %i.cli = icmp eq i8 %i.clh, 8
  %.not75.i = icmp eq i32 %i.cjs, 0               ; 2 uses
  br i1 %i.cli, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  br i1 %.not75.i, label %png_do_read_invert_alpha.exit, label %.lr.ph68.preheader.i

.lr.ph68.preheader.i:                             ; preds = %bb.ib
  %i.clj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.clk = load i64, ptr %i.clj, align 8, !tbaa !215
  %i.cll = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.clk ; 2 uses
  %xtraiter828 = and i32 %i.cjs, 3                ; 3 uses
  %i.clm = icmp ult i32 %i.cjs, 4
  br i1 %i.clm, label %.lr.ph68.i.epil.preheader, label %.lr.ph68.preheader.i.new

.lr.ph68.preheader.i.new:                         ; preds = %.lr.ph68.preheader.i
  %unroll_iter832 = and i32 %i.cjs, -4
  br label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i, %.lr.ph68.preheader.i.new
  %.05166.i = phi ptr [ %i.cll, %.lr.ph68.preheader.i.new ], [ %i.clz, %.lr.ph68.i ] ; 5 uses
  %niter833 = phi i32 [ 0, %.lr.ph68.preheader.i.new ], [ %niter833.next.3, %.lr.ph68.i ]
  %i.cln = getelementptr inbounds i8, ptr %.05166.i, i64 -1 ; 2 uses
  %i.clo = load i8, ptr %i.cln, align 1, !tbaa !29
  %i.clp = xor i8 %i.clo, -1
  store i8 %i.clp, ptr %i.cln, align 1, !tbaa !29
  %i.clq = getelementptr i8, ptr %.05166.i, i64 -3 ; 2 uses
  %i.clr = load i8, ptr %i.clq, align 1, !tbaa !29
  %i.cls = xor i8 %i.clr, -1
  store i8 %i.cls, ptr %i.clq, align 1, !tbaa !29
  %i.clt = getelementptr i8, ptr %.05166.i, i64 -5 ; 2 uses
  %i.clu = load i8, ptr %i.clt, align 1, !tbaa !29
  %i.clv = xor i8 %i.clu, -1
  store i8 %i.clv, ptr %i.clt, align 1, !tbaa !29
  %i.clw = getelementptr i8, ptr %.05166.i, i64 -7 ; 2 uses
  %i.clx = load i8, ptr %i.clw, align 1, !tbaa !29
  %i.cly = xor i8 %i.clx, -1
  store i8 %i.cly, ptr %i.clw, align 1, !tbaa !29
  %i.clz = getelementptr i8, ptr %.05166.i, i64 -8 ; 2 uses
  %niter833.next.3 = add nuw i32 %niter833, 4     ; 2 uses
  %niter833.ncmp.3 = icmp eq i32 %niter833.next.3, %unroll_iter832
  br i1 %niter833.ncmp.3, label %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa, label %.lr.ph68.i, !llvm.loop !286

bb.ic:                                            ; preds = %bb.ia
  br i1 %.not75.i, label %png_do_read_invert_alpha.exit, label %.lr.ph.preheader.i249

.lr.ph.preheader.i249:                            ; preds = %bb.ic
  %i.cma = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cmb = load i64, ptr %i.cma, align 8, !tbaa !215
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.cjr, i64 %i.cmb ; 2 uses
  %xtraiter822 = and i32 %i.cjs, 1
  %i.cmd = icmp eq i32 %i.cjs, 1
  br i1 %i.cmd, label %.lr.ph.i250.epil.preheader, label %.lr.ph.preheader.i249.new

.lr.ph.preheader.i249.new:                        ; preds = %.lr.ph.preheader.i249
  %unroll_iter826 = and i32 %i.cjs, -2
  br label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %.lr.ph.i250, %.lr.ph.preheader.i249.new
  %.04863.i = phi ptr [ %i.cmc, %.lr.ph.preheader.i249.new ], [ %i.cmq, %.lr.ph.i250 ] ; 5 uses
  %niter827 = phi i32 [ 0, %.lr.ph.preheader.i249.new ], [ %niter827.next.1, %.lr.ph.i250 ]
  %i.cme = getelementptr inbounds i8, ptr %.04863.i, i64 -1 ; 2 uses
  %i.cmf = load i8, ptr %i.cme, align 1, !tbaa !29
  %i.cmg = xor i8 %i.cmf, -1
  store i8 %i.cmg, ptr %i.cme, align 1, !tbaa !29
  %i.cmh = getelementptr inbounds i8, ptr %.04863.i, i64 -2 ; 2 uses
  %i.cmi = load i8, ptr %i.cmh, align 1, !tbaa !29
  %i.cmj = xor i8 %i.cmi, -1
  store i8 %i.cmj, ptr %i.cmh, align 1, !tbaa !29
  %i.cmk = getelementptr inbounds i8, ptr %.04863.i, i64 -5 ; 2 uses
  %i.cml = load i8, ptr %i.cmk, align 1, !tbaa !29
  %i.cmm = xor i8 %i.cml, -1
  store i8 %i.cmm, ptr %i.cmk, align 1, !tbaa !29
  %i.cmn = getelementptr inbounds i8, ptr %.04863.i, i64 -6 ; 2 uses
  %i.cmo = load i8, ptr %i.cmn, align 1, !tbaa !29
  %i.cmp = xor i8 %i.cmo, -1
  store i8 %i.cmp, ptr %i.cmn, align 1, !tbaa !29
  %i.cmq = getelementptr inbounds i8, ptr %.04863.i, i64 -8 ; 2 uses
  %niter827.next.1 = add nuw i32 %niter827, 2     ; 2 uses
  %niter827.ncmp.1 = icmp eq i32 %niter827.next.1, %unroll_iter826
  br i1 %niter827.ncmp.1, label %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa, label %.lr.ph.i250, !llvm.loop !287

png_do_read_invert_alpha.exit.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod842.not = icmp eq i32 %xtraiter840, 0
  br i1 %lcmp.mod842.not, label %png_do_read_invert_alpha.exit, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph74.preheader.i
  %.05772.i.epil.init = phi ptr [ %i.cka, %.lr.ph74.preheader.i ], [ %i.cko, %png_do_read_invert_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod843 = icmp ne i32 %xtraiter840, 0
  tail call void @llvm.assume(i1 %lcmp.mod843)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %.05772.i.epil = phi ptr [ %i.cmu, %.lr.ph74.i.epil ], [ %.05772.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 2 uses
  %epil.iter841 = phi i32 [ %epil.iter841.next, %.lr.ph74.i.epil ], [ 0, %.lr.ph74.i.epil.preheader ]
  %i.cmr = getelementptr inbounds i8, ptr %.05772.i.epil, i64 -1 ; 2 uses
  %i.cms = load i8, ptr %i.cmr, align 1, !tbaa !29
  %i.cmt = xor i8 %i.cms, -1
  store i8 %i.cmt, ptr %i.cmr, align 1, !tbaa !29
  %i.cmu = getelementptr inbounds i8, ptr %.05772.i.epil, i64 -4
  %epil.iter841.next = add i32 %epil.iter841, 1   ; 2 uses
  %epil.iter841.cmp.not = icmp eq i32 %epil.iter841.next, %xtraiter840
  br i1 %epil.iter841.cmp.not, label %png_do_read_invert_alpha.exit, label %.lr.ph74.i.epil, !llvm.loop !288

png_do_read_invert_alpha.exit.loopexit701.unr-lcssa: ; preds = %.lr.ph71.i
  %lcmp.mod836.not = icmp eq i32 %xtraiter834, 0
  br i1 %lcmp.mod836.not, label %png_do_read_invert_alpha.exit, label %.lr.ph71.i.epil.preheader

.lr.ph71.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa, %.lr.ph71.preheader.i
  %.05469.i.epil.init = phi ptr [ %i.ckr, %.lr.ph71.preheader.i ], [ %i.clf, %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa ] ; 2 uses
  %lcmp.mod837 = trunc i32 %i.cjs to i1
  tail call void @llvm.assume(i1 %lcmp.mod837)
  %i.cmv = getelementptr inbounds i8, ptr %.05469.i.epil.init, i64 -1 ; 2 uses
  %i.cmw = load i8, ptr %i.cmv, align 1, !tbaa !29
  %i.cmx = xor i8 %i.cmw, -1
  store i8 %i.cmx, ptr %i.cmv, align 1, !tbaa !29
  %i.cmy = getelementptr inbounds i8, ptr %.05469.i.epil.init, i64 -2 ; 2 uses
  %i.cmz = load i8, ptr %i.cmy, align 1, !tbaa !29
  %i.cna = xor i8 %i.cmz, -1
  store i8 %i.cna, ptr %i.cmy, align 1, !tbaa !29
  br label %png_do_read_invert_alpha.exit

png_do_read_invert_alpha.exit.loopexit702.unr-lcssa: ; preds = %.lr.ph68.i
  %lcmp.mod830.not = icmp eq i32 %xtraiter828, 0
  br i1 %lcmp.mod830.not, label %png_do_read_invert_alpha.exit, label %.lr.ph68.i.epil.preheader

.lr.ph68.i.epil.preheader:                        ; preds = %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa, %.lr.ph68.preheader.i
  %.05166.i.epil.init = phi ptr [ %i.cll, %.lr.ph68.preheader.i ], [ %i.clz, %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa ]
  %lcmp.mod831 = icmp ne i32 %xtraiter828, 0
  tail call void @llvm.assume(i1 %lcmp.mod831)
  br label %.lr.ph68.i.epil

.lr.ph68.i.epil:                                  ; preds = %.lr.ph68.i.epil, %.lr.ph68.i.epil.preheader
  %.05166.i.epil = phi ptr [ %i.cne, %.lr.ph68.i.epil ], [ %.05166.i.epil.init, %.lr.ph68.i.epil.preheader ] ; 2 uses
  %epil.iter829 = phi i32 [ %epil.iter829.next, %.lr.ph68.i.epil ], [ 0, %.lr.ph68.i.epil.preheader ]
  %i.cnb = getelementptr inbounds i8, ptr %.05166.i.epil, i64 -1 ; 2 uses
  %i.cnc = load i8, ptr %i.cnb, align 1, !tbaa !29
  %i.cnd = xor i8 %i.cnc, -1
  store i8 %i.cnd, ptr %i.cnb, align 1, !tbaa !29
  %i.cne = getelementptr i8, ptr %.05166.i.epil, i64 -2
  %epil.iter829.next = add i32 %epil.iter829, 1   ; 2 uses
  %epil.iter829.cmp.not = icmp eq i32 %epil.iter829.next, %xtraiter828
  br i1 %epil.iter829.cmp.not, label %png_do_read_invert_alpha.exit, label %.lr.ph68.i.epil, !llvm.loop !289

png_do_read_invert_alpha.exit.loopexit703.unr-lcssa: ; preds = %.lr.ph.i250
  %lcmp.mod824.not = icmp eq i32 %xtraiter822, 0
  br i1 %lcmp.mod824.not, label %png_do_read_invert_alpha.exit, label %.lr.ph.i250.epil.preheader

.lr.ph.i250.epil.preheader:                       ; preds = %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa, %.lr.ph.preheader.i249
  %.04863.i.epil.init = phi ptr [ %i.cmc, %.lr.ph.preheader.i249 ], [ %i.cmq, %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa ] ; 2 uses
  %lcmp.mod825 = trunc i32 %i.cjs to i1
  tail call void @llvm.assume(i1 %lcmp.mod825)
  %i.cnf = getelementptr inbounds i8, ptr %.04863.i.epil.init, i64 -1 ; 2 uses
  %i.cng = load i8, ptr %i.cnf, align 1, !tbaa !29
  %i.cnh = xor i8 %i.cng, -1
  store i8 %i.cnh, ptr %i.cnf, align 1, !tbaa !29
  %i.cni = getelementptr inbounds i8, ptr %.04863.i.epil.init, i64 -2 ; 2 uses
  %i.cnj = load i8, ptr %i.cni, align 1, !tbaa !29
  %i.cnk = xor i8 %i.cnj, -1
  store i8 %i.cnk, ptr %i.cni, align 1, !tbaa !29
  br label %png_do_read_invert_alpha.exit

png_do_read_invert_alpha.exit:                    ; preds = %.lr.ph.i250.epil.preheader, %png_do_read_invert_alpha.exit.loopexit703.unr-lcssa, %png_do_read_invert_alpha.exit.loopexit702.unr-lcssa, %.lr.ph68.i.epil, %.lr.ph71.i.epil.preheader, %png_do_read_invert_alpha.exit.loopexit701.unr-lcssa, %png_do_read_invert_alpha.exit.loopexit.unr-lcssa, %.lr.ph74.i.epil, %bb.ic, %bb.ib, %bb.hz, %bb.hy, %bb.hw, %bb.hv
  %i.cnl = load i32, ptr %i.h, align 4, !tbaa !27 ; 3 uses
  %i.cnm = and i32 %i.cnl, 8
  %.not165 = icmp eq i32 %i.cnm, 0
  br i1 %.not165, label %png_do_unshift.exit, label %bb.id

bb.id:                                            ; preds = %png_do_read_invert_alpha.exit
  %i.cnn = load ptr, ptr %i.b, align 8, !tbaa !206 ; 2 uses
  %i.cno = ptrtoint ptr %i.cnn to i64             ; 6 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cnn, i64 1 ; 16 uses
  %i.cnq = getelementptr inbounds nuw i8, ptr %0, i64 789
  %i.cnr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cns = load i8, ptr %i.cnr, align 8, !tbaa !207 ; 2 uses
  %i.cnt = zext i8 %i.cns to i32                  ; 2 uses
  %.not.i253 = icmp eq i8 %i.cns, 3
  br i1 %.not.i253, label %png_do_unshift.exit, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cnu = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cnv = load i8, ptr %i.cnu, align 1, !tbaa !210
  %i.cnw = zext i8 %i.cnv to i32                  ; 10 uses
  %i.cnx = and i32 %i.cnt, 2
  %.not92.i = icmp eq i32 %i.cnx, 0
  br i1 %.not92.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.cny = load i8, ptr %i.cnq, align 1, !tbaa !290
  %i.cnz = getelementptr inbounds nuw i8, ptr %0, i64 790
  %i.coa = load i8, ptr %i.cnz, align 2, !tbaa !291
  %i.cob = zext i8 %i.coa to i32
  %i.coc = sub nsw i32 %i.cnw, %i.cob
  %i.cod = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.coc, ptr %i.cod, align 4, !tbaa !3
  %i.coe = getelementptr inbounds nuw i8, ptr %0, i64 791
  %i.cof = load i8, ptr %i.coe, align 1, !tbaa !292
  %i.cog = zext i8 %i.cof to i32
  %i.coh = sub nsw i32 %i.cnw, %i.cog
  %i.coi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.coh, ptr %i.coi, align 8, !tbaa !3
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ie
  %i.coj = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.cok = load i8, ptr %i.coj, align 8, !tbaa !293
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %.pn.in.i = phi i8 [ %i.cok, %bb.ig ], [ %i.cny, %bb.if ]
  %.0.i = phi i32 [ 1, %bb.ig ], [ 3, %bb.if ]    ; 3 uses
  %.pn.i254 = zext i8 %.pn.in.i to i32
  %.sink.i255 = sub nsw i32 %i.cnw, %.pn.i254
  store i32 %.sink.i255, ptr %i.a, align 16, !tbaa !3
  %i.col = and i32 %i.cnt, 4
  %.not93.i256 = icmp eq i32 %i.col, 0
  br i1 %.not93.i256, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.com = getelementptr inbounds nuw i8, ptr %0, i64 793
  %i.con = load i8, ptr %i.com, align 1, !tbaa !294
  %i.coo = zext i8 %i.con to i32
  %i.cop = sub nsw i32 %i.cnw, %i.coo
  %i.coq = add nuw nsw i32 %.0.i, 1
  %i.cor = zext nneg i32 %.0.i to i64
  %i.cos = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cor
  store i32 %i.cop, ptr %i.cos, align 4, !tbaa !3
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ih, %bb.ii
  %.1.i257 = phi i32 [ %i.coq, %bb.ii ], [ %.0.i, %bb.ih ] ; 5 uses
  %i.cot = load i32, ptr %i.a, align 16, !tbaa !3 ; 3 uses
  %i.cou = icmp sgt i32 %i.cot, 0
  %.not97.i = icmp slt i32 %i.cot, %i.cnw
  %or.cond.i258 = select i1 %i.cou, i1 %.not97.i, i1 false ; 2 uses
  %spec.store.select98.i = select i1 %or.cond.i258, i32 %i.cot, i32 0
  store i32 %spec.store.select98.i, ptr %i.a, align 16
  %spec.select.i = zext i1 %or.cond.i258 to i32   ; 2 uses
  %exitcond.not.i259 = icmp eq i32 %.1.i257, 1
  br i1 %exitcond.not.i259, label %bb.in, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.cov = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !3 ; 3 uses
  %i.cox = icmp sgt i32 %i.cow, 0
  %.not97.i.1 = icmp slt i32 %i.cow, %i.cnw
  %or.cond.i258.1 = select i1 %i.cox, i1 %.not97.i.1, i1 false ; 2 uses
  %spec.store.select98.i.1 = select i1 %or.cond.i258.1, i32 %i.cow, i32 0
  store i32 %spec.store.select98.i.1, ptr %i.cov, align 4
  %spec.select.i.1 = select i1 %or.cond.i258.1, i32 1, i32 %spec.select.i ; 2 uses
  %exitcond.not.i259.1 = icmp eq i32 %.1.i257, 2
  br i1 %exitcond.not.i259.1, label %bb.in, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.coy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.coz = load i32, ptr %i.coy, align 8, !tbaa !3 ; 3 uses
  %i.cpa = icmp sgt i32 %i.coz, 0
  %.not97.i.2 = icmp slt i32 %i.coz, %i.cnw
  %or.cond.i258.2 = select i1 %i.cpa, i1 %.not97.i.2, i1 false ; 2 uses
  %spec.store.select98.i.2 = select i1 %or.cond.i258.2, i32 %i.coz, i32 0
  store i32 %spec.store.select98.i.2, ptr %i.coy, align 8
  %spec.select.i.2 = select i1 %or.cond.i258.2, i32 1, i32 %spec.select.i.1 ; 2 uses
  %exitcond.not.i259.2 = icmp eq i32 %.1.i257, 3
  br i1 %exitcond.not.i259.2, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.cpc = load i32, ptr %i.cpb, align 4, !tbaa !3 ; 3 uses
  %i.cpd = icmp sgt i32 %i.cpc, 0
  %.not97.i.3 = icmp slt i32 %i.cpc, %i.cnw
  %or.cond.i258.3 = select i1 %i.cpd, i1 %.not97.i.3, i1 false ; 2 uses
  %spec.store.select98.i.3 = select i1 %or.cond.i258.3, i32 %i.cpc, i32 0
  store i32 %spec.store.select98.i.3, ptr %i.cpb, align 4
  %spec.select.i.3 = select i1 %or.cond.i258.3, i32 1, i32 %spec.select.i.2
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il, %bb.ik, %bb.ij
  %spec.select.i.lcssa = phi i32 [ %spec.select.i, %bb.ij ], [ %spec.select.i.1, %bb.ik ], [ %spec.select.i.2, %bb.il ], [ %spec.select.i.3, %bb.im ]
end_hunk_3
begin_hunk_4_@png_do_read_transformations:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cnp, i64 %index ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %i.cqr = zext <16 x i8> %wide.load to <16 x i32>
  %i.cqs = lshr <16 x i32> %i.cqr, %broadcast.splat
  %i.cqt = and <16 x i32> %i.cqs, %broadcast.splat643
  %i.cqu = trunc nuw <16 x i32> %i.cqt to <16 x i8>
  store <16 x i8> %i.cqu, ptr %next.gep, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cqv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cqv, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cqp, %n.vec
  br i1 %cmp.n, label %.sink.split.i260, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph110.i.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec645 = and i64 %i.cqp, -4                  ; 3 uses
  %i.cqw = getelementptr i8, ptr %i.cnp, i64 %n.vec645
  %broadcast.splatinsert646 = insertelement <4 x i32> poison, i32 %i.cqi, i64 0
  %broadcast.splat647 = shufflevector <4 x i32> %broadcast.splatinsert646, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert648 = insertelement <4 x i32> poison, i32 %i.cqk, i64 0
  %broadcast.splat649 = shufflevector <4 x i32> %broadcast.splatinsert648, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index650 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next653, %vec.epilog.vector.body ] ; 2 uses
  %next.gep651 = getelementptr i8, ptr %i.cnp, i64 %index650 ; 2 uses
  %wide.load652 = load <4 x i8>, ptr %next.gep651, align 1, !tbaa !29
  %i.cqx = zext <4 x i8> %wide.load652 to <4 x i32>
  %i.cqy = lshr <4 x i32> %i.cqx, %broadcast.splat647
  %i.cqz = and <4 x i32> %i.cqy, %broadcast.splat649
  %i.cra = trunc nuw <4 x i32> %i.cqz to <4 x i8>
  store <4 x i8> %i.cra, ptr %next.gep651, align 1, !tbaa !29
  %index.next653 = add nuw i64 %index650, 4       ; 2 uses
  %i.crb = icmp eq i64 %index.next653, %n.vec645
  br i1 %i.crb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !300

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n654 = icmp eq i64 %i.cqp, %n.vec645
  br i1 %cmp.n654, label %.sink.split.i260, label %.lr.ph110.i.preheader

.lr.ph110.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.089109.i.ph = phi ptr [ %i.cnp, %iter.check ], [ %i.cqq, %vec.epilog.iter.check ], [ %i.cqw, %vec.epilog.middle.block ]
  br label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.i.preheader, %.lr.ph110.i
  %.089109.i = phi ptr [ %i.crh, %.lr.ph110.i ], [ %.089109.i.ph, %.lr.ph110.i.preheader ] ; 3 uses
  %i.crc = load i8, ptr %.089109.i, align 1, !tbaa !29
  %i.crd = zext i8 %i.crc to i32
  %i.cre = lshr i32 %i.crd, %i.cqi
  %i.crf = and i32 %i.cre, %i.cqk
  %i.crg = trunc nuw i32 %i.crf to i8
  %i.crh = getelementptr inbounds nuw i8, ptr %.089109.i, i64 1 ; 2 uses
  store i8 %i.crg, ptr %.089109.i, align 1, !tbaa !29
  %i.cri = icmp ult ptr %i.crh, %i.cqh
  br i1 %i.cri, label %.lr.ph110.i, label %.sink.split.i260, !llvm.loop !301

bb.iq:                                            ; preds = %.split.i261
  %i.crj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.crk = load i64, ptr %i.crj, align 8, !tbaa !215 ; 2 uses
  %i.crl = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %i.crk
  %.not114.i = icmp eq i64 %i.crk, 0
  br i1 %.not114.i, label %.sink.split.i260, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.iq, %.lr.ph108.i
  %.084107.i = phi i32 [ %spec.store.select.i, %.lr.ph108.i ], [ 0, %bb.iq ] ; 2 uses
  %.087106.i = phi ptr [ %i.cru, %.lr.ph108.i ], [ %i.cnp, %bb.iq ] ; 3 uses
  %i.crm = load i8, ptr %.087106.i, align 1, !tbaa !29
  %i.crn = zext i8 %i.crm to i32
  %i.cro = sext i32 %.084107.i to i64
  %i.crp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cro
  %i.crq = load i32, ptr %i.crp, align 4, !tbaa !3
  %i.crr = lshr i32 %i.crn, %i.crq
  %i.crs = add nsw i32 %.084107.i, 1              ; 2 uses
  %.not96.i = icmp slt i32 %i.crs, %.1.i257
  %spec.store.select.i = select i1 %.not96.i, i32 %i.crs, i32 0
  %i.crt = trunc nuw i32 %i.crr to i8
  %i.cru = getelementptr inbounds nuw i8, ptr %.087106.i, i64 1 ; 2 uses
  store i8 %i.crt, ptr %.087106.i, align 1, !tbaa !29
  %i.crv = icmp ult ptr %i.cru, %i.crl
  br i1 %i.crv, label %.lr.ph108.i, label %.sink.split.i260, !llvm.loop !302

bb.ir:                                            ; preds = %.split.i261
  %i.crw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.crx = load i64, ptr %i.crw, align 8, !tbaa !215 ; 2 uses
  %i.cry = getelementptr inbounds nuw i8, ptr %i.cnp, i64 %i.crx
  %.not113.i = icmp eq i64 %i.crx, 0
  br i1 %.not113.i, label %.sink.split.i260, label %.lr.ph.i262

.lr.ph.i262:                                      ; preds = %bb.ir, %.lr.ph.i262
  %.079105.i = phi i32 [ %spec.store.select2.i, %.lr.ph.i262 ], [ 0, %bb.ir ] ; 2 uses
  %.081104.i = phi ptr [ %i.cso, %.lr.ph.i262 ], [ %i.cnp, %bb.ir ] ; 4 uses
  %i.crz = load i8, ptr %.081104.i, align 1, !tbaa !29
  %i.csa = zext i8 %i.crz to i32
  %i.csb = shl nuw nsw i32 %i.csa, 8
  %i.csc = getelementptr inbounds nuw i8, ptr %.081104.i, i64 1 ; 2 uses
  %i.csd = load i8, ptr %i.csc, align 1, !tbaa !29
  %i.cse = zext i8 %i.csd to i32
  %i.csf = or disjoint i32 %i.csb, %i.cse
  %i.csg = sext i32 %.079105.i to i64
  %i.csh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.csg
  %i.csi = load i32, ptr %i.csh, align 4, !tbaa !3
  %i.csj = lshr i32 %i.csf, %i.csi                ; 2 uses
  %i.csk = add nsw i32 %.079105.i, 1              ; 2 uses
  %.not95.i = icmp slt i32 %i.csk, %.1.i257
  %spec.store.select2.i = select i1 %.not95.i, i32 %i.csk, i32 0
  %i.csl = lshr i32 %i.csj, 8
  %i.csm = trunc nuw i32 %i.csl to i8
  store i8 %i.csm, ptr %.081104.i, align 1, !tbaa !29
  %i.csn = trunc i32 %i.csj to i8
  %i.cso = getelementptr inbounds nuw i8, ptr %.081104.i, i64 2 ; 2 uses
  store i8 %i.csn, ptr %i.csc, align 1, !tbaa !29
  %i.csp = icmp ult ptr %i.cso, %i.cry
  br i1 %i.csp, label %.lr.ph.i262, label %.sink.split.i260, !llvm.loop !303

.sink.split.i260:                                 ; preds = %.lr.ph.i262, %.lr.ph108.i, %.lr.ph110.i, %.lr.ph112.i, %middle.block, %vec.epilog.middle.block, %middle.block669, %vec.epilog.middle.block684, %bb.ir, %bb.iq, %bb.ip, %bb.io, %.split.i261, %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.pre408 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %png_do_unshift.exit

png_do_unshift.exit:                              ; preds = %.sink.split.i260, %bb.id, %png_do_read_invert_alpha.exit
  %i.csq = phi i32 [ %.pre408, %.sink.split.i260 ], [ %i.cnl, %bb.id ], [ %i.cnl, %png_do_read_invert_alpha.exit ]
  %i.csr = and i32 %i.csq, 4
  %.not166 = icmp eq i32 %i.csr, 0
  br i1 %.not166, label %png_do_unpack.exit, label %bb.is

bb.is:                                            ; preds = %png_do_unshift.exit
  %i.css = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cst = getelementptr inbounds nuw i8, ptr %i.css, i64 1 ; 6 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.csv = load i8, ptr %i.csu, align 1, !tbaa !210 ; 2 uses
  %i.csw = icmp ult i8 %i.csv, 8
  br i1 %i.csw, label %bb.it, label %png_do_unpack.exit

bb.it:                                            ; preds = %bb.is
  %i.csx = load i32, ptr %1, align 8, !tbaa !209  ; 22 uses
  switch i8 %i.csv, label %.loopexit.i268 [
    i8 1, label %bb.iu
    i8 2, label %bb.iv
    i8 4, label %bb.iw
  ]

bb.iu:                                            ; preds = %bb.it
  %.not88.i = icmp eq i32 %i.csx, 0
  br i1 %.not88.i, label %.loopexit.i268, label %.lr.ph85.preheader.i

.lr.ph85.preheader.i:                             ; preds = %bb.iu
  %i.csy = sub i32 0, %i.csx
  %i.csz = and i32 %i.csy, 7                      ; 2 uses
  %i.cta = zext i32 %i.csx to i64
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.cta ; 2 uses
  %i.ctc = add i32 %i.csx, -1                     ; 2 uses
  %i.ctd = lshr i32 %i.ctc, 3
  %i.cte = zext nneg i32 %i.ctd to i64
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.cte ; 2 uses
  %xtraiter858 = and i32 %i.csx, 1
  %i.ctg = icmp eq i32 %i.ctc, 0
  br i1 %i.ctg, label %.lr.ph85.i.epil.preheader, label %.lr.ph85.preheader.i.new

.lr.ph85.preheader.i.new:                         ; preds = %.lr.ph85.preheader.i
  %unroll_iter862 = and i32 %i.csx, -2
  br label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.lr.ph85.i, %.lr.ph85.preheader.i.new
  %.06084.i = phi i32 [ %i.csz, %.lr.ph85.preheader.i.new ], [ %.161.i.1, %.lr.ph85.i ] ; 3 uses
  %.pn6983.i = phi ptr [ %i.ctb, %.lr.ph85.preheader.i.new ], [ %.062.i.1, %.lr.ph85.i ] ; 2 uses
  %.06382.i = phi ptr [ %i.ctf, %.lr.ph85.preheader.i.new ], [ %.164.i.1, %.lr.ph85.i ] ; 2 uses
  %niter863 = phi i32 [ 0, %.lr.ph85.preheader.i.new ], [ %niter863.next.1, %.lr.ph85.i ]
  %.062.i = getelementptr inbounds i8, ptr %.pn6983.i, i64 -1
  %i.cth = load i8, ptr %.06382.i, align 1, !tbaa !29
  %i.cti = zext i8 %i.cth to i32
  %i.ctj = lshr i32 %i.cti, %.06084.i
  %i.ctk = trunc nuw i32 %i.ctj to i8
  %i.ctl = and i8 %i.ctk, 1
  store i8 %i.ctl, ptr %.062.i, align 1, !tbaa !29
  %i.ctm = icmp eq i32 %.06084.i, 7               ; 2 uses
  %i.ctn = add nuw nsw i32 %.06084.i, 1
  %.164.idx.i = sext i1 %i.ctm to i64
  %.164.i = getelementptr inbounds i8, ptr %.06382.i, i64 %.164.idx.i ; 2 uses
  %.161.i = select i1 %i.ctm, i32 0, i32 %i.ctn   ; 3 uses
  %.062.i.1 = getelementptr inbounds i8, ptr %.pn6983.i, i64 -2 ; 3 uses
  %i.cto = load i8, ptr %.164.i, align 1, !tbaa !29
  %i.ctp = zext i8 %i.cto to i32
  %i.ctq = lshr i32 %i.ctp, %.161.i
  %i.ctr = trunc nuw i32 %i.ctq to i8
  %i.cts = and i8 %i.ctr, 1
  store i8 %i.cts, ptr %.062.i.1, align 1, !tbaa !29
  %i.ctt = icmp eq i32 %.161.i, 7                 ; 2 uses
  %i.ctu = add nuw nsw i32 %.161.i, 1
  %.164.idx.i.1 = sext i1 %i.ctt to i64
  %.164.i.1 = getelementptr inbounds i8, ptr %.164.i, i64 %.164.idx.i.1 ; 2 uses
  %.161.i.1 = select i1 %i.ctt, i32 0, i32 %i.ctu ; 2 uses
  %niter863.next.1 = add nuw i32 %niter863, 2     ; 2 uses
  %niter863.ncmp.1 = icmp eq i32 %niter863.next.1, %unroll_iter862
  br i1 %niter863.ncmp.1, label %.loopexit.i268.loopexit.unr-lcssa, label %.lr.ph85.i, !llvm.loop !304

bb.iv:                                            ; preds = %bb.it
  %.not87.i = icmp eq i32 %i.csx, 0
  br i1 %.not87.i, label %.loopexit.i268, label %.lr.ph80.preheader.i

.lr.ph80.preheader.i:                             ; preds = %bb.iv
  %.neg.i269 = mul i32 %i.csx, 6
  %i.ctv = and i32 %.neg.i269, 6                  ; 2 uses
  %i.ctw = zext i32 %i.csx to i64
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.ctw ; 2 uses
  %i.cty = add i32 %i.csx, -1                     ; 2 uses
  %i.ctz = lshr i32 %i.cty, 2
  %i.cua = zext nneg i32 %i.ctz to i64
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.cua ; 2 uses
  %xtraiter852 = and i32 %i.csx, 1
  %i.cuc = icmp eq i32 %i.cty, 0
  br i1 %i.cuc, label %.lr.ph80.i.epil.preheader, label %.lr.ph80.preheader.i.new

.lr.ph80.preheader.i.new:                         ; preds = %.lr.ph80.preheader.i
  %unroll_iter856 = and i32 %i.csx, -2
  br label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %.lr.ph80.i, %.lr.ph80.preheader.i.new
  %.05579.i = phi i32 [ %i.ctv, %.lr.ph80.preheader.i.new ], [ %.156.i.1, %.lr.ph80.i ] ; 3 uses
  %.pn6878.i = phi ptr [ %i.ctx, %.lr.ph80.preheader.i.new ], [ %.057.i.1, %.lr.ph80.i ] ; 2 uses
  %.05877.i = phi ptr [ %i.cub, %.lr.ph80.preheader.i.new ], [ %.159.i.1, %.lr.ph80.i ] ; 2 uses
  %niter857 = phi i32 [ 0, %.lr.ph80.preheader.i.new ], [ %niter857.next.1, %.lr.ph80.i ]
  %.057.i = getelementptr inbounds i8, ptr %.pn6878.i, i64 -1
  %i.cud = load i8, ptr %.05877.i, align 1, !tbaa !29
  %i.cue = zext i8 %i.cud to i32
  %i.cuf = lshr i32 %i.cue, %.05579.i
  %i.cug = trunc nuw i32 %i.cuf to i8
  %i.cuh = and i8 %i.cug, 3
  store i8 %i.cuh, ptr %.057.i, align 1, !tbaa !29
  %i.cui = icmp eq i32 %.05579.i, 6               ; 2 uses
  %i.cuj = add i32 %.05579.i, 2
  %.159.idx.i = sext i1 %i.cui to i64
  %.159.i = getelementptr inbounds i8, ptr %.05877.i, i64 %.159.idx.i ; 2 uses
  %.156.i = select i1 %i.cui, i32 0, i32 %i.cuj   ; 3 uses
  %.057.i.1 = getelementptr inbounds i8, ptr %.pn6878.i, i64 -2 ; 3 uses
  %i.cuk = load i8, ptr %.159.i, align 1, !tbaa !29
  %i.cul = zext i8 %i.cuk to i32
  %i.cum = lshr i32 %i.cul, %.156.i
  %i.cun = trunc nuw i32 %i.cum to i8
  %i.cuo = and i8 %i.cun, 3
  store i8 %i.cuo, ptr %.057.i.1, align 1, !tbaa !29
  %i.cup = icmp eq i32 %.156.i, 6                 ; 2 uses
  %i.cuq = add i32 %.156.i, 2
  %.159.idx.i.1 = sext i1 %i.cup to i64
  %.159.i.1 = getelementptr inbounds i8, ptr %.159.i, i64 %.159.idx.i.1 ; 2 uses
  %.156.i.1 = select i1 %i.cup, i32 0, i32 %i.cuq ; 2 uses
  %niter857.next.1 = add nuw i32 %niter857, 2     ; 2 uses
  %niter857.ncmp.1 = icmp eq i32 %niter857.next.1, %unroll_iter856
  br i1 %niter857.ncmp.1, label %.loopexit.i268.loopexit696.unr-lcssa, label %.lr.ph80.i, !llvm.loop !305

bb.iw:                                            ; preds = %bb.it
  %.not86.i = icmp eq i32 %i.csx, 0
  br i1 %.not86.i, label %.loopexit.i268, label %.lr.ph.preheader.i263

.lr.ph.preheader.i263:                            ; preds = %bb.iw
  %i.cur = shl i32 %i.csx, 2
  %i.cus = and i32 %i.cur, 4                      ; 2 uses
  %i.cut = zext i32 %i.csx to i64
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.cut ; 2 uses
  %i.cuv = add i32 %i.csx, -1                     ; 2 uses
  %i.cuw = lshr i32 %i.cuv, 1
  %i.cux = zext nneg i32 %i.cuw to i64
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.cst, i64 %i.cux ; 2 uses
  %xtraiter846 = and i32 %i.csx, 1
  %i.cuz = icmp eq i32 %i.cuv, 0
  br i1 %i.cuz, label %.lr.ph.i264.epil.preheader, label %.lr.ph.preheader.i263.new

.lr.ph.preheader.i263.new:                        ; preds = %.lr.ph.preheader.i263
  %unroll_iter850 = and i32 %i.csx, -2
  br label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.i264, %.lr.ph.preheader.i263.new
  %.075.i = phi i32 [ %i.cus, %.lr.ph.preheader.i263.new ], [ %.1.i266.1, %.lr.ph.i264 ] ; 2 uses
  %.pn74.i = phi ptr [ %i.cuu, %.lr.ph.preheader.i263.new ], [ %.052.i.1, %.lr.ph.i264 ] ; 2 uses
  %.05373.i = phi ptr [ %i.cuy, %.lr.ph.preheader.i263.new ], [ %.154.i.1, %.lr.ph.i264 ] ; 2 uses
  %niter851 = phi i32 [ 0, %.lr.ph.preheader.i263.new ], [ %niter851.next.1, %.lr.ph.i264 ]
  %.052.i = getelementptr inbounds i8, ptr %.pn74.i, i64 -1
  %i.cva = load i8, ptr %.05373.i, align 1, !tbaa !29
  %i.cvb = zext i8 %i.cva to i32
  %i.cvc = lshr i32 %i.cvb, %.075.i
  %i.cvd = trunc nuw i32 %i.cvc to i8
  %i.cve = and i8 %i.cvd, 15
  store i8 %i.cve, ptr %.052.i, align 1, !tbaa !29
  %.not.i265 = icmp ne i32 %.075.i, 0             ; 4 uses
  %.154.idx.i = sext i1 %.not.i265 to i64
  %.154.i = getelementptr inbounds i8, ptr %.05373.i, i64 %.154.idx.i ; 2 uses
  %.1.i266 = select i1 %.not.i265, i32 0, i32 4
  %.052.i.1 = getelementptr inbounds i8, ptr %.pn74.i, i64 -2 ; 3 uses
  %i.cvf = load i8, ptr %.154.i, align 1, !tbaa !29
  %i.cvg = zext i8 %i.cvf to i32
  %i.cvh = lshr i32 %i.cvg, %.1.i266
  %i.cvi = trunc nuw i32 %i.cvh to i8
  %i.cvj = and i8 %i.cvi, 15
  store i8 %i.cvj, ptr %.052.i.1, align 1, !tbaa !29
  %not..not.i265 = xor i1 %.not.i265, true
  %.154.idx.i.1 = sext i1 %not..not.i265 to i64
  %.154.i.1 = getelementptr inbounds i8, ptr %.154.i, i64 %.154.idx.i.1 ; 2 uses
  %.1.i266.1 = select i1 %.not.i265, i32 4, i32 0 ; 2 uses
  %niter851.next.1 = add nuw i32 %niter851, 2     ; 2 uses
  %niter851.ncmp.1 = icmp eq i32 %niter851.next.1, %unroll_iter850
  br i1 %niter851.ncmp.1, label %.loopexit.i268.loopexit697.unr-lcssa, label %.lr.ph.i264, !llvm.loop !306

.loopexit.i268.loopexit.unr-lcssa:                ; preds = %.lr.ph85.i
  %lcmp.mod860.not = icmp eq i32 %xtraiter858, 0
  br i1 %lcmp.mod860.not, label %.loopexit.i268, label %.lr.ph85.i.epil.preheader

.lr.ph85.i.epil.preheader:                        ; preds = %.loopexit.i268.loopexit.unr-lcssa, %.lr.ph85.preheader.i
  %.06084.i.epil.init = phi i32 [ %i.csz, %.lr.ph85.preheader.i ], [ %.161.i.1, %.loopexit.i268.loopexit.unr-lcssa ]
  %.pn6983.i.epil.init = phi ptr [ %i.ctb, %.lr.ph85.preheader.i ], [ %.062.i.1, %.loopexit.i268.loopexit.unr-lcssa ]
  %.06382.i.epil.init = phi ptr [ %i.ctf, %.lr.ph85.preheader.i ], [ %.164.i.1, %.loopexit.i268.loopexit.unr-lcssa ]
  %lcmp.mod861 = trunc i32 %i.csx to i1
  tail call void @llvm.assume(i1 %lcmp.mod861)
  %.062.i.epil = getelementptr inbounds i8, ptr %.pn6983.i.epil.init, i64 -1
  %i.cvk = load i8, ptr %.06382.i.epil.init, align 1, !tbaa !29
  %i.cvl = zext i8 %i.cvk to i32
  %i.cvm = lshr i32 %i.cvl, %.06084.i.epil.init
  %i.cvn = trunc nuw i32 %i.cvm to i8
  %i.cvo = and i8 %i.cvn, 1
  store i8 %i.cvo, ptr %.062.i.epil, align 1, !tbaa !29
  br label %.loopexit.i268

.loopexit.i268.loopexit696.unr-lcssa:             ; preds = %.lr.ph80.i
  %lcmp.mod854.not = icmp eq i32 %xtraiter852, 0
  br i1 %lcmp.mod854.not, label %.loopexit.i268, label %.lr.ph80.i.epil.preheader

.lr.ph80.i.epil.preheader:                        ; preds = %.loopexit.i268.loopexit696.unr-lcssa, %.lr.ph80.preheader.i
  %.05579.i.epil.init = phi i32 [ %i.ctv, %.lr.ph80.preheader.i ], [ %.156.i.1, %.loopexit.i268.loopexit696.unr-lcssa ]
  %.pn6878.i.epil.init = phi ptr [ %i.ctx, %.lr.ph80.preheader.i ], [ %.057.i.1, %.loopexit.i268.loopexit696.unr-lcssa ]
  %.05877.i.epil.init = phi ptr [ %i.cub, %.lr.ph80.preheader.i ], [ %.159.i.1, %.loopexit.i268.loopexit696.unr-lcssa ]
  %lcmp.mod855 = trunc i32 %i.csx to i1
  tail call void @llvm.assume(i1 %lcmp.mod855)
  %.057.i.epil = getelementptr inbounds i8, ptr %.pn6878.i.epil.init, i64 -1
  %i.cvp = load i8, ptr %.05877.i.epil.init, align 1, !tbaa !29
  %i.cvq = zext i8 %i.cvp to i32
  %i.cvr = lshr i32 %i.cvq, %.05579.i.epil.init
  %i.cvs = trunc nuw i32 %i.cvr to i8
  %i.cvt = and i8 %i.cvs, 3
  store i8 %i.cvt, ptr %.057.i.epil, align 1, !tbaa !29
  br label %.loopexit.i268

.loopexit.i268.loopexit697.unr-lcssa:             ; preds = %.lr.ph.i264
  %lcmp.mod848.not = icmp eq i32 %xtraiter846, 0
  br i1 %lcmp.mod848.not, label %.loopexit.i268, label %.lr.ph.i264.epil.preheader

.lr.ph.i264.epil.preheader:                       ; preds = %.loopexit.i268.loopexit697.unr-lcssa, %.lr.ph.preheader.i263
  %.075.i.epil.init = phi i32 [ %i.cus, %.lr.ph.preheader.i263 ], [ %.1.i266.1, %.loopexit.i268.loopexit697.unr-lcssa ]
  %.pn74.i.epil.init = phi ptr [ %i.cuu, %.lr.ph.preheader.i263 ], [ %.052.i.1, %.loopexit.i268.loopexit697.unr-lcssa ]
  %.05373.i.epil.init = phi ptr [ %i.cuy, %.lr.ph.preheader.i263 ], [ %.154.i.1, %.loopexit.i268.loopexit697.unr-lcssa ]
  %lcmp.mod849 = trunc i32 %i.csx to i1
  tail call void @llvm.assume(i1 %lcmp.mod849)
  %.052.i.epil = getelementptr inbounds i8, ptr %.pn74.i.epil.init, i64 -1
  %i.cvu = load i8, ptr %.05373.i.epil.init, align 1, !tbaa !29
  %i.cvv = zext i8 %i.cvu to i32
  %i.cvw = lshr i32 %i.cvv, %.075.i.epil.init
  %i.cvx = trunc nuw i32 %i.cvw to i8
  %i.cvy = and i8 %i.cvx, 15
  store i8 %i.cvy, ptr %.052.i.epil, align 1, !tbaa !29
  br label %.loopexit.i268

.loopexit.i268:                                   ; preds = %.lr.ph.i264.epil.preheader, %.loopexit.i268.loopexit697.unr-lcssa, %.lr.ph80.i.epil.preheader, %.loopexit.i268.loopexit696.unr-lcssa, %.lr.ph85.i.epil.preheader, %.loopexit.i268.loopexit.unr-lcssa, %bb.iw, %bb.iv, %bb.iu, %bb.it
  store i8 8, ptr %i.csu, align 1, !tbaa !210
  %i.cvz = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cwa = load i8, ptr %i.cvz, align 2, !tbaa !218 ; 2 uses
  %i.cwb = shl i8 %i.cwa, 3
  %i.cwc = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cwb, ptr %i.cwc, align 1, !tbaa !214
  %i.cwd = zext i8 %i.cwa to i32
  %i.cwe = mul i32 %i.csx, %i.cwd
  %i.cwf = zext i32 %i.cwe to i64
  %i.cwg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cwf, ptr %i.cwg, align 8, !tbaa !215
  br label %png_do_unpack.exit

png_do_unpack.exit:                               ; preds = %.loopexit.i268, %bb.is, %png_do_unshift.exit
  %i.cwh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cwi = load i8, ptr %i.cwh, align 8, !tbaa !207
  %i.cwj = icmp eq i8 %i.cwi, 3
  br i1 %i.cwj, label %bb.ix, label %bb.iz

bb.ix:                                            ; preds = %png_do_unpack.exit
  %i.cwk = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cwl = load i32, ptr %i.cwk, align 4, !tbaa !307
  %i.cwm = icmp sgt i32 %i.cwl, -1
  br i1 %i.cwm, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  tail call void @png_do_check_palette_indexes(ptr noundef nonnull %0, ptr noundef nonnull %1) #11
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %png_do_unpack.exit
  %i.cwn = load i32, ptr %i.h, align 4, !tbaa !27 ; 2 uses
  %i.cwo = and i32 %i.cwn, 1
  %.not167 = icmp eq i32 %i.cwo, 0
  br i1 %.not167, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.cwp = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwp, i64 1
  tail call void @png_do_bgr(ptr noundef nonnull %1, ptr noundef nonnull %i.cwq) #11
  %.pre409 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.cwr = phi i32 [ %.pre409, %bb.ja ], [ %i.cwn, %bb.iz ] ; 2 uses
  %i.cws = and i32 %i.cwr, 65536
  %.not168 = icmp eq i32 %i.cws, 0
  br i1 %.not168, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.cwt = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwt, i64 1
  tail call void @png_do_packswap(ptr noundef nonnull %1, ptr noundef nonnull %i.cwu) #11
  %.pre410 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %i.cwv = phi i32 [ %.pre410, %bb.jc ], [ %i.cwr, %bb.jb ] ; 5 uses
  %i.cww = and i32 %i.cwv, 32768
  %.not169 = icmp eq i32 %i.cww, 0
  br i1 %.not169, label %png_do_read_filler.exit, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.cwx = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwx, i64 1 ; 8 uses
  %i.cwz = getelementptr inbounds nuw i8, ptr %0, i64 634
  %i.cxa = load i16, ptr %i.cwz, align 2, !tbaa !308 ; 2 uses
  %i.cxb = load i32, ptr %i.e, align 8, !tbaa !7  ; 4 uses
  %i.cxc = load i32, ptr %1, align 8, !tbaa !209  ; 36 uses
  %i.cxd = lshr i16 %i.cxa, 8
  %i.cxe = trunc nuw i16 %i.cxd to i8             ; 10 uses
  %i.cxf = trunc i16 %i.cxa to i8                 ; 28 uses
  %i.cxg = load i8, ptr %i.cwh, align 8, !tbaa !207
  switch i8 %i.cxg, label %png_do_read_filler.exit [
    i8 0, label %bb.jf
    i8 2, label %bb.jm
  ]

bb.jf:                                            ; preds = %bb.je
  %i.cxh = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cxi = load i8, ptr %i.cxh, align 1, !tbaa !210
  switch i8 %i.cxi, label %png_do_read_filler.exit [
    i8 8, label %bb.jg
    i8 16, label %bb.jj
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.cxj = and i32 %i.cxb, 128
  %.not213.i280 = icmp eq i32 %i.cxj, 0
  br i1 %.not213.i280, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.cxk = zext i32 %i.cxc to i64                 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.cxk ; 3 uses
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxl, i64 %i.cxk ; 3 uses
  %i.cxn = icmp ugt i32 %i.cxc, 1
  br i1 %i.cxn, label %.lr.ph253.i281.preheader, label %._crit_edge254.i

.lr.ph253.i281.preheader:                         ; preds = %bb.jh
  %i.cxo = add i32 %i.cxc, -1                     ; 2 uses
  %i.cxp = add i32 %i.cxc, -2
  %xtraiter890 = and i32 %i.cxo, 3                ; 3 uses
  %i.cxq = icmp ult i32 %i.cxp, 3
  br i1 %i.cxq, label %.lr.ph253.i281.epil.preheader, label %.lr.ph253.i281.preheader.new

.lr.ph253.i281.preheader.new:                     ; preds = %.lr.ph253.i281.preheader
  %unroll_iter895 = and i32 %i.cxo, -4
  br label %.lr.ph253.i281

.lr.ph253.i281:                                   ; preds = %.lr.ph253.i281, %.lr.ph253.i281.preheader.new
  %.0197251.i = phi ptr [ %i.cxm, %.lr.ph253.i281.preheader.new ], [ %i.cyg, %.lr.ph253.i281 ] ; 8 uses
  %.0198250.i = phi ptr [ %i.cxl, %.lr.ph253.i281.preheader.new ], [ %i.cye, %.lr.ph253.i281 ] ; 4 uses
  %niter896 = phi i32 [ 0, %.lr.ph253.i281.preheader.new ], [ %niter896.next.3, %.lr.ph253.i281 ]
  %i.cxr = getelementptr inbounds i8, ptr %.0197251.i, i64 -1
  store i8 %i.cxf, ptr %i.cxr, align 1, !tbaa !29
  %i.cxs = getelementptr inbounds i8, ptr %.0198250.i, i64 -1
  %i.cxt = load i8, ptr %i.cxs, align 1, !tbaa !29
  %i.cxu = getelementptr inbounds i8, ptr %.0197251.i, i64 -2
  store i8 %i.cxt, ptr %i.cxu, align 1, !tbaa !29
  %i.cxv = getelementptr inbounds i8, ptr %.0197251.i, i64 -3
  store i8 %i.cxf, ptr %i.cxv, align 1, !tbaa !29
  %i.cxw = getelementptr inbounds i8, ptr %.0198250.i, i64 -2
  %i.cxx = load i8, ptr %i.cxw, align 1, !tbaa !29
  %i.cxy = getelementptr inbounds i8, ptr %.0197251.i, i64 -4
  store i8 %i.cxx, ptr %i.cxy, align 1, !tbaa !29
  %i.cxz = getelementptr inbounds i8, ptr %.0197251.i, i64 -5
  store i8 %i.cxf, ptr %i.cxz, align 1, !tbaa !29
  %i.cya = getelementptr inbounds i8, ptr %.0198250.i, i64 -3
  %i.cyb = load i8, ptr %i.cya, align 1, !tbaa !29
  %i.cyc = getelementptr inbounds i8, ptr %.0197251.i, i64 -6
  store i8 %i.cyb, ptr %i.cyc, align 1, !tbaa !29
  %i.cyd = getelementptr inbounds i8, ptr %.0197251.i, i64 -7
  store i8 %i.cxf, ptr %i.cyd, align 1, !tbaa !29
  %i.cye = getelementptr inbounds i8, ptr %.0198250.i, i64 -4 ; 3 uses
  %i.cyf = load i8, ptr %i.cye, align 1, !tbaa !29
  %i.cyg = getelementptr inbounds i8, ptr %.0197251.i, i64 -8 ; 4 uses
  store i8 %i.cyf, ptr %i.cyg, align 1, !tbaa !29
  %niter896.next.3 = add i32 %niter896, 4         ; 2 uses
  %niter896.ncmp.3 = icmp eq i32 %niter896.next.3, %unroll_iter895
  br i1 %niter896.ncmp.3, label %._crit_edge254.i.loopexit.unr-lcssa, label %.lr.ph253.i281, !llvm.loop !309

._crit_edge254.i.loopexit.unr-lcssa:              ; preds = %.lr.ph253.i281
  %lcmp.mod892.not = icmp eq i32 %xtraiter890, 0
  br i1 %lcmp.mod892.not, label %._crit_edge254.i, label %.lr.ph253.i281.epil.preheader

.lr.ph253.i281.epil.preheader:                    ; preds = %._crit_edge254.i.loopexit.unr-lcssa, %.lr.ph253.i281.preheader
  %.0197251.i.epil.init = phi ptr [ %i.cxm, %.lr.ph253.i281.preheader ], [ %i.cyg, %._crit_edge254.i.loopexit.unr-lcssa ]
  %.0198250.i.epil.init = phi ptr [ %i.cxl, %.lr.ph253.i281.preheader ], [ %i.cye, %._crit_edge254.i.loopexit.unr-lcssa ]
  %lcmp.mod894 = icmp ne i32 %xtraiter890, 0
  tail call void @llvm.assume(i1 %lcmp.mod894)
  br label %.lr.ph253.i281.epil

.lr.ph253.i281.epil:                              ; preds = %.lr.ph253.i281.epil, %.lr.ph253.i281.epil.preheader
  %.0197251.i.epil = phi ptr [ %i.cyk, %.lr.ph253.i281.epil ], [ %.0197251.i.epil.init, %.lr.ph253.i281.epil.preheader ] ; 2 uses
  %.0198250.i.epil = phi ptr [ %i.cyi, %.lr.ph253.i281.epil ], [ %.0198250.i.epil.init, %.lr.ph253.i281.epil.preheader ]
  %epil.iter891 = phi i32 [ %epil.iter891.next, %.lr.ph253.i281.epil ], [ 0, %.lr.ph253.i281.epil.preheader ]
  %i.cyh = getelementptr inbounds i8, ptr %.0197251.i.epil, i64 -1
  store i8 %i.cxf, ptr %i.cyh, align 1, !tbaa !29
  %i.cyi = getelementptr inbounds i8, ptr %.0198250.i.epil, i64 -1 ; 2 uses
  %i.cyj = load i8, ptr %i.cyi, align 1, !tbaa !29
  %i.cyk = getelementptr inbounds i8, ptr %.0197251.i.epil, i64 -2 ; 3 uses
  store i8 %i.cyj, ptr %i.cyk, align 1, !tbaa !29
  %epil.iter891.next = add i32 %epil.iter891, 1   ; 2 uses
  %epil.iter891.cmp.not = icmp eq i32 %epil.iter891.next, %xtraiter890
  br i1 %epil.iter891.cmp.not, label %._crit_edge254.i, label %.lr.ph253.i281.epil, !llvm.loop !310

._crit_edge254.i:                                 ; preds = %._crit_edge254.i.loopexit.unr-lcssa, %.lr.ph253.i281.epil, %bb.jh
  %.0197.lcssa.i = phi ptr [ %i.cxm, %bb.jh ], [ %i.cyg, %._crit_edge254.i.loopexit.unr-lcssa ], [ %i.cyk, %.lr.ph253.i281.epil ]
  %i.cyl = getelementptr inbounds i8, ptr %.0197.lcssa.i, i64 -1
  store i8 %i.cxf, ptr %i.cyl, align 1, !tbaa !29
  br label %.sink.split.i272

bb.ji:                                            ; preds = %bb.jg
  %.not265.i283 = icmp eq i32 %i.cxc, 0
  br i1 %.not265.i283, label %.sink.split.i272, label %.lr.ph260.preheader.i

.lr.ph260.preheader.i:                            ; preds = %bb.ji
  %i.cym = zext i32 %i.cxc to i64                 ; 2 uses
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.cym ; 3 uses
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 %i.cym ; 2 uses
  %i.cyp = add i32 %i.cxc, -1
  %xtraiter897 = and i32 %i.cxc, 3                ; 3 uses
  %i.cyq = icmp ult i32 %i.cyp, 3
  br i1 %i.cyq, label %.lr.ph260.i.epil.preheader, label %.lr.ph260.preheader.i.new

.lr.ph260.preheader.i.new:                        ; preds = %.lr.ph260.preheader.i
  %unroll_iter901 = and i32 %i.cxc, -4
  br label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %.lr.ph260.i, %.lr.ph260.preheader.i.new
  %.0195258.i = phi ptr [ %i.cyo, %.lr.ph260.preheader.i.new ], [ %i.czg, %.lr.ph260.i ] ; 8 uses
  %.0196257.i = phi ptr [ %i.cyn, %.lr.ph260.preheader.i.new ], [ %i.czd, %.lr.ph260.i ] ; 4 uses
  %niter902 = phi i32 [ 0, %.lr.ph260.preheader.i.new ], [ %niter902.next.3, %.lr.ph260.i ]
  %i.cyr = getelementptr inbounds i8, ptr %.0196257.i, i64 -1
  %i.cys = load i8, ptr %i.cyr, align 1, !tbaa !29
  %i.cyt = getelementptr inbounds i8, ptr %.0195258.i, i64 -1
  store i8 %i.cys, ptr %i.cyt, align 1, !tbaa !29
  %i.cyu = getelementptr inbounds i8, ptr %.0195258.i, i64 -2
  store i8 %i.cxf, ptr %i.cyu, align 1, !tbaa !29
  %i.cyv = getelementptr inbounds i8, ptr %.0196257.i, i64 -2
  %i.cyw = load i8, ptr %i.cyv, align 1, !tbaa !29
  %i.cyx = getelementptr inbounds i8, ptr %.0195258.i, i64 -3
  store i8 %i.cyw, ptr %i.cyx, align 1, !tbaa !29
  %i.cyy = getelementptr inbounds i8, ptr %.0195258.i, i64 -4
  store i8 %i.cxf, ptr %i.cyy, align 1, !tbaa !29
  %i.cyz = getelementptr inbounds i8, ptr %.0196257.i, i64 -3
  %i.cza = load i8, ptr %i.cyz, align 1, !tbaa !29
  %i.czb = getelementptr inbounds i8, ptr %.0195258.i, i64 -5
  store i8 %i.cza, ptr %i.czb, align 1, !tbaa !29
  %i.czc = getelementptr inbounds i8, ptr %.0195258.i, i64 -6
  store i8 %i.cxf, ptr %i.czc, align 1, !tbaa !29
  %i.czd = getelementptr inbounds i8, ptr %.0196257.i, i64 -4 ; 3 uses
  %i.cze = load i8, ptr %i.czd, align 1, !tbaa !29
  %i.czf = getelementptr inbounds i8, ptr %.0195258.i, i64 -7
  store i8 %i.cze, ptr %i.czf, align 1, !tbaa !29
  %i.czg = getelementptr inbounds i8, ptr %.0195258.i, i64 -8 ; 3 uses
  store i8 %i.cxf, ptr %i.czg, align 1, !tbaa !29
  %niter902.next.3 = add nuw i32 %niter902, 4     ; 2 uses
  %niter902.ncmp.3 = icmp eq i32 %niter902.next.3, %unroll_iter901
  br i1 %niter902.ncmp.3, label %.sink.split.i272.loopexit.unr-lcssa, label %.lr.ph260.i, !llvm.loop !311

bb.jj:                                            ; preds = %bb.jf
  %i.czh = and i32 %i.cxb, 128
  %.not212.i278 = icmp eq i32 %i.czh, 0
  br i1 %.not212.i278, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.czi = zext i32 %i.cxc to i64
  %i.czj = shl nuw nsw i64 %i.czi, 1              ; 2 uses
  %i.czk = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.czj ; 3 uses
  %i.czl = getelementptr inbounds nuw i8, ptr %i.czk, i64 %i.czj ; 3 uses
  %i.czm = icmp ugt i32 %i.cxc, 1
  br i1 %i.czm, label %.lr.ph240.i.preheader, label %._crit_edge241.i

.lr.ph240.i.preheader:                            ; preds = %bb.jk
  %i.czn = add i32 %i.cxc, -1                     ; 3 uses
  %xtraiter877 = and i32 %i.czn, 1
  %i.czo = icmp eq i32 %i.cxc, 2
  br i1 %i.czo, label %.lr.ph240.i.epil.preheader, label %.lr.ph240.i.preheader.new

.lr.ph240.i.preheader.new:                        ; preds = %.lr.ph240.i.preheader
  %unroll_iter882 = and i32 %i.czn, -2
  br label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %.lr.ph240.i, %.lr.ph240.i.preheader.new
  %.0193238.i = phi ptr [ %i.czl, %.lr.ph240.i.preheader.new ], [ %i.dae, %.lr.ph240.i ] ; 8 uses
  %.0194237.i = phi ptr [ %i.czk, %.lr.ph240.i.preheader.new ], [ %i.dac, %.lr.ph240.i ] ; 4 uses
  %niter883 = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %niter883.next.1, %.lr.ph240.i ]
  %i.czp = getelementptr inbounds i8, ptr %.0193238.i, i64 -1
  store i8 %i.cxf, ptr %i.czp, align 1, !tbaa !29
  %i.czq = getelementptr inbounds i8, ptr %.0193238.i, i64 -2
  store i8 %i.cxe, ptr %i.czq, align 1, !tbaa !29
  %i.czr = getelementptr inbounds i8, ptr %.0194237.i, i64 -1
  %i.czs = load i8, ptr %i.czr, align 1, !tbaa !29
  %i.czt = getelementptr inbounds i8, ptr %.0193238.i, i64 -3
  store i8 %i.czs, ptr %i.czt, align 1, !tbaa !29
  %i.czu = getelementptr inbounds i8, ptr %.0194237.i, i64 -2
  %i.czv = load i8, ptr %i.czu, align 1, !tbaa !29
  %i.czw = getelementptr inbounds i8, ptr %.0193238.i, i64 -4
  store i8 %i.czv, ptr %i.czw, align 1, !tbaa !29
  %i.czx = getelementptr inbounds i8, ptr %.0193238.i, i64 -5
  store i8 %i.cxf, ptr %i.czx, align 1, !tbaa !29
  %i.czy = getelementptr inbounds i8, ptr %.0193238.i, i64 -6
  store i8 %i.cxe, ptr %i.czy, align 1, !tbaa !29
  %i.czz = getelementptr inbounds i8, ptr %.0194237.i, i64 -3
  %i.daa = load i8, ptr %i.czz, align 1, !tbaa !29
  %i.dab = getelementptr inbounds i8, ptr %.0193238.i, i64 -7
  store i8 %i.daa, ptr %i.dab, align 1, !tbaa !29
  %i.dac = getelementptr inbounds i8, ptr %.0194237.i, i64 -4 ; 3 uses
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !29
  %i.dae = getelementptr inbounds i8, ptr %.0193238.i, i64 -8 ; 4 uses
  store i8 %i.dad, ptr %i.dae, align 1, !tbaa !29
  %niter883.next.1 = add i32 %niter883, 2         ; 2 uses
  %niter883.ncmp.1 = icmp eq i32 %niter883.next.1, %unroll_iter882
  br i1 %niter883.ncmp.1, label %._crit_edge241.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !312

._crit_edge241.i.loopexit.unr-lcssa:              ; preds = %.lr.ph240.i
  %lcmp.mod879.not = icmp eq i32 %xtraiter877, 0
  br i1 %lcmp.mod879.not, label %._crit_edge241.i, label %.lr.ph240.i.epil.preheader

.lr.ph240.i.epil.preheader:                       ; preds = %._crit_edge241.i.loopexit.unr-lcssa, %.lr.ph240.i.preheader
  %.0193238.i.epil.init = phi ptr [ %i.czl, %.lr.ph240.i.preheader ], [ %i.dae, %._crit_edge241.i.loopexit.unr-lcssa ] ; 4 uses
  %.0194237.i.epil.init = phi ptr [ %i.czk, %.lr.ph240.i.preheader ], [ %i.dac, %._crit_edge241.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod881 = trunc i32 %i.czn to i1
  tail call void @llvm.assume(i1 %lcmp.mod881)
  %i.daf = getelementptr inbounds i8, ptr %.0193238.i.epil.init, i64 -1
  store i8 %i.cxf, ptr %i.daf, align 1, !tbaa !29
  %i.dag = getelementptr inbounds i8, ptr %.0193238.i.epil.init, i64 -2
  store i8 %i.cxe, ptr %i.dag, align 1, !tbaa !29
  %i.dah = getelementptr inbounds i8, ptr %.0194237.i.epil.init, i64 -1
  %i.dai = load i8, ptr %i.dah, align 1, !tbaa !29
  %i.daj = getelementptr inbounds i8, ptr %.0193238.i.epil.init, i64 -3
  store i8 %i.dai, ptr %i.daj, align 1, !tbaa !29
  %i.dak = getelementptr inbounds i8, ptr %.0194237.i.epil.init, i64 -2
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !29
  %i.dam = getelementptr inbounds i8, ptr %.0193238.i.epil.init, i64 -4 ; 2 uses
  store i8 %i.dal, ptr %i.dam, align 1, !tbaa !29
  br label %._crit_edge241.i

._crit_edge241.i:                                 ; preds = %.lr.ph240.i.epil.preheader, %._crit_edge241.i.loopexit.unr-lcssa, %bb.jk
  %.0193.lcssa.i = phi ptr [ %i.czl, %bb.jk ], [ %i.dae, %._crit_edge241.i.loopexit.unr-lcssa ], [ %i.dam, %.lr.ph240.i.epil.preheader ] ; 2 uses
  %i.dan = getelementptr inbounds i8, ptr %.0193.lcssa.i, i64 -1
  store i8 %i.cxf, ptr %i.dan, align 1, !tbaa !29
  %i.dao = getelementptr inbounds i8, ptr %.0193.lcssa.i, i64 -2
  store i8 %i.cxe, ptr %i.dao, align 1, !tbaa !29
  br label %.sink.split.i272

bb.jl:                                            ; preds = %bb.jj
  %.not264.i = icmp eq i32 %i.cxc, 0
  br i1 %.not264.i, label %.sink.split.i272, label %.lr.ph247.preheader.i

.lr.ph247.preheader.i:                            ; preds = %bb.jl
  %i.dap = zext i32 %i.cxc to i64
  %i.daq = shl nuw nsw i64 %i.dap, 1              ; 2 uses
  %i.dar = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.daq ; 3 uses
  %i.das = getelementptr inbounds nuw i8, ptr %i.dar, i64 %i.daq ; 2 uses
  %xtraiter884 = and i32 %i.cxc, 1
  %i.dat = icmp eq i32 %i.cxc, 1
  br i1 %i.dat, label %.lr.ph247.i279.epil.preheader, label %.lr.ph247.preheader.i.new

.lr.ph247.preheader.i.new:                        ; preds = %.lr.ph247.preheader.i
  %unroll_iter888 = and i32 %i.cxc, -2
  br label %.lr.ph247.i279

.lr.ph247.i279:                                   ; preds = %.lr.ph247.i279, %.lr.ph247.preheader.i.new
  %.0191245.i = phi ptr [ %i.das, %.lr.ph247.preheader.i.new ], [ %i.dbj, %.lr.ph247.i279 ] ; 8 uses
  %.0192244.i = phi ptr [ %i.dar, %.lr.ph247.preheader.i.new ], [ %i.dbf, %.lr.ph247.i279 ] ; 4 uses
  %niter889 = phi i32 [ 0, %.lr.ph247.preheader.i.new ], [ %niter889.next.1, %.lr.ph247.i279 ]
  %i.dau = getelementptr inbounds i8, ptr %.0192244.i, i64 -1
  %i.dav = load i8, ptr %i.dau, align 1, !tbaa !29
  %i.daw = getelementptr inbounds i8, ptr %.0191245.i, i64 -1
  store i8 %i.dav, ptr %i.daw, align 1, !tbaa !29
  %i.dax = getelementptr inbounds i8, ptr %.0192244.i, i64 -2
  %i.day = load i8, ptr %i.dax, align 1, !tbaa !29
  %i.daz = getelementptr inbounds i8, ptr %.0191245.i, i64 -2
  store i8 %i.day, ptr %i.daz, align 1, !tbaa !29
  %i.dba = getelementptr inbounds i8, ptr %.0191245.i, i64 -3
  store i8 %i.cxf, ptr %i.dba, align 1, !tbaa !29
  %i.dbb = getelementptr inbounds i8, ptr %.0191245.i, i64 -4
  store i8 %i.cxe, ptr %i.dbb, align 1, !tbaa !29
  %i.dbc = getelementptr inbounds i8, ptr %.0192244.i, i64 -3
  %i.dbd = load i8, ptr %i.dbc, align 1, !tbaa !29
  %i.dbe = getelementptr inbounds i8, ptr %.0191245.i, i64 -5
  store i8 %i.dbd, ptr %i.dbe, align 1, !tbaa !29
  %i.dbf = getelementptr inbounds i8, ptr %.0192244.i, i64 -4 ; 3 uses
  %i.dbg = load i8, ptr %i.dbf, align 1, !tbaa !29
  %i.dbh = getelementptr inbounds i8, ptr %.0191245.i, i64 -6
  store i8 %i.dbg, ptr %i.dbh, align 1, !tbaa !29
  %i.dbi = getelementptr inbounds i8, ptr %.0191245.i, i64 -7
  store i8 %i.cxf, ptr %i.dbi, align 1, !tbaa !29
  %i.dbj = getelementptr inbounds i8, ptr %.0191245.i, i64 -8 ; 3 uses
  store i8 %i.cxe, ptr %i.dbj, align 1, !tbaa !29
  %niter889.next.1 = add nuw i32 %niter889, 2     ; 2 uses
  %niter889.ncmp.1 = icmp eq i32 %niter889.next.1, %unroll_iter888
  br i1 %niter889.ncmp.1, label %.sink.split.i272.loopexit690.unr-lcssa, label %.lr.ph247.i279, !llvm.loop !313

bb.jm:                                            ; preds = %bb.je
  %i.dbk = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.dbl = load i8, ptr %i.dbk, align 1, !tbaa !210
  switch i8 %i.dbl, label %png_do_read_filler.exit [
    i8 8, label %bb.jn
    i8 16, label %bb.jq
  ]

bb.jn:                                            ; preds = %bb.jm
  %i.dbm = and i32 %i.cxb, 128
  %.not211.i = icmp eq i32 %i.dbm, 0
  br i1 %.not211.i, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.dbn = zext i32 %i.cxc to i64                 ; 2 uses
  %i.dbo = mul nuw nsw i64 %i.dbn, 3
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dbo ; 3 uses
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbp, i64 %i.dbn ; 3 uses
  %i.dbr = icmp ugt i32 %i.cxc, 1
  br i1 %i.dbr, label %.lr.ph227.i.preheader, label %._crit_edge228.i

.lr.ph227.i.preheader:                            ; preds = %bb.jo
  %i.dbs = add i32 %i.cxc, -1                     ; 3 uses
  %xtraiter864 = and i32 %i.dbs, 1
  %i.dbt = icmp eq i32 %i.cxc, 2
  br i1 %i.dbt, label %.lr.ph227.i.epil.preheader, label %.lr.ph227.i.preheader.new

.lr.ph227.i.preheader.new:                        ; preds = %.lr.ph227.i.preheader
  %unroll_iter869 = and i32 %i.dbs, -2
  br label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %.lr.ph227.i, %.lr.ph227.i.preheader.new
  %.0189225.i = phi ptr [ %i.dbq, %.lr.ph227.i.preheader.new ], [ %i.dcn, %.lr.ph227.i ] ; 8 uses
  %.0190224.i = phi ptr [ %i.dbp, %.lr.ph227.i.preheader.new ], [ %i.dcl, %.lr.ph227.i ] ; 6 uses
  %niter870 = phi i32 [ 0, %.lr.ph227.i.preheader.new ], [ %niter870.next.1, %.lr.ph227.i ]
  %i.dbu = getelementptr inbounds i8, ptr %.0189225.i, i64 -1
  store i8 %i.cxf, ptr %i.dbu, align 1, !tbaa !29
  %i.dbv = getelementptr inbounds i8, ptr %.0190224.i, i64 -1
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !29
  %i.dbx = getelementptr inbounds i8, ptr %.0189225.i, i64 -2
  store i8 %i.dbw, ptr %i.dbx, align 1, !tbaa !29
  %i.dby = getelementptr inbounds i8, ptr %.0190224.i, i64 -2
  %i.dbz = load i8, ptr %i.dby, align 1, !tbaa !29
  %i.dca = getelementptr inbounds i8, ptr %.0189225.i, i64 -3
  store i8 %i.dbz, ptr %i.dca, align 1, !tbaa !29
  %i.dcb = getelementptr inbounds i8, ptr %.0190224.i, i64 -3
  %i.dcc = load i8, ptr %i.dcb, align 1, !tbaa !29
  %i.dcd = getelementptr inbounds i8, ptr %.0189225.i, i64 -4
  store i8 %i.dcc, ptr %i.dcd, align 1, !tbaa !29
  %i.dce = getelementptr inbounds i8, ptr %.0189225.i, i64 -5
  store i8 %i.cxf, ptr %i.dce, align 1, !tbaa !29
  %i.dcf = getelementptr inbounds i8, ptr %.0190224.i, i64 -4
  %i.dcg = load i8, ptr %i.dcf, align 1, !tbaa !29
  %i.dch = getelementptr inbounds i8, ptr %.0189225.i, i64 -6
  store i8 %i.dcg, ptr %i.dch, align 1, !tbaa !29
  %i.dci = getelementptr inbounds i8, ptr %.0190224.i, i64 -5
  %i.dcj = load i8, ptr %i.dci, align 1, !tbaa !29
  %i.dck = getelementptr inbounds i8, ptr %.0189225.i, i64 -7
  store i8 %i.dcj, ptr %i.dck, align 1, !tbaa !29
  %i.dcl = getelementptr inbounds i8, ptr %.0190224.i, i64 -6 ; 3 uses
  %i.dcm = load i8, ptr %i.dcl, align 1, !tbaa !29
  %i.dcn = getelementptr inbounds i8, ptr %.0189225.i, i64 -8 ; 4 uses
  store i8 %i.dcm, ptr %i.dcn, align 1, !tbaa !29
  %niter870.next.1 = add i32 %niter870, 2         ; 2 uses
  %niter870.ncmp.1 = icmp eq i32 %niter870.next.1, %unroll_iter869
  br i1 %niter870.ncmp.1, label %._crit_edge228.i.loopexit.unr-lcssa, label %.lr.ph227.i, !llvm.loop !314

._crit_edge228.i.loopexit.unr-lcssa:              ; preds = %.lr.ph227.i
  %lcmp.mod866.not = icmp eq i32 %xtraiter864, 0
  br i1 %lcmp.mod866.not, label %._crit_edge228.i, label %.lr.ph227.i.epil.preheader

.lr.ph227.i.epil.preheader:                       ; preds = %._crit_edge228.i.loopexit.unr-lcssa, %.lr.ph227.i.preheader
  %.0189225.i.epil.init = phi ptr [ %i.dbq, %.lr.ph227.i.preheader ], [ %i.dcn, %._crit_edge228.i.loopexit.unr-lcssa ] ; 4 uses
  %.0190224.i.epil.init = phi ptr [ %i.dbp, %.lr.ph227.i.preheader ], [ %i.dcl, %._crit_edge228.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod868 = trunc i32 %i.dbs to i1
  tail call void @llvm.assume(i1 %lcmp.mod868)
  %i.dco = getelementptr inbounds i8, ptr %.0189225.i.epil.init, i64 -1
  store i8 %i.cxf, ptr %i.dco, align 1, !tbaa !29
  %i.dcp = getelementptr inbounds i8, ptr %.0190224.i.epil.init, i64 -1
  %i.dcq = load i8, ptr %i.dcp, align 1, !tbaa !29
  %i.dcr = getelementptr inbounds i8, ptr %.0189225.i.epil.init, i64 -2
  store i8 %i.dcq, ptr %i.dcr, align 1, !tbaa !29
  %i.dcs = getelementptr inbounds i8, ptr %.0190224.i.epil.init, i64 -2
  %i.dct = load i8, ptr %i.dcs, align 1, !tbaa !29
  %i.dcu = getelementptr inbounds i8, ptr %.0189225.i.epil.init, i64 -3
  store i8 %i.dct, ptr %i.dcu, align 1, !tbaa !29
  %i.dcv = getelementptr inbounds i8, ptr %.0190224.i.epil.init, i64 -3
  %i.dcw = load i8, ptr %i.dcv, align 1, !tbaa !29
  %i.dcx = getelementptr inbounds i8, ptr %.0189225.i.epil.init, i64 -4 ; 2 uses
  store i8 %i.dcw, ptr %i.dcx, align 1, !tbaa !29
  br label %._crit_edge228.i

._crit_edge228.i:                                 ; preds = %.lr.ph227.i.epil.preheader, %._crit_edge228.i.loopexit.unr-lcssa, %bb.jo
  %.0189.lcssa.i = phi ptr [ %i.dbq, %bb.jo ], [ %i.dcn, %._crit_edge228.i.loopexit.unr-lcssa ], [ %i.dcx, %.lr.ph227.i.epil.preheader ]
  %i.dcy = getelementptr inbounds i8, ptr %.0189.lcssa.i, i64 -1
  store i8 %i.cxf, ptr %i.dcy, align 1, !tbaa !29
  br label %.sink.split.i272

bb.jp:                                            ; preds = %bb.jn
  %.not263.i277 = icmp eq i32 %i.cxc, 0
  br i1 %.not263.i277, label %.sink.split.i272, label %.lr.ph234.preheader.i

.lr.ph234.preheader.i:                            ; preds = %bb.jp
  %i.dcz = zext i32 %i.cxc to i64                 ; 2 uses
  %i.dda = mul nuw nsw i64 %i.dcz, 3
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dda ; 3 uses
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.ddb, i64 %i.dcz ; 2 uses
  %xtraiter871 = and i32 %i.cxc, 1
  %i.ddd = icmp eq i32 %i.cxc, 1
  br i1 %i.ddd, label %.lr.ph234.i.epil.preheader, label %.lr.ph234.preheader.i.new

.lr.ph234.preheader.i.new:                        ; preds = %.lr.ph234.preheader.i
  %unroll_iter875 = and i32 %i.cxc, -2
  br label %.lr.ph234.i

.lr.ph234.i:                                      ; preds = %.lr.ph234.i, %.lr.ph234.preheader.i.new
  %.0187232.i = phi ptr [ %i.ddc, %.lr.ph234.preheader.i.new ], [ %i.ddx, %.lr.ph234.i ] ; 8 uses
  %.0188231.i = phi ptr [ %i.ddb, %.lr.ph234.preheader.i.new ], [ %i.ddu, %.lr.ph234.i ] ; 6 uses
  %niter876 = phi i32 [ 0, %.lr.ph234.preheader.i.new ], [ %niter876.next.1, %.lr.ph234.i ]
  %i.dde = getelementptr inbounds i8, ptr %.0188231.i, i64 -1
  %i.ddf = load i8, ptr %i.dde, align 1, !tbaa !29
  %i.ddg = getelementptr inbounds i8, ptr %.0187232.i, i64 -1
  store i8 %i.ddf, ptr %i.ddg, align 1, !tbaa !29
  %i.ddh = getelementptr inbounds i8, ptr %.0188231.i, i64 -2
  %i.ddi = load i8, ptr %i.ddh, align 1, !tbaa !29
  %i.ddj = getelementptr inbounds i8, ptr %.0187232.i, i64 -2
  store i8 %i.ddi, ptr %i.ddj, align 1, !tbaa !29
  %i.ddk = getelementptr inbounds i8, ptr %.0188231.i, i64 -3
  %i.ddl = load i8, ptr %i.ddk, align 1, !tbaa !29
  %i.ddm = getelementptr inbounds i8, ptr %.0187232.i, i64 -3
  store i8 %i.ddl, ptr %i.ddm, align 1, !tbaa !29
  %i.ddn = getelementptr inbounds i8, ptr %.0187232.i, i64 -4
  store i8 %i.cxf, ptr %i.ddn, align 1, !tbaa !29
  %i.ddo = getelementptr inbounds i8, ptr %.0188231.i, i64 -4
  %i.ddp = load i8, ptr %i.ddo, align 1, !tbaa !29
  %i.ddq = getelementptr inbounds i8, ptr %.0187232.i, i64 -5
  store i8 %i.ddp, ptr %i.ddq, align 1, !tbaa !29
  %i.ddr = getelementptr inbounds i8, ptr %.0188231.i, i64 -5
  %i.dds = load i8, ptr %i.ddr, align 1, !tbaa !29
  %i.ddt = getelementptr inbounds i8, ptr %.0187232.i, i64 -6
  store i8 %i.dds, ptr %i.ddt, align 1, !tbaa !29
  %i.ddu = getelementptr inbounds i8, ptr %.0188231.i, i64 -6 ; 3 uses
  %i.ddv = load i8, ptr %i.ddu, align 1, !tbaa !29
  %i.ddw = getelementptr inbounds i8, ptr %.0187232.i, i64 -7
  store i8 %i.ddv, ptr %i.ddw, align 1, !tbaa !29
  %i.ddx = getelementptr inbounds i8, ptr %.0187232.i, i64 -8 ; 3 uses
  store i8 %i.cxf, ptr %i.ddx, align 1, !tbaa !29
  %niter876.next.1 = add nuw i32 %niter876, 2     ; 2 uses
  %niter876.ncmp.1 = icmp eq i32 %niter876.next.1, %unroll_iter875
  br i1 %niter876.ncmp.1, label %.sink.split.i272.loopexit692.unr-lcssa, label %.lr.ph234.i, !llvm.loop !315

bb.jq:                                            ; preds = %bb.jm
  %i.ddy = and i32 %i.cxb, 128
  %.not.i270 = icmp eq i32 %i.ddy, 0
  br i1 %.not.i270, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ddz = zext i32 %i.cxc to i64                 ; 2 uses
  %i.dea = mul nuw nsw i64 %i.ddz, 6
  %i.deb = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dea ; 2 uses
  %i.dec = shl nuw nsw i64 %i.ddz, 1
  %i.ded = getelementptr inbounds nuw i8, ptr %i.deb, i64 %i.dec ; 2 uses
  %i.dee = icmp ugt i32 %i.cxc, 1
  br i1 %i.dee, label %.lr.ph.i274, label %._crit_edge.i271

.lr.ph.i274:                                      ; preds = %bb.jr, %.lr.ph.i274
  %.0185216.i = phi ptr [ %i.dey, %.lr.ph.i274 ], [ %i.ded, %bb.jr ] ; 8 uses
  %.0186215.i = phi ptr [ %i.dew, %.lr.ph.i274 ], [ %i.deb, %bb.jr ] ; 6 uses
  %.6214.i = phi i32 [ %i.dez, %.lr.ph.i274 ], [ 1, %bb.jr ]
  %i.def = getelementptr inbounds i8, ptr %.0185216.i, i64 -1
  store i8 %i.cxf, ptr %i.def, align 1, !tbaa !29
  %i.deg = getelementptr inbounds i8, ptr %.0185216.i, i64 -2
  store i8 %i.cxe, ptr %i.deg, align 1, !tbaa !29
  %i.deh = getelementptr inbounds i8, ptr %.0186215.i, i64 -1
  %i.dei = load i8, ptr %i.deh, align 1, !tbaa !29
  %i.dej = getelementptr inbounds i8, ptr %.0185216.i, i64 -3
  store i8 %i.dei, ptr %i.dej, align 1, !tbaa !29
  %i.dek = getelementptr inbounds i8, ptr %.0186215.i, i64 -2
  %i.del = load i8, ptr %i.dek, align 1, !tbaa !29
  %i.dem = getelementptr inbounds i8, ptr %.0185216.i, i64 -4
  store i8 %i.del, ptr %i.dem, align 1, !tbaa !29
  %i.den = getelementptr inbounds i8, ptr %.0186215.i, i64 -3
  %i.deo = load i8, ptr %i.den, align 1, !tbaa !29
  %i.dep = getelementptr inbounds i8, ptr %.0185216.i, i64 -5
  store i8 %i.deo, ptr %i.dep, align 1, !tbaa !29
  %i.deq = getelementptr inbounds i8, ptr %.0186215.i, i64 -4
  %i.der = load i8, ptr %i.deq, align 1, !tbaa !29
  %i.des = getelementptr inbounds i8, ptr %.0185216.i, i64 -6
  store i8 %i.der, ptr %i.des, align 1, !tbaa !29
  %i.det = getelementptr inbounds i8, ptr %.0186215.i, i64 -5
  %i.deu = load i8, ptr %i.det, align 1, !tbaa !29
  %i.dev = getelementptr inbounds i8, ptr %.0185216.i, i64 -7
  store i8 %i.deu, ptr %i.dev, align 1, !tbaa !29
  %i.dew = getelementptr inbounds i8, ptr %.0186215.i, i64 -6 ; 2 uses
  %i.dex = load i8, ptr %i.dew, align 1, !tbaa !29
  %i.dey = getelementptr inbounds i8, ptr %.0185216.i, i64 -8 ; 3 uses
  store i8 %i.dex, ptr %i.dey, align 1, !tbaa !29
  %i.dez = add nuw i32 %.6214.i, 1                ; 2 uses
  %exitcond.not.i275 = icmp eq i32 %i.dez, %i.cxc
  br i1 %exitcond.not.i275, label %._crit_edge.i271, label %.lr.ph.i274, !llvm.loop !316

._crit_edge.i271:                                 ; preds = %.lr.ph.i274, %bb.jr
  %.0185.lcssa.i = phi ptr [ %i.ded, %bb.jr ], [ %i.dey, %.lr.ph.i274 ] ; 2 uses
  %i.dfa = getelementptr inbounds i8, ptr %.0185.lcssa.i, i64 -1
  store i8 %i.cxf, ptr %i.dfa, align 1, !tbaa !29
  %i.dfb = getelementptr inbounds i8, ptr %.0185.lcssa.i, i64 -2
  store i8 %i.cxe, ptr %i.dfb, align 1, !tbaa !29
  br label %.sink.split.i272

bb.js:                                            ; preds = %bb.jq
  %.not262.i = icmp eq i32 %i.cxc, 0
  br i1 %.not262.i, label %.sink.split.i272, label %.lr.ph221.preheader.i

.lr.ph221.preheader.i:                            ; preds = %bb.js
  %i.dfc = zext i32 %i.cxc to i64                 ; 2 uses
  %i.dfd = mul nuw nsw i64 %i.dfc, 6
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dfd ; 2 uses
  %i.dff = shl nuw nsw i64 %i.dfc, 1
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.dfe, i64 %i.dff
  br label %.lr.ph221.i

.lr.ph221.i:                                      ; preds = %.lr.ph221.i, %.lr.ph221.preheader.i
  %.0219.i = phi ptr [ %i.dga, %.lr.ph221.i ], [ %i.dfg, %.lr.ph221.preheader.i ] ; 8 uses
  %.0184218.i = phi ptr [ %i.dfw, %.lr.ph221.i ], [ %i.dfe, %.lr.ph221.preheader.i ] ; 6 uses
  %.7217.i = phi i32 [ %i.dgb, %.lr.ph221.i ], [ 0, %.lr.ph221.preheader.i ]
  %i.dfh = getelementptr inbounds i8, ptr %.0184218.i, i64 -1
  %i.dfi = load i8, ptr %i.dfh, align 1, !tbaa !29
  %i.dfj = getelementptr inbounds i8, ptr %.0219.i, i64 -1
  store i8 %i.dfi, ptr %i.dfj, align 1, !tbaa !29
  %i.dfk = getelementptr inbounds i8, ptr %.0184218.i, i64 -2
  %i.dfl = load i8, ptr %i.dfk, align 1, !tbaa !29
  %i.dfm = getelementptr inbounds i8, ptr %.0219.i, i64 -2
  store i8 %i.dfl, ptr %i.dfm, align 1, !tbaa !29
  %i.dfn = getelementptr inbounds i8, ptr %.0184218.i, i64 -3
  %i.dfo = load i8, ptr %i.dfn, align 1, !tbaa !29
  %i.dfp = getelementptr inbounds i8, ptr %.0219.i, i64 -3
  store i8 %i.dfo, ptr %i.dfp, align 1, !tbaa !29
  %i.dfq = getelementptr inbounds i8, ptr %.0184218.i, i64 -4
  %i.dfr = load i8, ptr %i.dfq, align 1, !tbaa !29
  %i.dfs = getelementptr inbounds i8, ptr %.0219.i, i64 -4
  store i8 %i.dfr, ptr %i.dfs, align 1, !tbaa !29
  %i.dft = getelementptr inbounds i8, ptr %.0184218.i, i64 -5
  %i.dfu = load i8, ptr %i.dft, align 1, !tbaa !29
  %i.dfv = getelementptr inbounds i8, ptr %.0219.i, i64 -5
  store i8 %i.dfu, ptr %i.dfv, align 1, !tbaa !29
  %i.dfw = getelementptr inbounds i8, ptr %.0184218.i, i64 -6 ; 2 uses
  %i.dfx = load i8, ptr %i.dfw, align 1, !tbaa !29
  %i.dfy = getelementptr inbounds i8, ptr %.0219.i, i64 -6
  store i8 %i.dfx, ptr %i.dfy, align 1, !tbaa !29
  %i.dfz = getelementptr inbounds i8, ptr %.0219.i, i64 -7
  store i8 %i.cxf, ptr %i.dfz, align 1, !tbaa !29
  %i.dga = getelementptr inbounds i8, ptr %.0219.i, i64 -8 ; 2 uses
  store i8 %i.cxe, ptr %i.dga, align 1, !tbaa !29
  %i.dgb = add nuw i32 %.7217.i, 1                ; 2 uses
  %exitcond269.not.i276 = icmp eq i32 %i.dgb, %i.cxc
  br i1 %exitcond269.not.i276, label %.sink.split.i272, label %.lr.ph221.i, !llvm.loop !317

.sink.split.i272.loopexit.unr-lcssa:              ; preds = %.lr.ph260.i
  %lcmp.mod899.not = icmp eq i32 %xtraiter897, 0
  br i1 %lcmp.mod899.not, label %.sink.split.i272, label %.lr.ph260.i.epil.preheader

.lr.ph260.i.epil.preheader:                       ; preds = %.sink.split.i272.loopexit.unr-lcssa, %.lr.ph260.preheader.i
  %.0195258.i.epil.init = phi ptr [ %i.cyo, %.lr.ph260.preheader.i ], [ %i.czg, %.sink.split.i272.loopexit.unr-lcssa ]
  %.0196257.i.epil.init = phi ptr [ %i.cyn, %.lr.ph260.preheader.i ], [ %i.czd, %.sink.split.i272.loopexit.unr-lcssa ]
  %lcmp.mod900 = icmp ne i32 %xtraiter897, 0
  tail call void @llvm.assume(i1 %lcmp.mod900)
  br label %.lr.ph260.i.epil

.lr.ph260.i.epil:                                 ; preds = %.lr.ph260.i.epil, %.lr.ph260.i.epil.preheader
  %.0195258.i.epil = phi ptr [ %i.dgf, %.lr.ph260.i.epil ], [ %.0195258.i.epil.init, %.lr.ph260.i.epil.preheader ] ; 2 uses
  %.0196257.i.epil = phi ptr [ %i.dgc, %.lr.ph260.i.epil ], [ %.0196257.i.epil.init, %.lr.ph260.i.epil.preheader ]
  %epil.iter898 = phi i32 [ %epil.iter898.next, %.lr.ph260.i.epil ], [ 0, %.lr.ph260.i.epil.preheader ]
  %i.dgc = getelementptr inbounds i8, ptr %.0196257.i.epil, i64 -1 ; 2 uses
  %i.dgd = load i8, ptr %i.dgc, align 1, !tbaa !29
  %i.dge = getelementptr inbounds i8, ptr %.0195258.i.epil, i64 -1
  store i8 %i.dgd, ptr %i.dge, align 1, !tbaa !29
  %i.dgf = getelementptr inbounds i8, ptr %.0195258.i.epil, i64 -2 ; 2 uses
  store i8 %i.cxf, ptr %i.dgf, align 1, !tbaa !29
  %epil.iter898.next = add i32 %epil.iter898, 1   ; 2 uses
  %epil.iter898.cmp.not = icmp eq i32 %epil.iter898.next, %xtraiter897
  br i1 %epil.iter898.cmp.not, label %.sink.split.i272, label %.lr.ph260.i.epil, !llvm.loop !318

.sink.split.i272.loopexit690.unr-lcssa:           ; preds = %.lr.ph247.i279
  %lcmp.mod886.not = icmp eq i32 %xtraiter884, 0
  br i1 %lcmp.mod886.not, label %.sink.split.i272, label %.lr.ph247.i279.epil.preheader

.lr.ph247.i279.epil.preheader:                    ; preds = %.sink.split.i272.loopexit690.unr-lcssa, %.lr.ph247.preheader.i
  %.0191245.i.epil.init = phi ptr [ %i.das, %.lr.ph247.preheader.i ], [ %i.dbj, %.sink.split.i272.loopexit690.unr-lcssa ] ; 4 uses
  %.0192244.i.epil.init = phi ptr [ %i.dar, %.lr.ph247.preheader.i ], [ %i.dbf, %.sink.split.i272.loopexit690.unr-lcssa ] ; 2 uses
  %lcmp.mod887 = trunc i32 %i.cxc to i1
  tail call void @llvm.assume(i1 %lcmp.mod887)
  %i.dgg = getelementptr inbounds i8, ptr %.0192244.i.epil.init, i64 -1
  %i.dgh = load i8, ptr %i.dgg, align 1, !tbaa !29
  %i.dgi = getelementptr inbounds i8, ptr %.0191245.i.epil.init, i64 -1
  store i8 %i.dgh, ptr %i.dgi, align 1, !tbaa !29
  %i.dgj = getelementptr inbounds i8, ptr %.0192244.i.epil.init, i64 -2
  %i.dgk = load i8, ptr %i.dgj, align 1, !tbaa !29
  %i.dgl = getelementptr inbounds i8, ptr %.0191245.i.epil.init, i64 -2
  store i8 %i.dgk, ptr %i.dgl, align 1, !tbaa !29
  %i.dgm = getelementptr inbounds i8, ptr %.0191245.i.epil.init, i64 -3
  store i8 %i.cxf, ptr %i.dgm, align 1, !tbaa !29
  %i.dgn = getelementptr inbounds i8, ptr %.0191245.i.epil.init, i64 -4
  store i8 %i.cxe, ptr %i.dgn, align 1, !tbaa !29
  br label %.sink.split.i272

.sink.split.i272.loopexit692.unr-lcssa:           ; preds = %.lr.ph234.i
  %lcmp.mod873.not = icmp eq i32 %xtraiter871, 0
  br i1 %lcmp.mod873.not, label %.sink.split.i272, label %.lr.ph234.i.epil.preheader

.lr.ph234.i.epil.preheader:                       ; preds = %.sink.split.i272.loopexit692.unr-lcssa, %.lr.ph234.preheader.i
  %.0187232.i.epil.init = phi ptr [ %i.ddc, %.lr.ph234.preheader.i ], [ %i.ddx, %.sink.split.i272.loopexit692.unr-lcssa ] ; 4 uses
  %.0188231.i.epil.init = phi ptr [ %i.ddb, %.lr.ph234.preheader.i ], [ %i.ddu, %.sink.split.i272.loopexit692.unr-lcssa ] ; 3 uses
  %lcmp.mod874 = trunc i32 %i.cxc to i1
  tail call void @llvm.assume(i1 %lcmp.mod874)
  %i.dgo = getelementptr inbounds i8, ptr %.0188231.i.epil.init, i64 -1
  %i.dgp = load i8, ptr %i.dgo, align 1, !tbaa !29
  %i.dgq = getelementptr inbounds i8, ptr %.0187232.i.epil.init, i64 -1
  store i8 %i.dgp, ptr %i.dgq, align 1, !tbaa !29
  %i.dgr = getelementptr inbounds i8, ptr %.0188231.i.epil.init, i64 -2
  %i.dgs = load i8, ptr %i.dgr, align 1, !tbaa !29
  %i.dgt = getelementptr inbounds i8, ptr %.0187232.i.epil.init, i64 -2
  store i8 %i.dgs, ptr %i.dgt, align 1, !tbaa !29
  %i.dgu = getelementptr inbounds i8, ptr %.0188231.i.epil.init, i64 -3
  %i.dgv = load i8, ptr %i.dgu, align 1, !tbaa !29
  %i.dgw = getelementptr inbounds i8, ptr %.0187232.i.epil.init, i64 -3
  store i8 %i.dgv, ptr %i.dgw, align 1, !tbaa !29
  %i.dgx = getelementptr inbounds i8, ptr %.0187232.i.epil.init, i64 -4
  store i8 %i.cxf, ptr %i.dgx, align 1, !tbaa !29
  br label %.sink.split.i272

.sink.split.i272:                                 ; preds = %.lr.ph221.i, %.lr.ph234.i.epil.preheader, %.sink.split.i272.loopexit692.unr-lcssa, %.lr.ph247.i279.epil.preheader, %.sink.split.i272.loopexit690.unr-lcssa, %.sink.split.i272.loopexit.unr-lcssa, %.lr.ph260.i.epil, %bb.js, %._crit_edge.i271, %bb.jp, %._crit_edge228.i, %bb.jl, %._crit_edge241.i, %bb.ji, %._crit_edge254.i
  %.sink283.i = phi i8 [ 4, %bb.jp ], [ 4, %._crit_edge.i271 ], [ 4, %._crit_edge228.i ], [ 2, %bb.jl ], [ 2, %bb.ji ], [ 2, %._crit_edge254.i ], [ 2, %._crit_edge241.i ], [ 4, %bb.js ], [ 2, %.sink.split.i272.loopexit.unr-lcssa ], [ 2, %.lr.ph247.i279.epil.preheader ], [ 4, %.lr.ph234.i.epil.preheader ], [ 2, %.lr.ph260.i.epil ], [ 2, %.sink.split.i272.loopexit690.unr-lcssa ], [ 4, %.sink.split.i272.loopexit692.unr-lcssa ], [ 4, %.lr.ph221.i ]
  %.sink281.i = phi i8 [ 32, %bb.jp ], [ 64, %._crit_edge.i271 ], [ 32, %._crit_edge228.i ], [ 32, %bb.jl ], [ 16, %bb.ji ], [ 16, %._crit_edge254.i ], [ 32, %._crit_edge241.i ], [ 64, %bb.js ], [ 16, %.sink.split.i272.loopexit.unr-lcssa ], [ 32, %.lr.ph247.i279.epil.preheader ], [ 32, %.lr.ph234.i.epil.preheader ], [ 16, %.lr.ph260.i.epil ], [ 32, %.sink.split.i272.loopexit690.unr-lcssa ], [ 32, %.sink.split.i272.loopexit692.unr-lcssa ], [ 64, %.lr.ph221.i ]
  %.sink.i273 = phi i32 [ 2, %bb.jp ], [ 3, %._crit_edge.i271 ], [ 2, %._crit_edge228.i ], [ 2, %bb.jl ], [ 1, %bb.ji ], [ 1, %._crit_edge254.i ], [ 2, %._crit_edge241.i ], [ 3, %bb.js ], [ 1, %.sink.split.i272.loopexit.unr-lcssa ], [ 2, %.lr.ph247.i279.epil.preheader ], [ 2, %.lr.ph234.i.epil.preheader ], [ 1, %.lr.ph260.i.epil ], [ 2, %.sink.split.i272.loopexit690.unr-lcssa ], [ 2, %.sink.split.i272.loopexit692.unr-lcssa ], [ 3, %.lr.ph221.i ]
  %i.dgy = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %.sink283.i, ptr %i.dgy, align 2, !tbaa !218
  %i.dgz = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %.sink281.i, ptr %i.dgz, align 1, !tbaa !214
  %i.dha = shl i32 %i.cxc, %.sink.i273
  %i.dhb = zext i32 %i.dha to i64
  %i.dhc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dhb, ptr %i.dhc, align 8, !tbaa !215
  %.pre411 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %png_do_read_filler.exit

png_do_read_filler.exit:                          ; preds = %.sink.split.i272, %bb.jm, %bb.jf, %bb.je, %bb.jd
  %i.dhd = phi i32 [ %.pre411, %.sink.split.i272 ], [ %i.cwv, %bb.jm ], [ %i.cwv, %bb.jf ], [ %i.cwv, %bb.je ], [ %i.cwv, %bb.jd ]
  %i.dhe = and i32 %i.dhd, 131072
  %.not170 = icmp eq i32 %i.dhe, 0
  br i1 %.not170, label %png_do_read_swap_alpha.exit, label %bb.jt

bb.jt:                                            ; preds = %png_do_read_filler.exit
  %i.dhf = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhf, i64 1 ; 4 uses
  %i.dhh = load i32, ptr %1, align 8, !tbaa !209  ; 15 uses
  %i.dhi = load i8, ptr %i.cwh, align 8, !tbaa !207
  switch i8 %i.dhi, label %png_do_read_swap_alpha.exit [
    i8 6, label %bb.ju
    i8 4, label %bb.jx
  ]

bb.ju:                                            ; preds = %bb.jt
  %i.dhj = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.dhk = load i8, ptr %i.dhj, align 1, !tbaa !210
  %i.dhl = icmp eq i8 %i.dhk, 8
  %.not100.i = icmp eq i32 %i.dhh, 0              ; 2 uses
  br i1 %i.dhl, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  br i1 %.not100.i, label %png_do_read_swap_alpha.exit, label %.lr.ph97.preheader.i

.lr.ph97.preheader.i:                             ; preds = %bb.jv
  %i.dhm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dhn = load i64, ptr %i.dhm, align 8, !tbaa !215
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dhg, i64 %i.dhn ; 2 uses
  %xtraiter921 = and i32 %i.dhh, 3                ; 3 uses
  %i.dhp = icmp ult i32 %i.dhh, 4
  br i1 %i.dhp, label %.lr.ph97.i.epil.preheader, label %.lr.ph97.preheader.i.new

.lr.ph97.preheader.i.new:                         ; preds = %.lr.ph97.preheader.i
  %unroll_iter925 = and i32 %i.dhh, -4
  br label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %.lr.ph97.i, %.lr.ph97.preheader.i.new
  %.06896.i = phi ptr [ %i.dho, %.lr.ph97.preheader.i.new ], [ %i.dhz, %.lr.ph97.i ] ; 4 uses
  %niter926 = phi i32 [ 0, %.lr.ph97.preheader.i.new ], [ %niter926.next.3, %.lr.ph97.i ]
  %i.dhq = getelementptr i8, ptr %.06896.i, i64 -4 ; 2 uses
  %i.dhr = load <4 x i8>, ptr %i.dhq, align 1, !tbaa !29
  %i.dhs = shufflevector <4 x i8> %i.dhr, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.dhs, ptr %i.dhq, align 1, !tbaa !29
  %i.dht = getelementptr i8, ptr %.06896.i, i64 -8 ; 2 uses
  %i.dhu = load <4 x i8>, ptr %i.dht, align 1, !tbaa !29
  %i.dhv = shufflevector <4 x i8> %i.dhu, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.dhv, ptr %i.dht, align 1, !tbaa !29
  %i.dhw = getelementptr i8, ptr %.06896.i, i64 -12 ; 2 uses
  %i.dhx = load <4 x i8>, ptr %i.dhw, align 1, !tbaa !29
  %i.dhy = shufflevector <4 x i8> %i.dhx, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.dhy, ptr %i.dhw, align 1, !tbaa !29
  %i.dhz = getelementptr i8, ptr %.06896.i, i64 -16 ; 4 uses
  %i.dia = load <4 x i8>, ptr %i.dhz, align 1, !tbaa !29
  %i.dib = shufflevector <4 x i8> %i.dia, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.dib, ptr %i.dhz, align 1, !tbaa !29
  %niter926.next.3 = add nuw i32 %niter926, 4     ; 2 uses
  %niter926.ncmp.3 = icmp eq i32 %niter926.next.3, %unroll_iter925
  br i1 %niter926.ncmp.3, label %png_do_read_swap_alpha.exit.loopexit.unr-lcssa, label %.lr.ph97.i, !llvm.loop !319

bb.jw:                                            ; preds = %bb.ju
  br i1 %.not100.i, label %png_do_read_swap_alpha.exit, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %bb.jw
  %i.dic = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.did = load i64, ptr %i.dic, align 8, !tbaa !215
  %i.die = getelementptr inbounds nuw i8, ptr %i.dhg, i64 %i.did ; 2 uses
  %xtraiter915 = and i32 %i.dhh, 1
  %i.dif = icmp eq i32 %i.dhh, 1
  br i1 %i.dif, label %.lr.ph93.i.epil.preheader, label %.lr.ph93.preheader.i.new

.lr.ph93.preheader.i.new:                         ; preds = %.lr.ph93.preheader.i
  %unroll_iter919 = and i32 %i.dhh, -2
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i.new
  %.07791.i = phi ptr [ %i.die, %.lr.ph93.preheader.i.new ], [ %i.dij, %.lr.ph93.i ] ; 2 uses
  %niter920 = phi i32 [ 0, %.lr.ph93.preheader.i.new ], [ %niter920.next.1, %.lr.ph93.i ]
  %i.dig = getelementptr i8, ptr %.07791.i, i64 -8 ; 2 uses
  %i.dih = load <8 x i8>, ptr %i.dig, align 1, !tbaa !29
  %i.dii = shufflevector <8 x i8> %i.dih, <8 x i8> poison, <8 x i32> <i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  store <8 x i8> %i.dii, ptr %i.dig, align 1, !tbaa !29
  %i.dij = getelementptr i8, ptr %.07791.i, i64 -16 ; 4 uses
  %i.dik = load <8 x i8>, ptr %i.dij, align 1, !tbaa !29
  %i.dil = shufflevector <8 x i8> %i.dik, <8 x i8> poison, <8 x i32> <i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  store <8 x i8> %i.dil, ptr %i.dij, align 1, !tbaa !29
  %niter920.next.1 = add nuw i32 %niter920, 2     ; 2 uses
  %niter920.ncmp.1 = icmp eq i32 %niter920.next.1, %unroll_iter919
  br i1 %niter920.ncmp.1, label %png_do_read_swap_alpha.exit.loopexit687.unr-lcssa, label %.lr.ph93.i, !llvm.loop !320

bb.jx:                                            ; preds = %bb.jt
  %i.dim = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.din = load i8, ptr %i.dim, align 1, !tbaa !210
  %i.dio = icmp eq i8 %i.din, 8
  %.not98.i = icmp eq i32 %i.dhh, 0               ; 2 uses
  br i1 %i.dio, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  br i1 %.not98.i, label %png_do_read_swap_alpha.exit, label %.lr.ph89.preheader.i

.lr.ph89.preheader.i:                             ; preds = %bb.jy
  %i.dip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.diq = load i64, ptr %i.dip, align 8, !tbaa !215
  %i.dir = getelementptr inbounds nuw i8, ptr %i.dhg, i64 %i.diq ; 2 uses
  %xtraiter909 = and i32 %i.dhh, 3                ; 3 uses
  %i.dis = icmp ult i32 %i.dhh, 4
  br i1 %i.dis, label %.lr.ph89.i.epil.preheader, label %.lr.ph89.preheader.i.new

.lr.ph89.preheader.i.new:                         ; preds = %.lr.ph89.preheader.i
  %unroll_iter913 = and i32 %i.dhh, -4
  br label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.preheader.i.new
  %.07487.i = phi ptr [ %i.dir, %.lr.ph89.preheader.i.new ], [ %i.djh, %.lr.ph89.i ] ; 8 uses
  %niter914 = phi i32 [ 0, %.lr.ph89.preheader.i.new ], [ %niter914.next.3, %.lr.ph89.i ]
  %i.dit = getelementptr inbounds i8, ptr %.07487.i, i64 -1 ; 2 uses
  %i.diu = load i8, ptr %i.dit, align 1, !tbaa !29
  %i.div = getelementptr i8, ptr %.07487.i, i64 -2 ; 2 uses
  %i.diw = load i8, ptr %i.div, align 1, !tbaa !29
  store i8 %i.diw, ptr %i.dit, align 1, !tbaa !29
  store i8 %i.diu, ptr %i.div, align 1, !tbaa !29
  %i.dix = getelementptr i8, ptr %.07487.i, i64 -3 ; 2 uses
  %i.diy = load i8, ptr %i.dix, align 1, !tbaa !29
  %i.diz = getelementptr i8, ptr %.07487.i, i64 -4 ; 2 uses
  %i.dja = load i8, ptr %i.diz, align 1, !tbaa !29
  store i8 %i.dja, ptr %i.dix, align 1, !tbaa !29
  store i8 %i.diy, ptr %i.diz, align 1, !tbaa !29
  %i.djb = getelementptr i8, ptr %.07487.i, i64 -5 ; 2 uses
  %i.djc = load i8, ptr %i.djb, align 1, !tbaa !29
  %i.djd = getelementptr i8, ptr %.07487.i, i64 -6 ; 2 uses
  %i.dje = load i8, ptr %i.djd, align 1, !tbaa !29
  store i8 %i.dje, ptr %i.djb, align 1, !tbaa !29
  store i8 %i.djc, ptr %i.djd, align 1, !tbaa !29
  %i.djf = getelementptr i8, ptr %.07487.i, i64 -7 ; 2 uses
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !29
  %i.djh = getelementptr i8, ptr %.07487.i, i64 -8 ; 4 uses
  %i.dji = load i8, ptr %i.djh, align 1, !tbaa !29
  store i8 %i.dji, ptr %i.djf, align 1, !tbaa !29
  store i8 %i.djg, ptr %i.djh, align 1, !tbaa !29
  %niter914.next.3 = add nuw i32 %niter914, 4     ; 2 uses
  %niter914.ncmp.3 = icmp eq i32 %niter914.next.3, %unroll_iter913
  br i1 %niter914.ncmp.3, label %png_do_read_swap_alpha.exit.loopexit688.unr-lcssa, label %.lr.ph89.i, !llvm.loop !321

bb.jz:                                            ; preds = %bb.jx
  br i1 %.not98.i, label %png_do_read_swap_alpha.exit, label %.lr.ph.preheader.i285

.lr.ph.preheader.i285:                            ; preds = %bb.jz
  %i.djj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.djk = load i64, ptr %i.djj, align 8, !tbaa !215
  %i.djl = getelementptr inbounds nuw i8, ptr %i.dhg, i64 %i.djk ; 2 uses
  %xtraiter903 = and i32 %i.dhh, 3                ; 3 uses
  %i.djm = icmp ult i32 %i.dhh, 4
  br i1 %i.djm, label %.lr.ph.i286.epil.preheader, label %.lr.ph.preheader.i285.new

.lr.ph.preheader.i285.new:                        ; preds = %.lr.ph.preheader.i285
  %unroll_iter907 = and i32 %i.dhh, -4
  br label %.lr.ph.i286

.lr.ph.i286:                                      ; preds = %.lr.ph.i286, %.lr.ph.preheader.i285.new
  %.07084.i = phi ptr [ %i.djl, %.lr.ph.preheader.i285.new ], [ %i.djw, %.lr.ph.i286 ] ; 4 uses
  %niter908 = phi i32 [ 0, %.lr.ph.preheader.i285.new ], [ %niter908.next.3, %.lr.ph.i286 ]
  %i.djn = getelementptr i8, ptr %.07084.i, i64 -4 ; 2 uses
  %i.djo = load <4 x i8>, ptr %i.djn, align 1, !tbaa !29
  %i.djp = shufflevector <4 x i8> %i.djo, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.djp, ptr %i.djn, align 1, !tbaa !29
  %i.djq = getelementptr i8, ptr %.07084.i, i64 -8 ; 2 uses
  %i.djr = load <4 x i8>, ptr %i.djq, align 1, !tbaa !29
  %i.djs = shufflevector <4 x i8> %i.djr, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.djs, ptr %i.djq, align 1, !tbaa !29
  %i.djt = getelementptr i8, ptr %.07084.i, i64 -12 ; 2 uses
  %i.dju = load <4 x i8>, ptr %i.djt, align 1, !tbaa !29
  %i.djv = shufflevector <4 x i8> %i.dju, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.djv, ptr %i.djt, align 1, !tbaa !29
  %i.djw = getelementptr i8, ptr %.07084.i, i64 -16 ; 4 uses
  %i.djx = load <4 x i8>, ptr %i.djw, align 1, !tbaa !29
  %i.djy = shufflevector <4 x i8> %i.djx, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.djy, ptr %i.djw, align 1, !tbaa !29
  %niter908.next.3 = add nuw i32 %niter908, 4     ; 2 uses
  %niter908.ncmp.3 = icmp eq i32 %niter908.next.3, %unroll_iter907
  br i1 %niter908.ncmp.3, label %png_do_read_swap_alpha.exit.loopexit689.unr-lcssa, label %.lr.ph.i286, !llvm.loop !322

png_do_read_swap_alpha.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph97.i
  %lcmp.mod923.not = icmp eq i32 %xtraiter921, 0
  br i1 %lcmp.mod923.not, label %png_do_read_swap_alpha.exit, label %.lr.ph97.i.epil.preheader

.lr.ph97.i.epil.preheader:                        ; preds = %png_do_read_swap_alpha.exit.loopexit.unr-lcssa, %.lr.ph97.preheader.i
  %.06896.i.epil.init = phi ptr [ %i.dho, %.lr.ph97.preheader.i ], [ %i.dhz, %png_do_read_swap_alpha.exit.loopexit.unr-lcssa ]
  %lcmp.mod924 = icmp ne i32 %xtraiter921, 0
  tail call void @llvm.assume(i1 %lcmp.mod924)
  br label %.lr.ph97.i.epil

.lr.ph97.i.epil:                                  ; preds = %.lr.ph97.i.epil, %.lr.ph97.i.epil.preheader
  %.06896.i.epil = phi ptr [ %i.djz, %.lr.ph97.i.epil ], [ %.06896.i.epil.init, %.lr.ph97.i.epil.preheader ]
  %epil.iter922 = phi i32 [ %epil.iter922.next, %.lr.ph97.i.epil ], [ 0, %.lr.ph97.i.epil.preheader ]
  %i.djz = getelementptr i8, ptr %.06896.i.epil, i64 -4 ; 3 uses
  %i.dka = load <4 x i8>, ptr %i.djz, align 1, !tbaa !29
  %i.dkb = shufflevector <4 x i8> %i.dka, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.dkb, ptr %i.djz, align 1, !tbaa !29
  %epil.iter922.next = add i32 %epil.iter922, 1   ; 2 uses
  %epil.iter922.cmp.not = icmp eq i32 %epil.iter922.next, %xtraiter921
  br i1 %epil.iter922.cmp.not, label %png_do_read_swap_alpha.exit, label %.lr.ph97.i.epil, !llvm.loop !323

png_do_read_swap_alpha.exit.loopexit687.unr-lcssa: ; preds = %.lr.ph93.i
  %lcmp.mod917.not = icmp eq i32 %xtraiter915, 0
  br i1 %lcmp.mod917.not, label %png_do_read_swap_alpha.exit, label %.lr.ph93.i.epil.preheader

.lr.ph93.i.epil.preheader:                        ; preds = %png_do_read_swap_alpha.exit.loopexit687.unr-lcssa, %.lr.ph93.preheader.i
  %.07791.i.epil.init = phi ptr [ %i.die, %.lr.ph93.preheader.i ], [ %i.dij, %png_do_read_swap_alpha.exit.loopexit687.unr-lcssa ]
  %lcmp.mod918 = trunc i32 %i.dhh to i1
  tail call void @llvm.assume(i1 %lcmp.mod918)
  %i.dkc = getelementptr i8, ptr %.07791.i.epil.init, i64 -8 ; 2 uses
  %i.dkd = load <8 x i8>, ptr %i.dkc, align 1, !tbaa !29
  %i.dke = shufflevector <8 x i8> %i.dkd, <8 x i8> poison, <8 x i32> <i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  store <8 x i8> %i.dke, ptr %i.dkc, align 1, !tbaa !29
  br label %png_do_read_swap_alpha.exit

png_do_read_swap_alpha.exit.loopexit688.unr-lcssa: ; preds = %.lr.ph89.i
  %lcmp.mod911.not = icmp eq i32 %xtraiter909, 0
  br i1 %lcmp.mod911.not, label %png_do_read_swap_alpha.exit, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %png_do_read_swap_alpha.exit.loopexit688.unr-lcssa, %.lr.ph89.preheader.i
  %.07487.i.epil.init = phi ptr [ %i.dir, %.lr.ph89.preheader.i ], [ %i.djh, %png_do_read_swap_alpha.exit.loopexit688.unr-lcssa ]
  %lcmp.mod912 = icmp ne i32 %xtraiter909, 0
  tail call void @llvm.assume(i1 %lcmp.mod912)
  br label %.lr.ph89.i.epil

.lr.ph89.i.epil:                                  ; preds = %.lr.ph89.i.epil, %.lr.ph89.i.epil.preheader
  %.07487.i.epil = phi ptr [ %i.dkh, %.lr.ph89.i.epil ], [ %.07487.i.epil.init, %.lr.ph89.i.epil.preheader ] ; 2 uses
  %epil.iter910 = phi i32 [ %epil.iter910.next, %.lr.ph89.i.epil ], [ 0, %.lr.ph89.i.epil.preheader ]
  %i.dkf = getelementptr inbounds i8, ptr %.07487.i.epil, i64 -1 ; 2 uses
  %i.dkg = load i8, ptr %i.dkf, align 1, !tbaa !29
  %i.dkh = getelementptr i8, ptr %.07487.i.epil, i64 -2 ; 3 uses
  %i.dki = load i8, ptr %i.dkh, align 1, !tbaa !29
  store i8 %i.dki, ptr %i.dkf, align 1, !tbaa !29
  store i8 %i.dkg, ptr %i.dkh, align 1, !tbaa !29
  %epil.iter910.next = add i32 %epil.iter910, 1   ; 2 uses
  %epil.iter910.cmp.not = icmp eq i32 %epil.iter910.next, %xtraiter909
  br i1 %epil.iter910.cmp.not, label %png_do_read_swap_alpha.exit, label %.lr.ph89.i.epil, !llvm.loop !324

png_do_read_swap_alpha.exit.loopexit689.unr-lcssa: ; preds = %.lr.ph.i286
  %lcmp.mod905.not = icmp eq i32 %xtraiter903, 0
  br i1 %lcmp.mod905.not, label %png_do_read_swap_alpha.exit, label %.lr.ph.i286.epil.preheader

.lr.ph.i286.epil.preheader:                       ; preds = %png_do_read_swap_alpha.exit.loopexit689.unr-lcssa, %.lr.ph.preheader.i285
  %.07084.i.epil.init = phi ptr [ %i.djl, %.lr.ph.preheader.i285 ], [ %i.djw, %png_do_read_swap_alpha.exit.loopexit689.unr-lcssa ]
  %lcmp.mod906 = icmp ne i32 %xtraiter903, 0
  tail call void @llvm.assume(i1 %lcmp.mod906)
  br label %.lr.ph.i286.epil

.lr.ph.i286.epil:                                 ; preds = %.lr.ph.i286.epil, %.lr.ph.i286.epil.preheader
  %.07084.i.epil = phi ptr [ %i.dkj, %.lr.ph.i286.epil ], [ %.07084.i.epil.init, %.lr.ph.i286.epil.preheader ]
  %epil.iter904 = phi i32 [ %epil.iter904.next, %.lr.ph.i286.epil ], [ 0, %.lr.ph.i286.epil.preheader ]
  %i.dkj = getelementptr i8, ptr %.07084.i.epil, i64 -4 ; 3 uses
  %i.dkk = load <4 x i8>, ptr %i.dkj, align 1, !tbaa !29
  %i.dkl = shufflevector <4 x i8> %i.dkk, <4 x i8> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i8> %i.dkl, ptr %i.dkj, align 1, !tbaa !29
  %epil.iter904.next = add i32 %epil.iter904, 1   ; 2 uses
  %epil.iter904.cmp.not = icmp eq i32 %epil.iter904.next, %xtraiter903
  br i1 %epil.iter904.cmp.not, label %png_do_read_swap_alpha.exit, label %.lr.ph.i286.epil, !llvm.loop !325

png_do_read_swap_alpha.exit:                      ; preds = %png_do_read_swap_alpha.exit.loopexit689.unr-lcssa, %.lr.ph.i286.epil, %png_do_read_swap_alpha.exit.loopexit688.unr-lcssa, %.lr.ph89.i.epil, %.lr.ph93.i.epil.preheader, %png_do_read_swap_alpha.exit.loopexit687.unr-lcssa, %png_do_read_swap_alpha.exit.loopexit.unr-lcssa, %.lr.ph97.i.epil, %bb.jz, %bb.jy, %bb.jw, %bb.jv, %bb.jt, %png_do_read_filler.exit
  %i.dkm = load i32, ptr %i.h, align 4, !tbaa !27 ; 2 uses
  %i.dkn = and i32 %i.dkm, 16
  %.not171 = icmp eq i32 %i.dkn, 0
  br i1 %.not171, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %png_do_read_swap_alpha.exit
  %i.dko = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 1
  tail call void @png_do_swap(ptr noundef nonnull %1, ptr noundef nonnull %i.dkp) #11
  %.pre412 = load i32, ptr %i.h, align 4, !tbaa !27
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %png_do_read_swap_alpha.exit
  %i.dkq = phi i32 [ %.pre412, %bb.ka ], [ %i.dkm, %png_do_read_swap_alpha.exit ]
  %i.dkr = and i32 %i.dkq, 1048576
  %.not172 = icmp eq i32 %i.dkr, 0
  br i1 %.not172, label %bb.km, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.dks = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !135 ; 2 uses
  %.not173 = icmp eq ptr %i.dkt, null
  br i1 %.not173, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.dku = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.dkv = getelementptr inbounds nuw i8, ptr %i.dku, i64 1
  tail call void %i.dkt(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dkv) #11
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %i.dkw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dkx = load i8, ptr %i.dkw, align 8, !tbaa !200 ; 2 uses
  %.not174 = icmp eq i8 %i.dkx, 0
  br i1 %.not174, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.dky = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.dkx, ptr %i.dky, align 1, !tbaa !210
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  %i.dkz = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.dla = load i8, ptr %i.dkz, align 1, !tbaa !201 ; 3 uses
  %.not175 = icmp eq i8 %i.dla, 0
  %.phi.trans.insert414 = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  br i1 %.not175, label %._crit_edge413, label %bb.kh

._crit_edge413:                                   ; preds = %bb.kg
  %.pre415 = load i8, ptr %.phi.trans.insert414, align 2, !tbaa !218
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  store i8 %i.dla, ptr %.phi.trans.insert414, align 2, !tbaa !218
  br label %bb.ki

bb.ki:                                            ; preds = %._crit_edge413, %bb.kh
  %i.dlb = phi i8 [ %.pre415, %._crit_edge413 ], [ %i.dla, %bb.kh ]
  %i.dlc = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !210
  %i.dle = mul i8 %i.dlb, %i.dld                  ; 4 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.dle, ptr %i.dlf, align 1, !tbaa !214
  %i.dlg = icmp ugt i8 %i.dle, 7
  %i.dlh = load i32, ptr %1, align 8, !tbaa !209
  %i.dli = zext i32 %i.dlh to i64                 ; 2 uses
  br i1 %i.dlg, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.dlj = lshr i8 %i.dle, 3
  %i.dlk = zext nneg i8 %i.dlj to i64
  %i.dll = mul nuw nsw i64 %i.dli, %i.dlk
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki
  %i.dlm = zext nneg i8 %i.dle to i64
  %i.dln = mul nuw nsw i64 %i.dli, %i.dlm
  %i.dlo = add nuw nsw i64 %i.dln, 7
  %i.dlp = lshr i64 %i.dlo, 3
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %i.dlq = phi i64 [ %i.dll, %bb.kj ], [ %i.dlp, %bb.kk ]
  %i.dlr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dlq, ptr %i.dlr, align 8, !tbaa !215
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kb
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @png_do_expand(ptr nofree noundef captures(none) %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !209    ; 38 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !207   ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !326
  %i.g = zext i16 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ]    ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !210   ; 3 uses
  %i.k = icmp ult i8 %i.j, 8
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  switch i8 %i.j, label %..loopexit231_crit_edge [
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 4, label %bb.h
  ]

..loopexit231_crit_edge:                          ; preds = %bb.e
  %.pre = zext i32 %i.a to i64
  br label %.loopexit231

bb.f:                                             ; preds = %bb.e
  %i.l = trunc i32 %i.h to i1
  %i.m = select i1 %i.l, i32 255, i32 0           ; 3 uses
  %i.n = zext i32 %i.a to i64                     ; 3 uses
  %.not270 = icmp eq i32 %i.a, 0
  br i1 %.not270, label %.loopexit231, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %bb.f
  %i.o = sub i32 0, %i.a
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.n ; 2 uses
  %i.r = add i32 %i.a, -1                         ; 2 uses
  %i.s = lshr i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t ; 2 uses
  %xtraiter324 = and i32 %i.a, 1
  %i.v = icmp eq i32 %i.r, 0
  br i1 %i.v, label %.lr.ph257.epil.preheader, label %.lr.ph257.preheader.new

.lr.ph257.preheader.new:                          ; preds = %.lr.ph257.preheader
  %unroll_iter327 = and i32 %i.a, -2
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257, %.lr.ph257.preheader.new
  %.0256 = phi i32 [ %i.p, %.lr.ph257.preheader.new ], [ %.1.1, %.lr.ph257 ] ; 3 uses
  %.0191255 = phi ptr [ %i.u, %.lr.ph257.preheader.new ], [ %.1192.1, %.lr.ph257 ] ; 2 uses
  %.pn225254 = phi ptr [ %i.q, %.lr.ph257.preheader.new ], [ %.0197.1, %.lr.ph257 ] ; 2 uses
  %niter328 = phi i32 [ 0, %.lr.ph257.preheader.new ], [ %niter328.next.1, %.lr.ph257 ]
  %.0197 = getelementptr inbounds i8, ptr %.pn225254, i64 -1
  %i.w = load i8, ptr %.0191255, align 1, !tbaa !29
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw i32 1, %.0256
  %i.z = and i32 %i.y, %i.x
  %.not223 = icmp ne i32 %i.z, 0
  %. = sext i1 %.not223 to i8
  store i8 %., ptr %.0197, align 1, !tbaa !29
  %i.aa = icmp eq i32 %.0256, 7                   ; 2 uses
  %i.ab = add nuw nsw i32 %.0256, 1
  %.1192.idx = sext i1 %i.aa to i64
  %.1192 = getelementptr inbounds i8, ptr %.0191255, i64 %.1192.idx ; 2 uses
  %.1 = select i1 %i.aa, i32 0, i32 %i.ab         ; 3 uses
  %.0197.1 = getelementptr inbounds i8, ptr %.pn225254, i64 -2 ; 3 uses
  %i.ac = load i8, ptr %.1192, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw i32 1, %.1
  %i.af = and i32 %i.ae, %i.ad
  %.not223.1 = icmp ne i32 %i.af, 0
  %..1 = sext i1 %.not223.1 to i8
  store i8 %..1, ptr %.0197.1, align 1, !tbaa !29
  %i.ag = icmp eq i32 %.1, 7                      ; 2 uses
  %i.ah = add nuw nsw i32 %.1, 1
  %.1192.idx.1 = sext i1 %i.ag to i64
  %.1192.1 = getelementptr inbounds i8, ptr %.1192, i64 %.1192.idx.1 ; 2 uses
  %.1.1 = select i1 %i.ag, i32 0, i32 %i.ah       ; 2 uses
  %niter328.next.1 = add nuw i32 %niter328, 2     ; 2 uses
  %niter328.ncmp.1 = icmp eq i32 %niter328.next.1, %unroll_iter327
  br i1 %niter328.ncmp.1, label %.loopexit231.loopexit.unr-lcssa, label %.lr.ph257, !llvm.loop !327

bb.g:                                             ; preds = %bb.e
  %i.ai = and i32 %i.h, 3
  %i.aj = mul nuw nsw i32 %i.ai, 85               ; 3 uses
  %i.ak = zext i32 %i.a to i64                    ; 3 uses
  %.not269 = icmp eq i32 %i.a, 0
  br i1 %.not269, label %.loopexit231, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %bb.g
  %.neg = mul i32 %i.a, 6
  %i.al = and i32 %.neg, 6                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak ; 2 uses
  %i.an = add i32 %i.a, -1                        ; 2 uses
  %i.ao = lshr i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap ; 2 uses
  %xtraiter319 = and i32 %i.a, 1
  %i.ar = icmp eq i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph252.epil.preheader, label %.lr.ph252.preheader.new

.lr.ph252.preheader.new:                          ; preds = %.lr.ph252.preheader
  %unroll_iter322 = and i32 %i.a, -2
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252, %.lr.ph252.preheader.new
  %.2251 = phi i32 [ %i.al, %.lr.ph252.preheader.new ], [ %.3.1, %.lr.ph252 ] ; 3 uses
  %.2193250 = phi ptr [ %i.aq, %.lr.ph252.preheader.new ], [ %.3194.1, %.lr.ph252 ] ; 2 uses
  %.pn222249 = phi ptr [ %i.am, %.lr.ph252.preheader.new ], [ %.1198.1, %.lr.ph252 ] ; 2 uses
  %niter323 = phi i32 [ 0, %.lr.ph252.preheader.new ], [ %niter323.next.1, %.lr.ph252 ]
  %.1198 = getelementptr inbounds i8, ptr %.pn222249, i64 -1
  %i.as = load i8, ptr %.2193250, align 1, !tbaa !29
  %i.at = zext i8 %i.as to i32
  %i.au = lshr i32 %i.at, %.2251
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = and i8 %i.av, 3
  %i.ax = mul nuw i8 %i.aw, 85
  store i8 %i.ax, ptr %.1198, align 1, !tbaa !29
  %i.ay = icmp eq i32 %.2251, 6                   ; 2 uses
  %i.az = add nsw i32 %.2251, 2
  %.3194.idx = sext i1 %i.ay to i64
  %.3194 = getelementptr inbounds i8, ptr %.2193250, i64 %.3194.idx ; 2 uses
  %.3 = select i1 %i.ay, i32 0, i32 %i.az         ; 3 uses
  %.1198.1 = getelementptr inbounds i8, ptr %.pn222249, i64 -2 ; 3 uses
  %i.ba = load i8, ptr %.3194, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i32
  %i.bc = lshr i32 %i.bb, %.3
  %i.bd = trunc nuw i32 %i.bc to i8
  %i.be = and i8 %i.bd, 3
  %i.bf = mul nuw i8 %i.be, 85
  store i8 %i.bf, ptr %.1198.1, align 1, !tbaa !29
  %i.bg = icmp eq i32 %.3, 6                      ; 2 uses
  %i.bh = add nsw i32 %.3, 2
  %.3194.idx.1 = sext i1 %i.bg to i64
  %.3194.1 = getelementptr inbounds i8, ptr %.3194, i64 %.3194.idx.1 ; 2 uses
  %.3.1 = select i1 %i.bg, i32 0, i32 %i.bh       ; 2 uses
  %niter323.next.1 = add nuw i32 %niter323, 2     ; 2 uses
  %niter323.ncmp.1 = icmp eq i32 %niter323.next.1, %unroll_iter322
  br i1 %niter323.ncmp.1, label %.loopexit231.loopexit315.unr-lcssa, label %.lr.ph252, !llvm.loop !328

bb.h:                                             ; preds = %bb.e
  %i.bi = and i32 %i.h, 15
  %i.bj = mul nuw nsw i32 %i.bi, 17               ; 3 uses
  %i.bk = zext i32 %i.a to i64                    ; 3 uses
  %.not268 = icmp eq i32 %i.a, 0
  br i1 %.not268, label %.loopexit231, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.h
  %i.bl = shl i32 %i.a, 2
  %i.bm = and i32 %i.bl, 4                        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk ; 2 uses
  %i.bo = add i32 %i.a, -1                        ; 2 uses
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq ; 2 uses
  %xtraiter = and i32 %i.a, 1
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %.lr.ph247.epil.preheader, label %.lr.ph247.preheader.new

.lr.ph247.preheader.new:                          ; preds = %.lr.ph247.preheader
  %unroll_iter = and i32 %i.a, -2
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247, %.lr.ph247.preheader.new
  %.4246 = phi i32 [ %i.bm, %.lr.ph247.preheader.new ], [ %.5.1, %.lr.ph247 ] ; 2 uses
  %.4195245 = phi ptr [ %i.br, %.lr.ph247.preheader.new ], [ %.5196.1, %.lr.ph247 ] ; 2 uses
  %.pn244 = phi ptr [ %i.bn, %.lr.ph247.preheader.new ], [ %.2199.1, %.lr.ph247 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph247.preheader.new ], [ %niter.next.1, %.lr.ph247 ]
  %.2199 = getelementptr inbounds i8, ptr %.pn244, i64 -1
  %i.bt = load i8, ptr %.4195245, align 1, !tbaa !29
  %i.bu = zext i8 %i.bt to i32
  %i.bv = lshr i32 %i.bu, %.4246                  ; 2 uses
  %i.bw = and i32 %i.bv, 15
  %i.bx = shl nuw nsw i32 %i.bv, 4
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %.2199, align 1, !tbaa !29
  %.not229 = icmp ne i32 %.4246, 0                ; 4 uses
  %.5196.idx = sext i1 %.not229 to i64
  %.5196 = getelementptr inbounds i8, ptr %.4195245, i64 %.5196.idx ; 2 uses
  %.5 = select i1 %.not229, i32 0, i32 4
  %.2199.1 = getelementptr inbounds i8, ptr %.pn244, i64 -2 ; 3 uses
  %i.ca = load i8, ptr %.5196, align 1, !tbaa !29
  %i.cb = zext i8 %i.ca to i32
  %i.cc = lshr i32 %i.cb, %.5                     ; 2 uses
  %i.cd = and i32 %i.cc, 15
  %i.ce = shl nuw nsw i32 %i.cc, 4
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %.2199.1, align 1, !tbaa !29
  %not..not229 = xor i1 %.not229, true
  %.5196.idx.1 = sext i1 %not..not229 to i64
  %.5196.1 = getelementptr inbounds i8, ptr %.5196, i64 %.5196.idx.1 ; 2 uses
  %.5.1 = select i1 %.not229, i32 4, i32 0        ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit231.loopexit316.unr-lcssa, label %.lr.ph247, !llvm.loop !329

.loopexit231.loopexit.unr-lcssa:                  ; preds = %.lr.ph257
  %lcmp.mod325.not = icmp eq i32 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %.loopexit231, label %.lr.ph257.epil.preheader

.lr.ph257.epil.preheader:                         ; preds = %.loopexit231.loopexit.unr-lcssa, %.lr.ph257.preheader
  %.0256.epil.init = phi i32 [ %i.p, %.lr.ph257.preheader ], [ %.1.1, %.loopexit231.loopexit.unr-lcssa ]
  %.0191255.epil.init = phi ptr [ %i.u, %.lr.ph257.preheader ], [ %.1192.1, %.loopexit231.loopexit.unr-lcssa ]
  %.pn225254.epil.init = phi ptr [ %i.q, %.lr.ph257.preheader ], [ %.0197.1, %.loopexit231.loopexit.unr-lcssa ]
  %lcmp.mod326 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod326)
  %.0197.epil = getelementptr inbounds i8, ptr %.pn225254.epil.init, i64 -1
  %i.ch = load i8, ptr %.0191255.epil.init, align 1, !tbaa !29
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw i32 1, %.0256.epil.init
  %i.ck = and i32 %i.cj, %i.ci
  %.not223.epil = icmp ne i32 %i.ck, 0
  %..epil = sext i1 %.not223.epil to i8
  store i8 %..epil, ptr %.0197.epil, align 1, !tbaa !29
  br label %.loopexit231

.loopexit231.loopexit315.unr-lcssa:               ; preds = %.lr.ph252
  %lcmp.mod320.not = icmp eq i32 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %.loopexit231, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %.loopexit231.loopexit315.unr-lcssa, %.lr.ph252.preheader
  %.2251.epil.init = phi i32 [ %i.al, %.lr.ph252.preheader ], [ %.3.1, %.loopexit231.loopexit315.unr-lcssa ]
  %.2193250.epil.init = phi ptr [ %i.aq, %.lr.ph252.preheader ], [ %.3194.1, %.loopexit231.loopexit315.unr-lcssa ]
  %.pn222249.epil.init = phi ptr [ %i.am, %.lr.ph252.preheader ], [ %.1198.1, %.loopexit231.loopexit315.unr-lcssa ]
  %lcmp.mod321 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod321)
  %.1198.epil = getelementptr inbounds i8, ptr %.pn222249.epil.init, i64 -1
  %i.cl = load i8, ptr %.2193250.epil.init, align 1, !tbaa !29
  %i.cm = zext i8 %i.cl to i32
  %i.cn = lshr i32 %i.cm, %.2251.epil.init
  %i.co = trunc nuw i32 %i.cn to i8
  %i.cp = and i8 %i.co, 3
  %i.cq = mul nuw i8 %i.cp, 85
  store i8 %i.cq, ptr %.1198.epil, align 1, !tbaa !29
  br label %.loopexit231

.loopexit231.loopexit316.unr-lcssa:               ; preds = %.lr.ph247
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit231, label %.lr.ph247.epil.preheader

.lr.ph247.epil.preheader:                         ; preds = %.loopexit231.loopexit316.unr-lcssa, %.lr.ph247.preheader
  %.4246.epil.init = phi i32 [ %i.bm, %.lr.ph247.preheader ], [ %.5.1, %.loopexit231.loopexit316.unr-lcssa ]
  %.4195245.epil.init = phi ptr [ %i.br, %.lr.ph247.preheader ], [ %.5196.1, %.loopexit231.loopexit316.unr-lcssa ]
  %.pn244.epil.init = phi ptr [ %i.bn, %.lr.ph247.preheader ], [ %.2199.1, %.loopexit231.loopexit316.unr-lcssa ]
  %lcmp.mod318 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod318)
  %.2199.epil = getelementptr inbounds i8, ptr %.pn244.epil.init, i64 -1
  %i.cr = load i8, ptr %.4195245.epil.init, align 1, !tbaa !29
  %i.cs = zext i8 %i.cr to i32
  %i.ct = lshr i32 %i.cs, %.4246.epil.init        ; 2 uses
  %i.cu = and i32 %i.ct, 15
  %i.cv = shl nuw nsw i32 %i.ct, 4
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i8
  store i8 %i.cx, ptr %.2199.epil, align 1, !tbaa !29
  br label %.loopexit231

.loopexit231:                                     ; preds = %.lr.ph247.epil.preheader, %.loopexit231.loopexit316.unr-lcssa, %.lr.ph252.epil.preheader, %.loopexit231.loopexit315.unr-lcssa, %.lr.ph257.epil.preheader, %.loopexit231.loopexit.unr-lcssa, %..loopexit231_crit_edge, %bb.h, %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre, %..loopexit231_crit_edge ], [ %i.ak, %.lr.ph252.epil.preheader ], [ %i.n, %.lr.ph257.epil.preheader ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ %i.n, %.loopexit231.loopexit.unr-lcssa ], [ %i.ak, %.loopexit231.loopexit315.unr-lcssa ], [ %i.bk, %.loopexit231.loopexit316.unr-lcssa ], [ %i.bk, %.lr.ph247.epil.preheader ]
  %.0214 = phi i32 [ %i.h, %..loopexit231_crit_edge ], [ %i.aj, %.lr.ph252.epil.preheader ], [ %i.m, %.lr.ph257.epil.preheader ], [ %i.m, %bb.f ], [ %i.bj, %bb.h ], [ %i.aj, %bb.g ], [ %i.m, %.loopexit231.loopexit.unr-lcssa ], [ %i.aj, %.loopexit231.loopexit315.unr-lcssa ], [ %i.bj, %.loopexit231.loopexit316.unr-lcssa ], [ %i.bj, %.lr.ph247.epil.preheader ]
  store i8 8, ptr %i.i, align 1, !tbaa !210
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 8, ptr %i.cy, align 1, !tbaa !214
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pre-phi, ptr %i.cz, align 8, !tbaa !215
  br label %bb.i

bb.i:                                             ; preds = %.loopexit231, %bb.d
  %i.da = phi i8 [ 8, %.loopexit231 ], [ %i.j, %bb.d ]
  %.1215 = phi i32 [ %.0214, %.loopexit231 ], [ %i.h, %bb.d ] ; 3 uses
  br i1 %.not, label %bb.am, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.da, label %.loopexit [
    i8 8, label %bb.k
    i8 16, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %.not272 = icmp eq i32 %i.a, 0
  br i1 %.not272, label %.loopexit, label %.lr.ph265

.lr.ph265:                                        ; preds = %bb.k
  %i.db = zext i32 %i.a to i64                    ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.db ; 2 uses
  %i.dg = trunc i32 %.1215 to i8                  ; 3 uses
  %xtraiter329 = and i32 %i.a, 1
  %i.dh = icmp eq i32 %i.a, 1
  br i1 %i.dh, label %.epil.preheader, label %.lr.ph265.new

.lr.ph265.new:                                    ; preds = %.lr.ph265
  %unroll_iter332 = and i32 %i.a, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph265.new
  %.pn227264 = phi ptr [ %i.df, %.lr.ph265.new ], [ %.6.1, %bb.l ] ; 2 uses
  %.3200263 = phi ptr [ %i.de, %.lr.ph265.new ], [ %i.dp, %bb.l ] ; 5 uses
  %niter333 = phi i32 [ 0, %.lr.ph265.new ], [ %niter333.next.1, %bb.l ]
  %.6 = getelementptr inbounds i8, ptr %.pn227264, i64 -1 ; 2 uses
  %i.di = load i8, ptr %.6, align 1, !tbaa !29
  %i.dj = icmp ne i8 %i.di, %i.dg
  %.228 = sext i1 %i.dj to i8
  %.4201 = getelementptr inbounds i8, ptr %.3200263, i64 -1
  store i8 %.228, ptr %.3200263, align 1, !tbaa !29
  %i.dk = load i8, ptr %.6, align 1, !tbaa !29
  %i.dl = getelementptr inbounds i8, ptr %.3200263, i64 -2
  store i8 %i.dk, ptr %.4201, align 1, !tbaa !29
  %.6.1 = getelementptr inbounds i8, ptr %.pn227264, i64 -2 ; 4 uses
  %i.dm = load i8, ptr %.6.1, align 1, !tbaa !29
  %i.dn = icmp ne i8 %i.dm, %i.dg
  %.228.1 = sext i1 %i.dn to i8
  %.4201.1 = getelementptr inbounds i8, ptr %.3200263, i64 -3
  store i8 %.228.1, ptr %i.dl, align 1, !tbaa !29
  %i.do = load i8, ptr %.6.1, align 1, !tbaa !29
  %i.dp = getelementptr inbounds i8, ptr %.3200263, i64 -4 ; 2 uses
  store i8 %i.do, ptr %.4201.1, align 1, !tbaa !29
  %niter333.next.1 = add nuw i32 %niter333, 2     ; 2 uses
  %niter333.ncmp.1 = icmp eq i32 %niter333.next.1, %unroll_iter332
  br i1 %niter333.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !330

bb.m:                                             ; preds = %bb.j
  %i.dq = lshr i32 %.1215, 8
  %.not271 = icmp eq i32 %i.a, 0
  br i1 %.not271, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !215 ; 2 uses
  %i.dt = shl i64 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -1
  %i.dy = trunc i32 %.1215 to i8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph261, %bb.q
  %.7260 = phi ptr [ %i.dx, %.lr.ph261 ], [ %i.ei, %bb.q ] ; 4 uses
  %.5202259 = phi ptr [ %i.dv, %.lr.ph261 ], [ %i.ek, %bb.q ] ; 5 uses
  %.4211258 = phi i32 [ 0, %.lr.ph261 ], [ %i.el, %bb.q ]
  %i.dz = getelementptr inbounds i8, ptr %.7260, i64 -1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !29
  %i.eb = zext i8 %i.ea to i32
  %i.ec = icmp eq i32 %i.dq, %i.eb
  br i1 %i.ec, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = load i8, ptr %.7260, align 1, !tbaa !29
  %i.ee = icmp eq i8 %i.ed, %i.dy
  br i1 %i.ee, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink304 = phi i8 [ -1, %bb.p ], [ 0, %bb.o ]  ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.5202259, i64 -1
  store i8 %.sink304, ptr %.5202259, align 1, !tbaa !29
  store i8 %.sink304, ptr %i.ef, align 1, !tbaa !29
  %.6203 = getelementptr inbounds i8, ptr %.5202259, i64 -2
  %i.eg = load i8, ptr %.7260, align 1, !tbaa !29
  %i.eh = getelementptr inbounds i8, ptr %.5202259, i64 -3
  store i8 %i.eg, ptr %.6203, align 1, !tbaa !29
  %i.ei = getelementptr inbounds i8, ptr %.7260, i64 -2
  %i.ej = load i8, ptr %i.dz, align 1, !tbaa !29
  %i.ek = getelementptr inbounds i8, ptr %.5202259, i64 -4
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !29
  %i.el = add nuw i32 %.4211258, 1                ; 2 uses
  %exitcond281.not = icmp eq i32 %i.el, %i.a
  br i1 %exitcond281.not, label %.loopexit, label %bb.n, !llvm.loop !331

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod330.not = icmp eq i32 %xtraiter329, 0
  br i1 %lcmp.mod330.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph265
  %.pn227264.epil.init = phi ptr [ %i.df, %.lr.ph265 ], [ %.6.1, %.loopexit.loopexit.unr-lcssa ]
  %.3200263.epil.init = phi ptr [ %i.de, %.lr.ph265 ], [ %i.dp, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod331)
  %.6.epil = getelementptr inbounds i8, ptr %.pn227264.epil.init, i64 -1 ; 2 uses
  %i.em = load i8, ptr %.6.epil, align 1, !tbaa !29
  %i.en = icmp ne i8 %i.em, %i.dg
  %.228.epil = sext i1 %i.en to i8
  %.4201.epil = getelementptr inbounds i8, ptr %.3200263.epil.init, i64 -1
  store i8 %.228.epil, ptr %.3200263.epil.init, align 1, !tbaa !29
  %i.eo = load i8, ptr %.6.epil, align 1, !tbaa !29
  store i8 %i.eo, ptr %.4201.epil, align 1, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m, %bb.k, %bb.j
  store i8 4, ptr %i.b, align 8, !tbaa !207
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 2, ptr %i.ep, align 2, !tbaa !218
  %i.eq = load i8, ptr %i.i, align 1, !tbaa !210
  %i.er = shl i8 %i.eq, 1                         ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.er, ptr %i.es, align 1, !tbaa !214
  %i.et = icmp ugt i8 %i.er, 7
  %i.eu = zext i32 %i.a to i64                    ; 2 uses
  br i1 %i.et, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.loopexit
  %i.ev = lshr i8 %i.er, 3
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = mul nuw nsw i64 %i.ew, %i.eu
  br label %.sink.split

bb.s:                                             ; preds = %.loopexit
  %i.ey = zext nneg i8 %i.er to i64
  %i.ez = mul nuw nsw i64 %i.ey, %i.eu
  %i.fa = add nuw nsw i64 %i.ez, 6
  %i.fb = lshr i64 %i.fa, 3
  br label %.sink.split

bb.t:                                             ; preds = %bb.a
  %i.fc = icmp eq i8 %i.c, 2
  %i.fd = icmp ne ptr %2, null
  %or.cond = and i1 %i.fd, %i.fc
  br i1 %or.cond, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !210
  switch i8 %i.ff, label %.loopexit234 [
    i8 8, label %bb.v
    i8 16, label %bb.ab
  ]

bb.v:                                             ; preds = %bb.u
  %.not267 = icmp eq i32 %i.a, 0
  br i1 %.not267, label %.loopexit234, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.v
  %i.fg = zext i32 %i.a to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %i.fh
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -1
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !215
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -1
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !332
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !333
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !334
  %i.fu = trunc i16 %i.ft to i8
  %i.fv = trunc i16 %i.fr to i8
  %i.fw = trunc i16 %i.fp to i8
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph242, %bb.aa
  %.8241 = phi ptr [ %i.fn, %.lr.ph242 ], [ %i.gk, %bb.aa ] ; 6 uses
  %.7204240 = phi ptr [ %i.fj, %.lr.ph242 ], [ %i.gm, %bb.aa ] ; 5 uses
  %.5212239 = phi i32 [ 0, %.lr.ph242 ], [ %i.gn, %bb.aa ]
  %i.fx = getelementptr inbounds i8, ptr %.8241, i64 -2 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !29
  %i.fz = icmp eq i8 %i.fy, %i.fu
  br i1 %i.fz, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ga = getelementptr inbounds i8, ptr %.8241, i64 -1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !29
  %i.gc = icmp eq i8 %i.gb, %i.fv
  br i1 %i.gc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gd = load i8, ptr %.8241, align 1, !tbaa !29
  %i.ge = icmp eq i8 %i.gd, %i.fw
  br i1 %i.ge, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %storemerge = phi i8 [ -1, %bb.z ], [ 0, %bb.y ]
  %.8205 = getelementptr inbounds i8, ptr %.7204240, i64 -1
  store i8 %storemerge, ptr %.7204240, align 1, !tbaa !29
  %i.gf = getelementptr inbounds i8, ptr %.8241, i64 -1
  %i.gg = load i8, ptr %.8241, align 1, !tbaa !29
  %i.gh = getelementptr inbounds i8, ptr %.7204240, i64 -2
  store i8 %i.gg, ptr %.8205, align 1, !tbaa !29
  %i.gi = load i8, ptr %i.gf, align 1, !tbaa !29
  %i.gj = getelementptr inbounds i8, ptr %.7204240, i64 -3
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !29
  %i.gk = getelementptr inbounds i8, ptr %.8241, i64 -3
  %i.gl = load i8, ptr %i.fx, align 1, !tbaa !29
  %i.gm = getelementptr inbounds i8, ptr %.7204240, i64 -4
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !29
  %i.gn = add nuw i32 %.5212239, 1                ; 2 uses
  %exitcond277.not = icmp eq i32 %i.gn, %i.a
  br i1 %exitcond277.not, label %.loopexit234, label %bb.w, !llvm.loop !335

bb.ab:                                            ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !334 ; 2 uses
  %i.gq = lshr i16 %i.gp, 8
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !333 ; 2 uses
  %i.gt = lshr i16 %i.gs, 8
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !332 ; 2 uses
  %i.gw = lshr i16 %i.gv, 8
  %.not266 = icmp eq i32 %i.a, 0
  br i1 %.not266, label %.loopexit234, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ab
  %i.gx = zext i32 %i.a to i64
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -1
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !215
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 %i.hc
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -1
end_hunk_4
begin_hunk_5_@png_do_expand:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.aj
  %.9238 = phi ptr [ %i.he, %.lr.ph ], [ %i.ir, %bb.aj ] ; 12 uses
  %.9206237 = phi ptr [ %i.ha, %.lr.ph ], [ %i.it, %bb.aj ] ; 9 uses
  %.6213236 = phi i32 [ 0, %.lr.ph ], [ %i.iu, %bb.aj ]
  %i.hi = getelementptr inbounds i8, ptr %.9238, i64 -5 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !29
  %i.hk = zext i8 %i.hj to i16
  %i.hl = icmp eq i16 %i.gq, %i.hk
  br i1 %i.hl, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.hm = getelementptr inbounds i8, ptr %.9238, i64 -4
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !29
  %i.ho = icmp eq i8 %i.hn, %i.hf
  br i1 %i.ho, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.hp = getelementptr inbounds i8, ptr %.9238, i64 -3
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !29
  %i.hr = zext i8 %i.hq to i16
  %i.hs = icmp eq i16 %i.gt, %i.hr
  br i1 %i.hs, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ht = getelementptr inbounds i8, ptr %.9238, i64 -2
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !29
  %i.hv = icmp eq i8 %i.hu, %i.hg
  br i1 %i.hv, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hw = getelementptr inbounds i8, ptr %.9238, i64 -1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !29
  %i.hy = zext i8 %i.hx to i16
  %i.hz = icmp eq i16 %i.gw, %i.hy
  br i1 %i.hz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ia = load i8, ptr %.9238, align 1, !tbaa !29
  %i.ib = icmp eq i8 %i.ia, %i.hh
  br i1 %i.ib, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sink307 = phi i8 [ -1, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.9206237, i64 -1
  store i8 %.sink307, ptr %.9206237, align 1, !tbaa !29
  store i8 %.sink307, ptr %i.ic, align 1, !tbaa !29
  %.10 = getelementptr inbounds i8, ptr %.9206237, i64 -2
  %i.id = getelementptr inbounds i8, ptr %.9238, i64 -1
  %i.ie = load i8, ptr %.9238, align 1, !tbaa !29
  %i.if = getelementptr inbounds i8, ptr %.9206237, i64 -3
  store i8 %i.ie, ptr %.10, align 1, !tbaa !29
  %i.ig = getelementptr inbounds i8, ptr %.9238, i64 -2
  %i.ih = load i8, ptr %i.id, align 1, !tbaa !29
  %i.ii = getelementptr inbounds i8, ptr %.9206237, i64 -4
  store i8 %i.ih, ptr %i.if, align 1, !tbaa !29
  %i.ij = getelementptr inbounds i8, ptr %.9238, i64 -3
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !29
  %i.il = getelementptr inbounds i8, ptr %.9206237, i64 -5
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !29
  %i.im = getelementptr inbounds i8, ptr %.9238, i64 -4
  %i.in = load i8, ptr %i.ij, align 1, !tbaa !29
  %i.io = getelementptr inbounds i8, ptr %.9206237, i64 -6
  store i8 %i.in, ptr %i.il, align 1, !tbaa !29
  %i.ip = load i8, ptr %i.im, align 1, !tbaa !29
  %i.iq = getelementptr inbounds i8, ptr %.9206237, i64 -7
  store i8 %i.ip, ptr %i.io, align 1, !tbaa !29
  %i.ir = getelementptr inbounds i8, ptr %.9238, i64 -6
  %i.is = load i8, ptr %i.hi, align 1, !tbaa !29
  %i.it = getelementptr inbounds i8, ptr %.9206237, i64 -8
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !29
  %i.iu = add nuw i32 %.6213236, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.iu, %i.a
  br i1 %exitcond.not, label %.loopexit234, label %bb.ac, !llvm.loop !336

.loopexit234:                                     ; preds = %bb.aj, %bb.aa, %bb.ab, %bb.v, %bb.u
  store i8 6, ptr %i.b, align 8, !tbaa !207
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 4, ptr %i.iv, align 2, !tbaa !218
  %i.iw = load i8, ptr %i.fe, align 1, !tbaa !210
  %i.ix = shl i8 %i.iw, 2                         ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !214
  %i.iz = icmp ugt i8 %i.ix, 7
  %i.ja = zext i32 %i.a to i64                    ; 2 uses
  br i1 %i.iz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit234
  %i.jb = lshr i8 %i.ix, 3
  %i.jc = zext nneg i8 %i.jb to i64
  %i.jd = mul nuw nsw i64 %i.jc, %i.ja
  br label %.sink.split

bb.al:                                            ; preds = %.loopexit234
  %i.je = zext nneg i8 %i.ix to i64
  %i.jf = mul nuw nsw i64 %i.je, %i.ja
  %i.jg = add nuw nsw i64 %i.jf, 4
  %i.jh = lshr i64 %i.jg, 3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ak, %bb.al, %bb.r, %bb.s
  %.sink308 = phi i64 [ %i.fb, %bb.s ], [ %i.ex, %bb.r ], [ %i.jd, %bb.ak ], [ %i.jh, %bb.al ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink308, ptr %i.ji, align 8, !tbaa !215
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %bb.i, %bb.t
  ret void
}

declare void @png_do_strip_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @png_do_gray_to_rgb(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !209    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !210   ; 3 uses
  %i.d = icmp ugt i8 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !207   ; 2 uses
  %i.g = and i8 %i.f, 2
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  switch i8 %i.f, label %.loopexit [
    i8 0, label %bb.d
    i8 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i8 %i.c, 8
  %.not118 = icmp eq i32 %i.a, 0                  ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not118, label %.loopexit, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %bb.e
  %i.j = zext i32 %i.a to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -1 ; 3 uses
  %i.m = shl nuw nsw i64 %i.j, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 2 uses
  %xtraiter143 = and i32 %i.a, 3                  ; 3 uses
  %i.o = icmp ult i32 %i.a, 4
  br i1 %i.o, label %.lr.ph115.epil.preheader, label %.lr.ph115.preheader.new

.lr.ph115.preheader.new:                          ; preds = %.lr.ph115.preheader
  %unroll_iter146 = and i32 %i.a, -4
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115, %.lr.ph115.preheader.new
  %.093114 = phi ptr [ %i.n, %.lr.ph115.preheader.new ], [ %i.am, %.lr.ph115 ] ; 13 uses
  %.094113 = phi ptr [ %i.l, %.lr.ph115.preheader.new ], [ %i.ak, %.lr.ph115 ] ; 6 uses
  %niter147 = phi i32 [ 0, %.lr.ph115.preheader.new ], [ %niter147.next.3, %.lr.ph115 ]
  %i.p = load i8, ptr %.094113, align 1, !tbaa !29 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.093114, i64 -1
  store i8 %i.p, ptr %.093114, align 1, !tbaa !29
  %i.r = getelementptr inbounds i8, ptr %.093114, i64 -2
  store i8 %i.p, ptr %i.q, align 1, !tbaa !29
  %i.s = getelementptr inbounds i8, ptr %.094113, i64 -1 ; 2 uses
  %i.t = load i8, ptr %.094113, align 1, !tbaa !29
  %i.u = getelementptr inbounds i8, ptr %.093114, i64 -3
  store i8 %i.t, ptr %i.r, align 1, !tbaa !29
  %i.v = load i8, ptr %i.s, align 1, !tbaa !29    ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.093114, i64 -4
  store i8 %i.v, ptr %i.u, align 1, !tbaa !29
  %i.x = getelementptr inbounds i8, ptr %.093114, i64 -5
  store i8 %i.v, ptr %i.w, align 1, !tbaa !29
  %i.y = getelementptr inbounds i8, ptr %.094113, i64 -2 ; 2 uses
  %i.z = load i8, ptr %i.s, align 1, !tbaa !29
  %i.aa = getelementptr inbounds i8, ptr %.093114, i64 -6
  store i8 %i.z, ptr %i.x, align 1, !tbaa !29
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !29   ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.093114, i64 -7
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !29
  %i.ad = getelementptr inbounds i8, ptr %.093114, i64 -8
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !29
  %i.ae = getelementptr inbounds i8, ptr %.094113, i64 -3 ; 2 uses
  %i.af = load i8, ptr %i.y, align 1, !tbaa !29
  %i.ag = getelementptr inbounds i8, ptr %.093114, i64 -9
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !29
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !29  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.093114, i64 -10
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !29
  %i.aj = getelementptr inbounds i8, ptr %.093114, i64 -11
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !29
  %i.ak = getelementptr inbounds i8, ptr %.094113, i64 -4 ; 2 uses
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !29
  %i.am = getelementptr inbounds i8, ptr %.093114, i64 -12 ; 2 uses
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !29
  %niter147.next.3 = add nuw i32 %niter147, 4     ; 2 uses
  %niter147.ncmp.3 = icmp eq i32 %niter147.next.3, %unroll_iter146
  br i1 %niter147.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph115, !llvm.loop !337

bb.f:                                             ; preds = %bb.d
  br i1 %.not118, label %.loopexit, label %.lr.ph111.preheader

.lr.ph111.preheader:                              ; preds = %bb.f
  %i.an = zext i32 %i.a to i64                    ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1 ; 3 uses
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  %xtraiter138 = and i32 %i.a, 1
  %i.at = icmp eq i32 %i.a, 1
  br i1 %i.at, label %.lr.ph111.epil.preheader, label %.lr.ph111.preheader.new

.lr.ph111.preheader.new:                          ; preds = %.lr.ph111.preheader
  %unroll_iter141 = and i32 %i.a, -2
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111, %.lr.ph111.preheader.new
  %.091110 = phi ptr [ %i.as, %.lr.ph111.preheader.new ], [ %i.bv, %.lr.ph111 ] ; 13 uses
  %.092109 = phi ptr [ %i.aq, %.lr.ph111.preheader.new ], [ %i.bt, %.lr.ph111 ] ; 7 uses
  %niter142 = phi i32 [ 0, %.lr.ph111.preheader.new ], [ %niter142.next.1, %.lr.ph111 ]
  %i.au = load i8, ptr %.092109, align 1, !tbaa !29
  %i.av = getelementptr inbounds i8, ptr %.091110, i64 -1
  store i8 %i.au, ptr %.091110, align 1, !tbaa !29
  %i.aw = getelementptr inbounds i8, ptr %.092109, i64 -1 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = getelementptr inbounds i8, ptr %.091110, i64 -2
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !29
  %i.az = load i8, ptr %.092109, align 1, !tbaa !29
  %i.ba = getelementptr inbounds i8, ptr %.091110, i64 -3
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !29
  %i.bb = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.bc = getelementptr inbounds i8, ptr %.091110, i64 -4
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !29
  %i.bd = load i8, ptr %.092109, align 1, !tbaa !29
  %i.be = getelementptr inbounds i8, ptr %.091110, i64 -5
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !29
  %i.bf = getelementptr inbounds i8, ptr %.092109, i64 -2 ; 3 uses
  %i.bg = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.bh = getelementptr inbounds i8, ptr %.091110, i64 -6
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !29
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bj = getelementptr inbounds i8, ptr %.091110, i64 -7
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !29
  %i.bk = getelementptr inbounds i8, ptr %.092109, i64 -3 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bm = getelementptr inbounds i8, ptr %.091110, i64 -8
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !29
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bo = getelementptr inbounds i8, ptr %.091110, i64 -9
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !29
  %i.bp = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bq = getelementptr inbounds i8, ptr %.091110, i64 -10
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !29
  %i.br = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bs = getelementptr inbounds i8, ptr %.091110, i64 -11
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !29
  %i.bt = getelementptr inbounds i8, ptr %.092109, i64 -4 ; 2 uses
  %i.bu = load i8, ptr %i.bk, align 1, !tbaa !29
  %i.bv = getelementptr inbounds i8, ptr %.091110, i64 -12 ; 2 uses
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !29
  %niter142.next.1 = add nuw i32 %niter142, 2     ; 2 uses
  %niter142.ncmp.1 = icmp eq i32 %niter142.next.1, %unroll_iter141
  br i1 %niter142.ncmp.1, label %.loopexit.loopexit134.unr-lcssa, label %.lr.ph111, !llvm.loop !338

bb.g:                                             ; preds = %bb.c
  %i.bw = icmp eq i8 %i.c, 8
  %.not116 = icmp eq i32 %i.a, 0                  ; 2 uses
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not116, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.h
  %i.bx = zext i32 %i.a to i64
  %i.by = shl nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -1 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by ; 2 uses
  %xtraiter = and i32 %i.a, 1
  %i.cc = icmp eq i32 %i.a, 1
  br i1 %i.cc, label %.lr.ph107.epil.preheader, label %.lr.ph107.preheader.new

.lr.ph107.preheader.new:                          ; preds = %.lr.ph107.preheader
  %unroll_iter = and i32 %i.a, -2
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107, %.lr.ph107.preheader.new
  %.089106 = phi ptr [ %i.cb, %.lr.ph107.preheader.new ], [ %i.cu, %.lr.ph107 ] ; 9 uses
  %.090105 = phi ptr [ %i.ca, %.lr.ph107.preheader.new ], [ %i.cs, %.lr.ph107 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph107.preheader.new ], [ %niter.next.1, %.lr.ph107 ]
  %i.cd = getelementptr inbounds i8, ptr %.090105, i64 -1 ; 2 uses
  %i.ce = load i8, ptr %.090105, align 1, !tbaa !29
  %i.cf = getelementptr inbounds i8, ptr %.089106, i64 -1
  store i8 %i.ce, ptr %.089106, align 1, !tbaa !29
  %i.cg = load i8, ptr %i.cd, align 1, !tbaa !29  ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.089106, i64 -2
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !29
  %i.ci = getelementptr inbounds i8, ptr %.089106, i64 -3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !29
  %i.cj = getelementptr inbounds i8, ptr %.090105, i64 -2
  %i.ck = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cl = getelementptr inbounds i8, ptr %.089106, i64 -4
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !29
  %i.cm = getelementptr inbounds i8, ptr %.090105, i64 -3 ; 2 uses
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.co = getelementptr inbounds i8, ptr %.089106, i64 -5
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !29
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !29  ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.089106, i64 -6
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !29
  %i.cr = getelementptr inbounds i8, ptr %.089106, i64 -7
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !29
  %i.cs = getelementptr inbounds i8, ptr %.090105, i64 -4 ; 2 uses
  %i.ct = load i8, ptr %i.cm, align 1, !tbaa !29
  %i.cu = getelementptr inbounds i8, ptr %.089106, i64 -8 ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !29
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit135.unr-lcssa, label %.lr.ph107, !llvm.loop !339

bb.i:                                             ; preds = %bb.g
  br i1 %.not116, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.cv = zext i32 %i.a to i64
  %i.cw = shl nuw nsw i64 %i.cv, 2                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -1 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cw
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0103 = phi ptr [ %i.dt, %.lr.ph ], [ %i.cz, %.lr.ph.preheader ] ; 9 uses
  %.088102 = phi ptr [ %i.dr, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ] ; 5 uses
  %.3101 = phi i32 [ %i.du, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.da = getelementptr inbounds i8, ptr %.088102, i64 -1
  %i.db = load i8, ptr %.088102, align 1, !tbaa !29
  %i.dc = getelementptr inbounds i8, ptr %.0103, i64 -1
  store i8 %i.db, ptr %.0103, align 1, !tbaa !29
  %i.dd = getelementptr inbounds i8, ptr %.088102, i64 -2 ; 3 uses
  %i.de = load i8, ptr %i.da, align 1, !tbaa !29
  %i.df = getelementptr inbounds i8, ptr %.0103, i64 -2
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !29
  %i.dg = load i8, ptr %i.dd, align 1, !tbaa !29
  %i.dh = getelementptr inbounds i8, ptr %.0103, i64 -3
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !29
  %i.di = getelementptr inbounds i8, ptr %.088102, i64 -3 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dk = getelementptr inbounds i8, ptr %.0103, i64 -4
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !29
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !29
  %i.dm = getelementptr inbounds i8, ptr %.0103, i64 -5
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !29
  %i.dn = load i8, ptr %i.di, align 1, !tbaa !29
  %i.do = getelementptr inbounds i8, ptr %.0103, i64 -6
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !29
  %i.dp = load i8, ptr %i.dd, align 1, !tbaa !29
  %i.dq = getelementptr inbounds i8, ptr %.0103, i64 -7
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !29
  %i.dr = getelementptr inbounds i8, ptr %.088102, i64 -4
  %i.ds = load i8, ptr %i.di, align 1, !tbaa !29
  %i.dt = getelementptr inbounds i8, ptr %.0103, i64 -8
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !29
  %i.du = add nuw i32 %.3101, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.du, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !340

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph115
  %lcmp.mod144.not = icmp eq i32 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.loopexit, label %.lr.ph115.epil.preheader

.lr.ph115.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph115.preheader
  %.093114.epil.init = phi ptr [ %i.n, %.lr.ph115.preheader ], [ %i.am, %.loopexit.loopexit.unr-lcssa ]
  %.094113.epil.init = phi ptr [ %i.l, %.lr.ph115.preheader ], [ %i.ak, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod145 = icmp ne i32 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %.lr.ph115.epil

.lr.ph115.epil:                                   ; preds = %.lr.ph115.epil, %.lr.ph115.epil.preheader
  %.093114.epil = phi ptr [ %i.ea, %.lr.ph115.epil ], [ %.093114.epil.init, %.lr.ph115.epil.preheader ] ; 4 uses
  %.094113.epil = phi ptr [ %i.dy, %.lr.ph115.epil ], [ %.094113.epil.init, %.lr.ph115.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph115.epil ], [ 0, %.lr.ph115.epil.preheader ]
  %i.dv = load i8, ptr %.094113.epil, align 1, !tbaa !29 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.093114.epil, i64 -1
  store i8 %i.dv, ptr %.093114.epil, align 1, !tbaa !29
  %i.dx = getelementptr inbounds i8, ptr %.093114.epil, i64 -2
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !29
  %i.dy = getelementptr inbounds i8, ptr %.094113.epil, i64 -1
  %i.dz = load i8, ptr %.094113.epil, align 1, !tbaa !29
  %i.ea = getelementptr inbounds i8, ptr %.093114.epil, i64 -3
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !29
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter143
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph115.epil, !llvm.loop !341

.loopexit.loopexit134.unr-lcssa:                  ; preds = %.lr.ph111
  %lcmp.mod139.not = icmp eq i32 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.loopexit, label %.lr.ph111.epil.preheader

.lr.ph111.epil.preheader:                         ; preds = %.loopexit.loopexit134.unr-lcssa, %.lr.ph111.preheader
  %.091110.epil.init = phi ptr [ %i.as, %.lr.ph111.preheader ], [ %i.bv, %.loopexit.loopexit134.unr-lcssa ] ; 6 uses
  %.092109.epil.init = phi ptr [ %i.aq, %.lr.ph111.preheader ], [ %i.bt, %.loopexit.loopexit134.unr-lcssa ] ; 4 uses
  %lcmp.mod140 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.eb = load i8, ptr %.092109.epil.init, align 1, !tbaa !29
  %i.ec = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -1
  store i8 %i.eb, ptr %.091110.epil.init, align 1, !tbaa !29
  %i.ed = getelementptr inbounds i8, ptr %.092109.epil.init, i64 -1 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !29
  %i.ef = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -2
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !29
  %i.eg = load i8, ptr %.092109.epil.init, align 1, !tbaa !29
  %i.eh = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -3
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !29
  %i.ei = load i8, ptr %i.ed, align 1, !tbaa !29
  %i.ej = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -4
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !29
  %i.ek = load i8, ptr %.092109.epil.init, align 1, !tbaa !29
  %i.el = getelementptr inbounds i8, ptr %.091110.epil.init, i64 -5
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !29
  %i.em = load i8, ptr %i.ed, align 1, !tbaa !29
  store i8 %i.em, ptr %i.el, align 1, !tbaa !29
  br label %.loopexit

.loopexit.loopexit135.unr-lcssa:                  ; preds = %.lr.ph107
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph107.epil.preheader

.lr.ph107.epil.preheader:                         ; preds = %.loopexit.loopexit135.unr-lcssa, %.lr.ph107.preheader
  %.089106.epil.init = phi ptr [ %i.cb, %.lr.ph107.preheader ], [ %i.cu, %.loopexit.loopexit135.unr-lcssa ] ; 4 uses
  %.090105.epil.init = phi ptr [ %i.ca, %.lr.ph107.preheader ], [ %i.cs, %.loopexit.loopexit135.unr-lcssa ] ; 2 uses
  %lcmp.mod137 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.en = getelementptr inbounds i8, ptr %.090105.epil.init, i64 -1 ; 2 uses
  %i.eo = load i8, ptr %.090105.epil.init, align 1, !tbaa !29
  %i.ep = getelementptr inbounds i8, ptr %.089106.epil.init, i64 -1
  store i8 %i.eo, ptr %.089106.epil.init, align 1, !tbaa !29
  %i.eq = load i8, ptr %i.en, align 1, !tbaa !29  ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %.089106.epil.init, i64 -2
  store i8 %i.eq, ptr %i.ep, align 1, !tbaa !29
  %i.es = getelementptr inbounds i8, ptr %.089106.epil.init, i64 -3
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !29
  %i.et = load i8, ptr %i.en, align 1, !tbaa !29
  store i8 %i.et, ptr %i.es, align 1, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph107.epil.preheader, %.loopexit.loopexit135.unr-lcssa, %.lr.ph111.epil.preheader, %.loopexit.loopexit134.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %.lr.ph115.epil, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !218
  %i.ew = add i8 %i.ev, 2                         ; 2 uses
  store i8 %i.ew, ptr %i.eu, align 2, !tbaa !218
  %i.ex = load i8, ptr %i.e, align 8, !tbaa !207
  %i.ey = or i8 %i.ex, 2
  store i8 %i.ey, ptr %i.e, align 8, !tbaa !207
  %i.ez = load i8, ptr %i.b, align 1, !tbaa !210
  %i.fa = mul i8 %i.ez, %i.ew                     ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !214
  %i.fc = icmp ugt i8 %i.fa, 7
  %i.fd = zext i32 %i.a to i64                    ; 2 uses
  br i1 %i.fc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.fe = lshr i8 %i.fa, 3
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = mul nuw nsw i64 %i.ff, %i.fd
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.fh = zext nneg i8 %i.fa to i64
  %i.fi = mul nuw nsw i64 %i.fh, %i.fd
  %i.fj = add nuw nsw i64 %i.fi, 7
  %i.fk = lshr i64 %i.fj, 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fl = phi i64 [ %i.fg, %bb.j ], [ %i.fk, %bb.k ]
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !215
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b, %bb.a
  ret void
}

declare void @png_do_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_check_palette_indexes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_bgr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_packswap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @png_do_swap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: noreturn
declare void @png_fixed_error(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_muldiv(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9
end_hunk_5
