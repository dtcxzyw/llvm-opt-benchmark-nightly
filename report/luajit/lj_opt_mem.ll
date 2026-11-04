Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_opt_mem?download=true
inline.NumInlined: 27
inline.NumDeleted: 9
begin_hunk_0_@lj_opt_dse_fstore:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %.pn2.i.i.i.us, i64 13
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11
  %.off.i.i.i.us = add i8 %i.av, -74
  %switch.i.i.i.us = icmp ult i8 %.off.i.i.i.us, 4
  br i1 %switch.i.i.i.us, label %.loopexit.us, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.us
  %.012.i.i.i.us = getelementptr inbounds nuw i8, ptr %.0123.i.i.i.us, i64 8 ; 2 uses
  %i.aw = icmp ult ptr %.012.i.i.i.us, %.019.i.i.us
  br i1 %i.aw, label %.lr.ph.i.i.i.us, label %aa_fref.exit.thread.us, !llvm.loop !0

.loopexit.us:                                     ; preds = %bb.g, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11
  %.not.us = icmp eq i16 %i.ay, %i.d
  br i1 %.not.us, label %aa_fref.exit.thread.us, label %.thread55

aa_fref.exit.thread.us:                           ; preds = %bb.h, %.loopexit.us, %bb.f, %bb.c, %.lr.ph.split.us
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 6 ; 2 uses
  %.039.in.us = load i16, ptr %i.az, align 2, !tbaa !33 ; 2 uses
  %i.ba = icmp ugt i16 %.039.in.us, %i.b
  br i1 %i.ba, label %.lr.ph.split.us, label %.thread55

.lr.ph.split:                                     ; preds = %.lr.ph, %aa_fref.exit.thread
  %.039.in71 = phi i16 [ %.039.in, %aa_fref.exit.thread ], [ %.039.in69, %.lr.ph ] ; 2 uses
  %.04170 = phi ptr [ %i.ck, %aa_fref.exit.thread ], [ %i.i, %.lr.ph ]
  %i.bb = zext i16 %.039.in71 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bb ; 4 uses
  %i.bd = load i16, ptr %i.bc, align 8, !tbaa !11
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !11
  %.not.i = icmp eq i16 %.fr80, %i.bh
  br i1 %.not.i, label %bb.i, label %aa_fref.exit.thread

bb.i:                                             ; preds = %.lr.ph.split
  %i.bi = load i16, ptr %i.h, align 8, !tbaa !11
  %i.bj = load i16, ptr %i.bf, align 8, !tbaa !11
  %i.bk = icmp eq i16 %i.bi, %i.bj
  br i1 %i.bk, label %aa_fref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !11
  %.not = icmp eq i16 %i.bm, %i.d
  br i1 %.not, label %aa_fref.exit.thread, label %.thread55

aa_fref.exit:                                     ; preds = %bb.i, %bb.b
  %.us-phi = phi ptr [ %.04170.us, %bb.b ], [ %.04170, %bb.i ]
  %.us-phi73 = phi i16 [ %.039.in71.us, %bb.b ], [ %.039.in71, %bb.i ]
  %.us-phi75 = phi ptr [ %i.p, %bb.b ], [ %i.bc, %bb.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi75, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !11
  %i.bp = icmp ne i16 %i.bo, %i.d
  %i.bq = add i16 %.fr80, -14
  %or.cond = icmp ult i16 %i.bq, 6
  %or.cond63 = or i1 %or.cond, %i.bp
  br i1 %or.cond63, label %bb.k, label %.thread59

bb.k:                                             ; preds = %aa_fref.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !33
  %i.bt = icmp ugt i16 %.us-phi73, %i.bs
  br i1 %i.bt, label %bb.l, label %.thread55

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = add i32 %i.bv, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %.not4877 = icmp ugt ptr %i.by, %.us-phi75
  br i1 %.not4877, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %bb.l, %bb.o
  %.078 = phi ptr [ %i.ch, %bb.o ], [ %i.by, %bb.l ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !11
  %.not47 = icmp sgt i8 %i.ca, -1
  br i1 %.not47, label %bb.m, label %.thread55

bb.m:                                             ; preds = %.lr.ph79
  %i.cb = getelementptr inbounds nuw i8, ptr %.078, i64 5
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = icmp eq i8 %i.cc, 69
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %.078, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !11
  %i.cg = icmp eq i16 %i.cf, %.fr80
  br i1 %i.cg, label %.thread55, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ch = getelementptr inbounds i8, ptr %.078, i64 -8 ; 2 uses
  %.not48 = icmp ugt ptr %i.ch, %.us-phi75
  br i1 %.not48, label %.lr.ph79, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %.us-phi75, i64 6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !11
  store i16 %i.cj, ptr %.us-phi, align 2, !tbaa !33
  store <4 x i16> <i16 0, i16 0, i16 3072, i16 0>, ptr %.us-phi75, align 8, !tbaa !11
  br label %.thread55

aa_fref.exit.thread:                              ; preds = %.lr.ph.split, %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 6 ; 2 uses
  %.039.in = load i16, ptr %i.ck, align 2, !tbaa !33 ; 2 uses
  %i.cl = icmp ugt i16 %.039.in, %i.b
  br i1 %i.cl, label %.lr.ph.split, label %.thread55

.thread55:                                        ; preds = %aa_fref.exit.thread, %bb.j, %aa_fref.exit.thread.us, %.loopexit.us, %bb.n, %.lr.ph79, %bb.a, %bb.k, %._crit_edge
  %i.cm = tail call i32 @lj_ir_emit(ptr noundef %0) #6
  br label %.thread59

.thread59:                                        ; preds = %aa_fref.exit, %.thread55
  %.2 = phi i32 [ %i.cm, %.thread55 ], [ 4, %aa_fref.exit ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @lj_opt_fwd_sbuf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.b = load i16, ptr %i.a, align 2, !tbaa !33
  %i.c = zext i16 %i.b to i32
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 598
  %.021.in34 = load i16, ptr %i.e, align 2, !tbaa !11 ; 2 uses
  %.02135 = zext i16 %.021.in34 to i32
  %i.f = icmp ult i32 %1, %.02135
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = trunc nuw i32 %1 to i16
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %.021.in = load i16, ptr %i.j, align 2, !tbaa !11 ; 2 uses
  %i.k = icmp ugt i16 %.021.in, %i.i
  br i1 %i.k, label %bb.d, label %._crit_edge, !llvm.loop !49

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.021.in36 = phi i16 [ %.021.in34, %.lr.ph ], [ %.021.in, %bb.c ]
  %i.l = zext i16 %.021.in36 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !11
  %i.p = add i16 %i.o, -7
  %or.cond = icmp ult i16 %i.p, 23
  br i1 %or.cond, label %.critedge, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 596
  %.2.in37 = load i16, ptr %i.q, align 2, !tbaa !11 ; 2 uses
  %.238 = zext i16 %.2.in37 to i32
  %i.r = icmp ult i32 %1, %.238
  br i1 %i.r, label %.lr.ph41, label %.critedge

.lr.ph41:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = trunc nuw i32 %1 to i16
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %.2.in = load i16, ptr %i.v, align 2, !tbaa !11 ; 2 uses
  %i.w = icmp ugt i16 %.2.in, %i.u
  br i1 %i.w, label %bb.f, label %.critedge, !llvm.loop !50

bb.f:                                             ; preds = %.lr.ph41, %bb.e
  %.2.in39 = phi i16 [ %.2.in37, %.lr.ph41 ], [ %.2.in, %bb.e ]
  %i.x = zext i16 %.2.in39 to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !11
  %i.ab = add i16 %i.aa, -7
  %or.cond30 = icmp ult i16 %i.ab, 23
  br i1 %or.cond30, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.f, %._crit_edge, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge ], [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_opt_fwd_xload(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 5 uses
  %i.f = zext i16 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11   ; 2 uses
  %.not = trunc i16 %i.i to i1
  br i1 %.not, label %.thread105, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = and i16 %i.i, 2
  %.not95 = icmp eq i16 %1, 0
  br i1 %.not95, label %bb.c, label %reassoc_xref.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 558
  %i.k = load i16, ptr %i.j, align 2, !tbaa !33
  %i.l = zext i16 %i.k to i32
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge133, %bb.c
  %2 = phi ptr [ %5, %._crit_edge133 ], [ %i.e, %bb.c ] ; 5 uses
  %i.m = phi ptr [ %i.gl, %._crit_edge133 ], [ %i.e, %bb.c ]
  %.082 = phi ptr [ %i.gt, %._crit_edge133 ], [ %i.g, %bb.c ] ; 3 uses
  %.077 = phi i32 [ %.2.i, %._crit_edge133 ], [ %i.c, %bb.c ] ; 3 uses
  %.076 = phi i32 [ %.4.lcssa, %._crit_edge133 ], [ %i.l, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.o = load i16, ptr %i.n, align 8, !tbaa !33
  %i.p = zext i16 %i.o to i32
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.077, i32 %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 582
  %i.r = load i16, ptr %i.q, align 2, !tbaa !33
  %i.s = zext i16 %i.r to i32
  %.279 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %i.s) ; 4 uses
  %i.t = icmp samesign ugt i32 %.076, %.279
  br i1 %i.t, label %.lr.ph.a, label %.thread105

.lr.ph.a:                                         ; preds = %bb.d, %bb.k
  %.1121 = phi i32 [ %i.ax, %bb.k ], [ %.076, %bb.d ] ; 2 uses
  %i.u = zext nneg i32 %.1121 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.u ; 3 uses
  %i.w = tail call fastcc i32 @aa_xref(ptr noundef nonnull %0, ptr noundef %.082, ptr noundef nonnull %i.a, ptr noundef nonnull %i.v)
  switch i32 %i.w, label %bb.k [
    i32 2, label %bb.e
    i32 1, label %.loopexit.loopexit
  ]

bb.e:                                             ; preds = %.lr.ph.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !11
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 2 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !11 ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !11
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = xor i32 %i.ag, %i.z
  %i.ai = and i32 %i.ah, 31
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = and i32 %i.z, 31                        ; 4 uses
  switch i32 %i.ak, label %bb.h [
    i32 17, label %bb.g
    i32 15, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.al = or disjoint i32 %i.ak, 2048
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = and i32 %i.ag, 31
  %i.an = and i32 %i.z, 29
  %or.cond3 = icmp eq i32 %i.an, 16               ; 2 uses
  %spec.select99 = select i1 %or.cond3, i32 19, i32 %i.ak
  %spec.select100 = select i1 %or.cond3, i32 %i.ak, i32 %i.am
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.075 = phi i32 [ 19, %bb.g ], [ %spec.select99, %bb.h ] ; 2 uses
  %.074 = phi i32 [ %i.al, %bb.g ], [ %spec.select100, %bb.h ]
  %i.ao = trunc nuw nsw i32 %.075 to i16
  %i.ap = or disjoint i16 %i.ao, 23296
  store i16 %i.ap, ptr %i.x, align 4, !tbaa !11
  %i.aq = load i16, ptr %i.aa, align 2, !tbaa !11
  store i16 %i.aq, ptr %i.a, align 8, !tbaa !11
  %i.ar = shl nuw nsw i32 %.075, 5
  %i.as = or i32 %i.ar, %.074
  %i.at = trunc nuw nsw i32 %i.as to i16
  store i16 %i.at, ptr %i.h, align 2, !tbaa !11
  br label %.thread

bb.j:                                             ; preds = %bb.e
  %i.au = zext i16 %i.ab to i32
  br label %.thread

bb.k:                                             ; preds = %.lr.ph.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !11
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  %i.ay = icmp samesign ult i32 %.279, %i.ax
  br i1 %i.ay, label %.lr.ph.a, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k, %.lr.ph.a
  %.5.ph = phi i32 [ %.1121, %.lr.ph.a ], [ %.279, %bb.k ]
  br label %.thread105

.thread105:                                       ; preds = %.loopexit.loopexit, %bb.d, %bb.a
  %3 = phi ptr [ %i.e, %bb.a ], [ %2, %bb.d ], [ %2, %.loopexit.loopexit ]
  %4 = phi ptr [ %i.e, %bb.a ], [ %i.m, %bb.d ], [ %2, %.loopexit.loopexit ] ; 11 uses
  %.185 = phi i32 [ %i.c, %bb.a ], [ %.077, %bb.d ], [ %.077, %.loopexit.loopexit ] ; 2 uses
  %.183 = phi ptr [ %i.g, %bb.a ], [ %.082, %bb.d ], [ %.082, %.loopexit.loopexit ] ; 4 uses
  %.5 = phi i32 [ %i.c, %bb.a ], [ %.279, %bb.d ], [ %.5.ph, %.loopexit.loopexit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 542
  %.3.in124 = load i16, ptr %i.az, align 2, !tbaa !11 ; 2 uses
  %.3125 = zext i16 %.3.in124 to i32              ; 2 uses
  %i.ba = icmp samesign ult i32 %.5, %.3125
  br i1 %i.ba, label %.lr.ph128, label %._crit_edge

.lr.ph128:                                        ; preds = %.thread105
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 188
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph128, %bb.n
  %.3127 = phi i32 [ %.3125, %.lr.ph128 ], [ %.3, %bb.n ]
  %.3.in126 = phi i16 [ %.3.in124, %.lr.ph128 ], [ %.3.in, %bb.n ]
  %i.bc = zext i16 %.3.in126 to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bc ; 3 uses
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !11
  %i.bf = zext i16 %i.be to i32
  %i.bg = icmp eq i32 %.185, %i.bf
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !11
  %i.bj = load i8, ptr %i.bb, align 4, !tbaa !11
  %i.bk = xor i8 %i.bj, %i.bi
  %i.bl = and i8 %i.bk, 31
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %.3.in = load i16, ptr %i.bn, align 2, !tbaa !11 ; 2 uses
  %.3 = zext i16 %.3.in to i32                    ; 2 uses
  %i.bo = icmp samesign ult i32 %.5, %.3
  br i1 %i.bo, label %bb.l, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.n, %.thread105
  %i.bp = load i16, ptr %i.h, align 2, !tbaa !11
  %.not96 = trunc i16 %i.bp to i1
  br i1 %.not96, label %reassoc_xref.exit.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !33
  %.not97 = icmp eq i16 %i.br, 0
  br i1 %.not97, label %reassoc_xref.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load i16, ptr %i.a, align 8, !tbaa !11
  %i.bt = zext i16 %i.bs to i32
  %i.bu = icmp eq i32 %.185, %i.bt
  br i1 %i.bu, label %bb.q, label %reassoc_xref.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.183, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = icmp eq i8 %i.bw, 41
  br i1 %i.bx, label %bb.r, label %reassoc_xref.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.183, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !11 ; 2 uses
  %i.ca = icmp sgt i16 %i.bz, -1
  br i1 %i.ca, label %bb.s, label %.thread120.i

bb.s:                                             ; preds = %bb.r
  %i.cb = zext nneg i16 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cb ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = icmp eq i8 %i.ce, 29
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ci = load i32, ptr %i.cc, align 8, !tbaa !11
  %i.cj = sext i32 %i.ci to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = phi i64 [ %i.ch, %bb.t ], [ %i.cj, %bb.u ]
  %i.cl = load i16, ptr %.183, align 8, !tbaa !11
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cm ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 5
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !11
  %i.co = icmp eq i8 %.pre.i, 41
  br i1 %i.co, label %.thread120.i, label %reassoc_xref.exit.thread

.thread120.i:                                     ; preds = %bb.v, %bb.r
  %.052124.i = phi i64 [ %i.ck, %bb.v ], [ 0, %bb.r ]
  %.053123.i = phi ptr [ %i.cn, %bb.v ], [ %.183, %bb.r ] ; 4 uses
  %i.cp = load i16, ptr %.053123.i, align 8, !tbaa !11
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cq ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  switch i8 %i.ct, label %.thread.i [
    i8 36, label %bb.w
    i8 41, label %bb.y
  ]

bb.w:                                             ; preds = %.thread120.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !11 ; 2 uses
  %i.cw = icmp sgt i16 %i.cv, -1
  br i1 %i.cw, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.cx = zext nneg i16 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !11
  %i.da = zext i32 %i.cz to i64
  br label %bb.z

bb.y:                                             ; preds = %.thread120.i
  %i.db = load i16, ptr %i.cr, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !11
  %i.de = icmp eq i16 %i.db, %i.dd
  br i1 %i.de, label %bb.z, label %.thread.i

.thread.i:                                        ; preds = %bb.y, %bb.w, %.thread120.i
  br label %bb.z

bb.z:                                             ; preds = %.thread.i, %bb.y, %bb.x
  %.051.i = phi ptr [ %i.cr, %bb.x ], [ %.053123.i, %.thread.i ], [ %i.cr, %bb.y ] ; 4 uses
  %.050.i = phi i64 [ %i.da, %bb.x ], [ 0, %.thread.i ], [ 1, %bb.y ]
  %i.df = load i16, ptr %.051.i, align 8, !tbaa !11
  %i.dg = zext i16 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 5
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11
  %i.dk = icmp eq i8 %i.dj, 41
  br i1 %i.dk, label %bb.aa, label %reassoc_xref.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !11
  %i.dn = and i8 %i.dm, 31
  %i.do = icmp eq i8 %i.dn, 19
  br i1 %i.do, label %bb.ab, label %reassoc_xref.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !11 ; 2 uses
  %i.dr = icmp sgt i16 %i.dq, -1
  br i1 %i.dr, label %bb.ac, label %reassoc_xref.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ds = zext nneg i16 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !11
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl i64 %i.dv, %.050.i
  %i.dx = add nsw i64 %i.dw, %.052124.i           ; 2 uses
  %i.dy = load i16, ptr %i.dh, align 8, !tbaa !11 ; 5 uses
  %i.dz = zext i16 %i.dy to i32                   ; 3 uses
  %.not.i = icmp eq ptr %.051.i, %.053123.i
  br i1 %.not.i, label %reassoc_trycse.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %.051.i, i64 5
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !11  ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 36
  br i1 %i.ec, label %.split.i, label %.split57.i

.split.i:                                         ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw i8, ptr %.051.i, i64 2
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !11
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 474
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.ef, i32 %i.dz)
  %spec.select29.i.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %i.ef, i32 %i.dz) ; 3 uses
  %.020.in33.i.i = load i16, ptr %i.eg, align 2, !tbaa !11 ; 2 uses
  %.02034.i.i = zext i16 %.020.in33.i.i to i32    ; 2 uses
  %i.eh = icmp samesign ult i32 %spec.select29.i.i, %.02034.i.i
  br i1 %i.eh, label %.lr.ph.i.i, label %reassoc_xref.exit.thread

.lr.ph.i.i:                                       ; preds = %.split.i, %bb.af
  %.02036.i.i = phi i32 [ %.020.i.i, %bb.af ], [ %.02034.i.i, %.split.i ]
  %.020.in35.i.i = phi i16 [ %.020.in.i.i, %bb.af ], [ %.020.in33.i.i, %.split.i ]
  %i.ei = zext i16 %.020.in35.i.i to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ei ; 3 uses
  %i.ek = load i16, ptr %i.ej, align 8, !tbaa !11
  %i.el = zext i16 %i.ek to i32
  %i.em = icmp eq i32 %spec.select29.i.i, %i.el
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !11
  %i.ep = zext i16 %i.eo to i32
  %i.eq = icmp eq i32 %spec.select.i.i, %i.ep
  br i1 %i.eq, label %reassoc_trycse.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 6
  %.020.in.i.i = load i16, ptr %i.er, align 2, !tbaa !11 ; 2 uses
  %.020.i.i = zext i16 %.020.in.i.i to i32        ; 2 uses
  %i.es = icmp samesign ult i32 %spec.select29.i.i, %.020.i.i
  br i1 %i.es, label %.lr.ph.i.i, label %reassoc_xref.exit.thread, !llvm.loop !52

.split57.i:                                       ; preds = %bb.ad
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.eu = zext i8 %i.eb to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.eu
  %.020.in33.i67.i = load i16, ptr %i.ev, align 2, !tbaa !11 ; 2 uses
  %i.ew = icmp ult i16 %i.dy, %.020.in33.i67.i
  br i1 %i.ew, label %.lr.ph.i70.i, label %reassoc_xref.exit.thread

.lr.ph.i70.i:                                     ; preds = %.split57.i, %bb.ah
  %.020.in35.i72.i = phi i16 [ %.020.in.i73.i, %bb.ah ], [ %.020.in33.i67.i, %.split57.i ] ; 2 uses
  %i.ex = zext i16 %.020.in35.i72.i to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ex ; 3 uses
  %i.ez = load i16, ptr %i.ey, align 8, !tbaa !11
  %i.fa = icmp eq i16 %i.dy, %i.ez
  br i1 %i.fa, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i70.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !11
  %i.fd = icmp eq i16 %i.dy, %i.fc
  br i1 %i.fd, label %reassoc_trycse.exit.loopexit104.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i70.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  %.020.in.i73.i = load i16, ptr %i.fe, align 2, !tbaa !11 ; 2 uses
  %i.ff = icmp ult i16 %i.dy, %.020.in.i73.i
  br i1 %i.ff, label %.lr.ph.i70.i, label %reassoc_xref.exit.thread, !llvm.loop !52

reassoc_trycse.exit.loopexit104.i:                ; preds = %bb.ag
  %.02036.i71.le.i = zext i16 %.020.in35.i72.i to i32
  br label %reassoc_trycse.exit.i

reassoc_trycse.exit.i:                            ; preds = %bb.ae, %reassoc_trycse.exit.loopexit104.i, %bb.ac
  %.049.i = phi i32 [ %i.dz, %bb.ac ], [ %.02036.i71.le.i, %reassoc_trycse.exit.loopexit104.i ], [ %.02036.i.i, %bb.ae ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.053123.i, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !11
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %spec.select.i76.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.fi, i32 %.049.i)
  %spec.select29.i77.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %i.fi, i32 %.049.i) ; 3 uses
  %.020.in33.i78.i = load i16, ptr %i.fj, align 4, !tbaa !11 ; 2 uses
  %.02034.i79.i = zext i16 %.020.in33.i78.i to i32 ; 2 uses
  %i.fk = icmp samesign ult i32 %spec.select29.i77.i, %.02034.i79.i
  br i1 %i.fk, label %.lr.ph.i81.i, label %reassoc_xref.exit.thread

.lr.ph.i81.i:                                     ; preds = %reassoc_trycse.exit.i, %bb.aj
  %.02036.i82.i = phi i32 [ %.020.i85.i, %bb.aj ], [ %.02034.i79.i, %reassoc_trycse.exit.i ] ; 3 uses
  %.020.in35.i83.i = phi i16 [ %.020.in.i84.i, %bb.aj ], [ %.020.in33.i78.i, %reassoc_trycse.exit.i ]
  %i.fl = zext i16 %.020.in35.i83.i to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fl ; 3 uses
  %i.fn = load i16, ptr %i.fm, align 8, !tbaa !11
  %i.fo = zext i16 %i.fn to i32
  %i.fp = icmp eq i32 %spec.select29.i77.i, %i.fo
  br i1 %i.fp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i81.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !11
  %i.fs = zext i16 %i.fr to i32
  %i.ft = icmp eq i32 %spec.select.i76.i, %i.fs
  br i1 %i.ft, label %reassoc_trycse.exit86.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i81.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 6
  %.020.in.i84.i = load i16, ptr %i.fu, align 2, !tbaa !11 ; 2 uses
  %.020.i85.i = zext i16 %.020.in.i84.i to i32    ; 2 uses
  %i.fv = icmp samesign ult i32 %spec.select29.i77.i, %.020.i85.i
  br i1 %i.fv, label %.lr.ph.i81.i, label %reassoc_xref.exit.thread, !llvm.loop !52

reassoc_trycse.exit86.i:                          ; preds = %bb.ai
  %.not63.i = icmp eq i64 %i.dx, 0
  br i1 %.not63.i, label %reassoc_xref.exit, label %bb.ak

bb.ak:                                            ; preds = %reassoc_trycse.exit86.i
  %i.fw = tail call i32 @lj_ir_kint64(ptr noundef %0, i64 noundef %i.dx) #6
  %i.fx = and i32 %i.fw, 65535                    ; 2 uses
  %spec.select.i87.i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.fx, i32 %.02036.i82.i)
  %spec.select29.i88.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %i.fx, i32 %.02036.i82.i) ; 3 uses
  %.020.in33.i89.i = load i16, ptr %i.fj, align 4, !tbaa !11 ; 2 uses
  %.02034.i90.i = zext i16 %.020.in33.i89.i to i32 ; 2 uses
  %i.fy = icmp samesign ult i32 %spec.select29.i88.i, %.02034.i90.i
  br i1 %i.fy, label %.lr.ph.i92.i, label %reassoc_xref.exit.thread

.lr.ph.i92.i:                                     ; preds = %bb.ak
  %i.fz = load ptr, ptr %i.d, align 8, !tbaa !31  ; 3 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i92.i
  %.02036.i93.i = phi i32 [ %.02034.i90.i, %.lr.ph.i92.i ], [ %.020.i96.i, %bb.an ]
  %.020.in35.i94.i = phi i16 [ %.020.in33.i89.i, %.lr.ph.i92.i ], [ %.020.in.i95.i, %bb.an ]
  %i.ga = zext i16 %.020.in35.i94.i to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga ; 3 uses
  %i.gc = load i16, ptr %i.gb, align 8, !tbaa !11
  %i.gd = zext i16 %i.gc to i32
  %i.ge = icmp eq i32 %spec.select29.i88.i, %i.gd
  br i1 %i.ge, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !11
  %i.gh = zext i16 %i.gg to i32
  %i.gi = icmp eq i32 %spec.select.i87.i, %i.gh
  br i1 %i.gi, label %reassoc_xref.exit, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  %.020.in.i95.i = load i16, ptr %i.gj, align 2, !tbaa !11 ; 2 uses
  %.020.i96.i = zext i16 %.020.in.i95.i to i32    ; 2 uses
  %i.gk = icmp samesign ult i32 %spec.select29.i88.i, %.020.i96.i
  br i1 %i.gk, label %bb.al, label %reassoc_xref.exit.thread, !llvm.loop !52

reassoc_xref.exit:                                ; preds = %bb.am, %reassoc_trycse.exit86.i
  %5 = phi ptr [ %3, %reassoc_trycse.exit86.i ], [ %i.fz, %bb.am ]
  %i.gl = phi ptr [ %4, %reassoc_trycse.exit86.i ], [ %i.fz, %bb.am ] ; 3 uses
  %.2.i = phi i32 [ %.02036.i82.i, %reassoc_trycse.exit86.i ], [ %.02036.i93.i, %bb.am ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 558
  %.4.in129 = load i16, ptr %i.gm, align 2, !tbaa !11 ; 2 uses
  %.4130 = zext i16 %.4.in129 to i32              ; 2 uses
  %i.gn = icmp ult i32 %.5, %.4130
  br i1 %i.gn, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %reassoc_xref.exit, %.lr.ph132
  %.4.in131 = phi i16 [ %.4.in, %.lr.ph132 ], [ %.4.in129, %reassoc_xref.exit ]
  %i.go = zext i16 %.4.in131 to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 6
  %.4.in = load i16, ptr %i.gq, align 2, !tbaa !11 ; 2 uses
  %.4 = zext i16 %.4.in to i32                    ; 2 uses
  %i.gr = icmp samesign ult i32 %.5, %.4
  br i1 %i.gr, label %.lr.ph132, label %._crit_edge133, !llvm.loop !53

._crit_edge133:                                   ; preds = %.lr.ph132, %reassoc_xref.exit
  %.4.lcssa = phi i32 [ %.4130, %reassoc_xref.exit ], [ %.4, %.lr.ph132 ]
  %i.gs = zext nneg i32 %.2.i to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gs
  br label %bb.d

reassoc_xref.exit.thread:                         ; preds = %bb.ah, %bb.af, %bb.aj, %bb.an, %bb.ak, %reassoc_trycse.exit.i, %.split57.i, %.split.i, %bb.aa, %bb.ab, %bb.z, %bb.q, %bb.v, %._crit_edge, %bb.o, %bb.p, %bb.b
  %i.gu = tail call i32 @lj_ir_emit(ptr noundef %0) #6
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.i, %bb.j, %reassoc_xref.exit.thread
  %.490 = phi i32 [ %i.au, %bb.j ], [ %i.gu, %reassoc_xref.exit.thread ], [ 1, %bb.i ], [ %.3127, %bb.m ]
  ret i32 %.490
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @aa_xref(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 6 uses
  %i.c = load i16, ptr %3, align 8, !tbaa !11
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d ; 6 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i8, ptr %i.g, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !11
  %i.k = xor i8 %i.j, %i.h
  %i.l = and i8 %i.k, 31
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %aa_cnew.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11
  %i.p = icmp eq i8 %i.o, 41
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !11   ; 2 uses
  %i.s = icmp sgt i16 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i16 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 3 uses
  %i.v = load i16, ptr %1, align 8, !tbaa !11
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = icmp eq i8 %i.z, 29
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !11
  %i.ae = sext i32 %i.ad to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.c
  %.061 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.ac, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  %.058 = phi ptr [ %1, %bb.c ], [ %1, %bb.d ], [ %i.x, %bb.f ], [ %i.x, %bb.g ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = icmp eq i8 %i.ag, 41
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !11 ; 2 uses
  %i.ak = icmp sgt i16 %i.aj, -1
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = zext nneg i16 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al ; 3 uses
  %i.an = load i16, ptr %i.e, align 8, !tbaa !11
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = icmp eq i8 %i.ar, 29
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.av = load i32, ptr %i.am, align 8, !tbaa !11
  %i.aw = sext i32 %i.av to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.h
  %.059 = phi i64 [ 0, %bb.h ], [ 0, %bb.i ], [ %i.au, %bb.k ], [ %i.aw, %bb.l ] ; 3 uses
  %.0 = phi ptr [ %i.e, %bb.h ], [ %i.e, %bb.i ], [ %i.ap, %bb.k ], [ %i.ap, %bb.l ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.058, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = icmp eq i8 %i.ay, 25
  br i1 %i.az, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = icmp eq i8 %i.bb, 25
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.bh = add i64 %i.be, %.059
  %i.bi = sub i64 %i.bh, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.160 = phi i64 [ %i.bi, %bb.o ], [ %.059, %bb.n ], [ %.059, %bb.m ] ; 3 uses
  %.1 = phi ptr [ %.058, %bb.o ], [ %.0, %bb.n ], [ %.0, %bb.m ] ; 3 uses
  %i.bj = icmp eq ptr %.058, %.1
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !11  ; 3 uses
  br i1 %i.bj, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @lj_ir_type_size, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !11  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !11  ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @lj_ir_type_size, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !11  ; 2 uses
  %i.bu = icmp eq i64 %.061, %.160
  br i1 %i.bu, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bv = icmp eq i8 %i.bo, %i.bt
  br i1 %i.bv, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bw = and i8 %i.bl, 31
  %i.bx = add nsw i8 %i.bw, -13
  %narrow = icmp ult i8 %i.bx, 2
  %i.by = and i8 %i.bq, 31
  %i.bz = add nsw i8 %i.by, -15
  %i.ca = icmp ult i8 %i.bz, -2
  %i.cb = xor i1 %narrow, %i.ca
  br i1 %i.cb, label %aa_cnew.exit, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.cc = zext i8 %i.bt to i64
  %i.cd = zext i8 %i.bo to i64
  %i.ce = add nsw i64 %.061, %i.cd
  %.not = icmp sgt i64 %i.ce, %.160
  %i.cf = add nsw i64 %.160, %i.cc
  %.not66 = icmp sgt i64 %i.cf, %.061
  %or.cond = select i1 %.not, i1 %.not66, i1 false
  br i1 %or.cond, label %bb.u, label %aa_cnew.exit

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.s
  br label %aa_cnew.exit

bb.v:                                             ; preds = %bb.p
  %i.cg = zext i8 %i.bl to i32                    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !11
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = xor i32 %i.cj, %i.cg
  %i.cl = and i32 %i.ck, 31
  %i.cm = icmp eq i32 %i.cl, 0
end_hunk_0
