inline.NumInlined: 60
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@regex_list_match:bb.a
  %i.aa = call i32 @cli_ac_scanbuff(ptr noundef nonnull %i.l, i32 noundef %i.x, ptr noundef %5, ptr noundef %i.z, ptr noundef nonnull %7, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef null) #16 ; 3 uses
  call void @cli_ac_freedata(ptr noundef nonnull %7) #16
  %.not114 = icmp eq i32 %i.aa, 0
  br i1 %.not114, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %5, align 8, !tbaa !20
  %i.ac = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ab, i32 noundef 58) #15 ; 2 uses
  %.not115 = icmp eq ptr %i.ac, null
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = phi i64 [ %i.ae, %bb.j ], [ 0, %bb.i ]  ; 5 uses
  %i.ag = call fastcc i64 @get_char_at_pos_with_skip(ptr noundef %3, ptr noundef %i.l, i64 noundef %i.k) ; 3 uses
  switch i64 %i.ag, label %bb.q [
    i64 63, label %bb.l
    i64 47, label %bb.l
    i64 32, label %bb.l
    i64 0, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.ah = icmp eq i64 %i.af, %i.j
  br i1 %i.ah, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp ult i64 %i.af, %i.j
  br i1 %i.ai, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aj = sub nuw i64 %i.j, %i.af
  %i.ak = call fastcc i64 @get_char_at_pos_with_skip(ptr noundef %3, ptr noundef %i.l, i64 noundef %i.aj) ; 2 uses
  switch i64 %i.ak, label %bb.q [
    i64 46, label %bb.o
    i64 32, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.l
  %.lcssa173 = phi i64 [ %i.af, %bb.n ], [ %i.af, %bb.n ], [ %i.j, %bb.l ] ; 2 uses
  %i.al = load ptr, ptr %5, align 8, !tbaa !20
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.l, ptr noundef %i.al) #16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #16
  %i.am = add i64 %.lcssa173, 1
  %.not116 = icmp ult i64 %i.c, %i.am
  br i1 %.not116, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = xor i64 %.lcssa173, -1
  %i.ao = getelementptr i8, ptr %1, i64 %i.c
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  store i8 46, ptr %i.ap, align 1, !tbaa !17
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #16
  br label %.sink.split

bb.q:                                             ; preds = %bb.m, %bb.k, %bb.n
  %.098.in = phi i64 [ %i.ak, %bb.n ], [ %i.ag, %bb.m ], [ %i.ag, %bb.k ]
  %i.aq = load ptr, ptr %5, align 8, !tbaa !20
  %i.ar = trunc nsw i64 %.098.in to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.l, ptr noundef %i.aq, i32 noundef %i.ar) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h
  %i.as = add nuw i64 %.097152, 1                 ; 2 uses
  %i.at = load i64, ptr %i.v, align 8, !tbaa !18
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %bb.r, %.preheader, %bb.f
  %.in.v = select i1 %i.e, i64 8, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.av = load ptr, ptr %.in, align 8, !tbaa !24  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %.loopexit
  store ptr null, ptr %5, align 8, !tbaa !20
  %i.ay = getelementptr inbounds i8, ptr %i.l, i64 -1
  br label %.critedge141.thread.i.outer

.critedge141.thread.i.outer:                      ; preds = %.critedge141.thread.i.outer.backedge, %bb.s
  %.0112.i.ph = phi i64 [ %i.k, %bb.s ], [ %.0112.i.ph.be, %.critedge141.thread.i.outer.backedge ]
  %.099.i.ph = phi ptr [ %i.ay, %bb.s ], [ %.099.i.ph.be, %.critedge141.thread.i.outer.backedge ]
  %.093.i.ph = phi ptr [ %i.av, %bb.s ], [ %.093.i.ph.be, %.critedge141.thread.i.outer.backedge ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.093.i.ph, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17 ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.093.i.ph, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.093.i.ph, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.093.i.ph, i64 16
  %.not135.i = icmp eq ptr %i.ba, null
  br label %.critedge141.thread.i

.critedge141.thread.i:                            ; preds = %.critedge141.thread.i.outer, %bb.af
  %.0112.i = phi i64 [ %i.ck, %bb.af ], [ %.0112.i.ph, %.critedge141.thread.i.outer ] ; 7 uses
  %.099.i = phi ptr [ %i.cl, %bb.af ], [ %.099.i.ph, %.critedge141.thread.i.outer ] ; 11 uses
  switch i32 %i.bc, label %bb.z [
    i32 5, label %.thread150.i
    i32 6, label %bb.t
    i32 0, label %.thread150.i
    i32 3, label %bb.u
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %.critedge141.thread.i
  %i.bg = getelementptr inbounds i8, ptr %.099.i, i64 -1
  %i.bh = add i64 %.0112.i, 1
  br label %.thread150.i

bb.u:                                             ; preds = %.critedge141.thread.i
  %i.bi = load i8, ptr %.099.i, align 1, !tbaa !17
  %i.bj = icmp ne i8 %i.bi, 10
  %i.bk = zext i1 %i.bj to i32
  br label %.thread150.i

bb.v:                                             ; preds = %.critedge141.thread.i
  %i.bl = load i8, ptr %.099.i, align 1, !tbaa !17
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @char_class, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !27
  %i.bp = load i8, ptr %i.be, align 8, !tbaa !29
  %i.bq = zext i8 %i.bp to i16
  %i.br = and i16 %i.bo, %i.bq
  %i.bs = zext nneg i16 %i.br to i32
  br label %.thread150.i

bb.w:                                             ; preds = %.critedge141.thread.i
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bu = load i8, ptr %.099.i, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = lshr i32 %i.bv, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = zext i8 %i.bz to i32
  %i.cb = and i32 %i.bv, 7
  %i.cc = shl nuw nsw i32 1, %i.cb
  %i.cd = and i32 %i.cc, %i.ca
  br label %.thread150.i

bb.x:                                             ; preds = %.critedge141.thread.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 2 uses
  %.not125.i = icmp eq ptr %i.cf, null
  br i1 %.not125.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = call i32 @cli_regexec(ptr noundef nonnull %i.cf, ptr noundef nonnull %.099.i, i64 noundef 0, ptr noundef null, i32 noundef 0) #16
  %.not126.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not126.not.i, label %.thread.i, label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %bb.y
  %i.ch = add i64 %.0112.i, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %.099.i, i64 1
  br label %.lr.ph197.i.preheader

.lr.ph197.i.preheader:                            ; preds = %.thread150.i, %.preheader.thread.i
  %.6105195.i.ph = phi ptr [ %i.ci, %.preheader.thread.i ], [ %i.cl, %.thread150.i ]
  %.6118194.i.ph = phi i64 [ %i.ch, %.preheader.thread.i ], [ %i.ck, %.thread150.i ]
  br label %.lr.ph197.i

.thread.i:                                        ; preds = %bb.y, %bb.x
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !32
  store ptr %i.cj, ptr %5, align 8, !tbaa !20
  br label %.sink.split

bb.z:                                             ; preds = %.critedge141.thread.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.38, i32 noundef %i.bc) #16
  call void @exit(i32 noundef 1) #17
  unreachable

.thread150.i:                                     ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %.critedge141.thread.i, %.critedge141.thread.i
  %.1113.i = phi i64 [ %.0112.i, %.critedge141.thread.i ], [ %i.bh, %bb.t ], [ %.0112.i, %.critedge141.thread.i ], [ %.0112.i, %bb.u ], [ %.0112.i, %bb.v ], [ %.0112.i, %bb.w ] ; 2 uses
  %.0111.i = phi ptr [ %i.ba, %.critedge141.thread.i ], [ %i.ba, %bb.t ], [ %i.ba, %.critedge141.thread.i ], [ %i.ba, %bb.u ], [ %i.ba, %bb.v ], [ %i.bd, %bb.w ] ; 3 uses
  %.1109.i = phi i32 [ 1, %.critedge141.thread.i ], [ 1, %bb.t ], [ 1, %.critedge141.thread.i ], [ %i.bk, %bb.u ], [ %i.bs, %bb.v ], [ %i.cd, %bb.w ]
  %.1100.i = phi ptr [ %.099.i, %.critedge141.thread.i ], [ %i.bg, %bb.t ], [ %.099.i, %.critedge141.thread.i ], [ %.099.i, %bb.u ], [ %.099.i, %bb.v ], [ %.099.i, %bb.w ] ; 2 uses
  %i.ck = add i64 %.1113.i, -1                    ; 7 uses
  %.not128.i = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.1100.i, i64 1 ; 7 uses
  %.not129164.i = icmp eq i32 %.1109.i, 0
  %.not129.i = select i1 %.not128.i, i1 true, i1 %.not129164.i
  br i1 %.not129.i, label %.lr.ph197.i.preheader, label %bb.aa

bb.aa:                                            ; preds = %.thread150.i
  %i.cm = load i8, ptr %i.bf, align 8, !tbaa !33  ; 3 uses
  %.not133185.i = icmp slt i8 %i.cm, 1
  br i1 %.not133185.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = add nsw i32 %i.cn, -1
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !17
  %i.cq = sext i8 %i.cp to i32                    ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.lr.ph.i
  %.085187.i = phi i32 [ %i.co, %.lr.ph.i ], [ %.186.i, %bb.ac ] ; 2 uses
  %.087186.i = phi i32 [ 0, %.lr.ph.i ], [ %.188.i, %bb.ac ] ; 3 uses
  %i.cr = sub nsw i32 %.085187.i, %.087186.i
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = add nuw nsw i32 %i.cs, %.087186.i       ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0111.i, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !29
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = icmp eq i32 %i.cz, %i.cq
  br i1 %i.da, label %.critedge141.thread.i.outer.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = icmp slt i32 %i.cz, %i.cq               ; 2 uses
  %i.dc = add nuw nsw i32 %i.ct, 1
  %i.dd = add nsw i32 %i.ct, -1
  %.188.i = select i1 %i.db, i32 %i.dc, i32 %.087186.i ; 2 uses
  %.186.i = select i1 %i.db, i32 %.085187.i, i32 %i.dd ; 2 uses
  %.not133.i = icmp sgt i32 %.188.i, %.186.i
  br i1 %.not133.i, label %._crit_edge.i, label %bb.ab, !llvm.loop !34

._crit_edge.i:                                    ; preds = %bb.ac, %bb.aa
  %.not134.i = icmp eq i8 %i.cm, 0
  br i1 %.not134.i, label %bb.af, label %.preheader166.i

.preheader166.i:                                  ; preds = %._crit_edge.i
  %i.de = load ptr, ptr %.0111.i, align 8, !tbaa !24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 17
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !35
  %.not137.i = icmp eq i8 %i.dg, 0                ; 3 uses
  %.295.ph.i = select i1 %.not137.i, ptr %i.de, ptr %.093.i.ph ; 2 uses
  %.not138188.i = icmp eq ptr %.295.ph.i, null
  br i1 %.not138188.i, label %.sink.split, label %.lr.ph192.preheader.i

.lr.ph192.preheader.i:                            ; preds = %.preheader166.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.1100.i, i64 2
  %.3102.ph.i = select i1 %.not137.i, ptr %i.dh, ptr %i.cl
  %i.di = add i64 %.1113.i, -2
  %.3115.ph.i = select i1 %.not137.i, i64 %i.di, i64 %i.ck
  br label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %bb.ad, %.lr.ph192.preheader.i
  %.295191.i = phi ptr [ %i.dl, %bb.ad ], [ %.295.ph.i, %.lr.ph192.preheader.i ] ; 2 uses
  %.3102190.i = phi ptr [ %i.dm, %bb.ad ], [ %.3102.ph.i, %.lr.ph192.preheader.i ] ; 2 uses
  %.3115189.i = phi i64 [ %i.dn, %bb.ad ], [ %.3115.ph.i, %.lr.ph192.preheader.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.295191.i, i64 17
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !35
  %.not139.i = icmp eq i8 %i.dk, 0
  %i.dl = load ptr, ptr %.295191.i, align 8, !tbaa !36 ; 4 uses
  br i1 %.not139.i, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph192.i
  %i.dm = getelementptr inbounds i8, ptr %.3102190.i, i64 -1
  %i.dn = add i64 %.3115189.i, 1
  %.not138.i = icmp eq ptr %i.dl, null
  br i1 %.not138.i, label %.sink.split, label %.lr.ph192.i, !llvm.loop !37

.critedge.i:                                      ; preds = %.lr.ph192.i
  %.not140.i = icmp eq ptr %i.dl, null
  br i1 %.not140.i, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %.critedge.i
  %i.do = getelementptr inbounds i8, ptr %.3102190.i, i64 -1
  %i.dp = add i64 %.3115189.i, 1
  br label %.critedge141.thread.i.outer.backedge

bb.af:                                            ; preds = %._crit_edge.i
  br i1 %.not135.i, label %.critedge141.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not252.i = icmp eq i32 %i.bc, 6
  %i.dq = load ptr, ptr %.0111.i, align 8, !tbaa !24 ; 3 uses
  br i1 %.not252.i, label %bb.ah, label %.critedge141.thread.i.outer.backedge

bb.ah:                                            ; preds = %bb.ag
  store ptr %.093.i.ph, ptr %i.dq, align 8, !tbaa !36
  br label %.critedge141.thread.i.outer.backedge

.lr.ph197.i:                                      ; preds = %.lr.ph197.i.preheader, %bb.ai
  %.598196.i = phi ptr [ %i.dt, %bb.ai ], [ %.093.i.ph, %.lr.ph197.i.preheader ] ; 2 uses
  %.6105195.i = phi ptr [ %i.du, %bb.ai ], [ %.6105195.i.ph, %.lr.ph197.i.preheader ] ; 2 uses
  %.6118194.i = phi i64 [ %i.dv, %bb.ai ], [ %.6118194.i.ph, %.lr.ph197.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.598196.i, i64 17
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !35
  %.not131.i = icmp eq i8 %i.ds, 0
  %i.dt = load ptr, ptr %.598196.i, align 8, !tbaa !36 ; 4 uses
  br i1 %.not131.i, label %.critedge3.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph197.i
  %i.du = getelementptr inbounds i8, ptr %.6105195.i, i64 -1
  %i.dv = add i64 %.6118194.i, 1
  %.not130.i = icmp eq ptr %i.dt, null
  br i1 %.not130.i, label %.sink.split, label %.lr.ph197.i, !llvm.loop !38

.critedge3.i:                                     ; preds = %.lr.ph197.i
  %.not132.i = icmp eq ptr %i.dt, null
  br i1 %.not132.i, label %.sink.split, label %bb.aj

bb.aj:                                            ; preds = %.critedge3.i
  %i.dw = getelementptr inbounds i8, ptr %.6105195.i, i64 -1
  %i.dx = add i64 %.6118194.i, 1
  br label %.critedge141.thread.i.outer.backedge

.critedge141.thread.i.outer.backedge:             ; preds = %bb.ab, %bb.aj, %bb.ah, %bb.ae, %bb.ag
  %.0112.i.ph.be = phi i64 [ %i.dx, %bb.aj ], [ %i.ck, %bb.ag ], [ %i.dp, %bb.ae ], [ %i.ck, %bb.ah ], [ %i.ck, %bb.ab ]
  %.099.i.ph.be = phi ptr [ %i.dw, %bb.aj ], [ %i.cl, %bb.ag ], [ %i.do, %bb.ae ], [ %i.cl, %bb.ah ], [ %i.cl, %bb.ab ]
  %.093.i.ph.be = phi ptr [ %i.dt, %bb.aj ], [ %i.dq, %bb.ag ], [ %i.dl, %bb.ae ], [ %i.dq, %bb.ah ], [ %i.cw, %bb.ab ]
  br label %.critedge141.thread.i.outer

.sink.split:                                      ; preds = %.critedge.i, %.preheader166.i, %.critedge3.i, %bb.ad, %bb.ai, %.thread.i, %bb.p, %bb.o, %.loopexit
  %.str.5.sink = phi ptr [ @.str.5, %.loopexit ], [ @.str.6, %bb.o ], [ @.str.6, %bb.p ], [ @.str.5, %bb.ai ], [ @.str.5, %bb.ad ], [ @.str.6, %.thread.i ], [ @.str.5, %.critedge3.i ], [ @.str.5, %.preheader166.i ], [ @.str.5, %.critedge.i ]
  %.0.ph = phi i32 [ 0, %.loopexit ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 1, %.thread.i ], [ 0, %.critedge3.i ], [ 0, %.preheader166.i ], [ 0, %.critedge.i ]
  call void @free(ptr noundef %i.l) #16
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.5.sink) #16
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.g, %bb.b
  %.0 = phi i32 [ -114, %bb.b ], [ %i.u, %bb.g ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %bb.ak
  %.1 = phi i32 [ %.0, %bb.ak ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #4

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #3

declare i32 @cli_ac_initdata(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @cli_ac_scanbuff(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @cli_ac_freedata(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -128, 128) i64 @get_char_at_pos_with_skip(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %.not43 = icmp ugt i64 %2, %i.a
  br i1 %.not43, label %bb.k, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, i64 noundef %2, i64 noundef %i.e, i64 noundef %i.g, ptr noundef %i.c, ptr noundef nonnull %1) #16
  %i.h = load i64, ptr %i.d, align 8, !tbaa !43
  %i.i = add i64 %i.h, %2                         ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !tbaa !17    ; 2 uses
  %.not4551 = icmp eq i8 %i.j, 0
  br i1 %.not4551, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = tail call ptr @__ctype_b_loc() #18
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.pre.pre = phi i8 [ %i.j, %.lr.ph ], [ %i.s, %bb.e ]
  %.052 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.e ] ; 3 uses
  %i.m = sext i8 %.pre.pre to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !27
  %i.p = and i16 %i.o, 8
  %.not46.not = icmp eq i16 %i.p, 0
  br i1 %.not46.not, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %.052, 1                         ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17    ; 2 uses
  %.not45 = icmp eq i8 %i.s, 0
  br i1 %.not45, label %.critedge.thread, label %bb.d, !llvm.loop !47

.critedge.thread:                                 ; preds = %bb.e, %bb.c
  %.0.lcssa.ph = phi i64 [ 0, %bb.c ], [ %i.q, %bb.e ]
  %i.t = icmp ne i64 %i.i, 0
  br label %.preheader

.critedge:                                        ; preds = %bb.d
  %.not75 = icmp eq i64 %i.i, 0
  br i1 %.not75, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %.critedge, %bb.g
  %.156 = phi i64 [ %i.x, %bb.g ], [ %.052, %.critedge ]
  %.03955 = phi i64 [ %i.y, %bb.g ], [ %i.i, %.critedge ]
  br label %bb.f

.preheader:                                       ; preds = %bb.g, %.critedge.thread, %.critedge
  %.1.lcssa = phi i64 [ %.052, %.critedge ], [ %.0.lcssa.ph, %.critedge.thread ], [ %i.x, %bb.g ]
  %.lcssa50 = phi i1 [ false, %.critedge ], [ %i.t, %.critedge.thread ], [ %i.ac, %bb.g ]
  br label %bb.h

end_hunk_0
begin_hunk_1_@load_regex_matcher:bb.a
  %i.bl = getelementptr i8, ptr %i.bk, i64 1      ; 13 uses
  br i1 %.not165, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #15 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, 8192
  br i1 %i.bn, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.11, i32 noundef %i.bj) #16
  call void @regex_list_done(ptr noundef %0)
  store i32 -1, ptr %i.b, align 8, !tbaa !8
  br label %functionality_level_check.exit.thread157

bb.y:                                             ; preds = %bb.v
  %i.bo = load i8, ptr %i.a, align 16, !tbaa !17  ; 2 uses
  %.not164 = icmp eq i8 %i.bo, 82
  br i1 %.not164, label %bb.aa, label %.thread125

bb.z:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm ; 2 uses
  store i8 47, ptr %i.bp, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 0, ptr %i.bq, align 1, !tbaa !17
  %i.br = load i8, ptr %i.a, align 16, !tbaa !17  ; 3 uses
  %i.bs = and i8 %i.br, -2
  %or.cond7 = icmp eq i8 %i.bs, 88
  br i1 %or.cond7, label %bb.aa, label %.thread125

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bt = phi i8 [ %i.br, %bb.z ], [ 82, %bb.y ]
  %.not166 = icmp eq i8 %i.bt, 89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bu = call ptr @cli_malloc(i64 noundef 80) #16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %find_regex_start.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aa, %bb.al
  %.040.i.i = phi ptr [ %i.bv, %bb.al ], [ %i.bl, %bb.aa ] ; 7 uses
  %.038.i.i = phi ptr [ %.139.i.i, %bb.al ], [ null, %bb.aa ]
  %.036.i.i = phi ptr [ %.137.i.i, %bb.al ], [ %i.bu, %bb.aa ] ; 9 uses
  %.034.i.i = phi i64 [ %.135.i.i, %bb.al ], [ 10, %bb.aa ] ; 8 uses
  %.0.i.i = phi i64 [ %.1.i.i, %bb.al ], [ 0, %bb.aa ] ; 8 uses
  %i.bv = call fastcc ptr @getNextToken(ptr noundef nonnull %.040.i.i, ptr noundef %4) ; 3 uses
  %i.bw = load i8, ptr %i.l, align 8, !tbaa !62   ; 4 uses
  %.not48.i.i = icmp eq i8 %i.bw, 6
  br i1 %.not48.i.i, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %i.bx = icmp eq i8 %i.bw, 4
  %i.by = load ptr, ptr %4, align 8               ; 2 uses
  %i.bz = icmp ne ptr %i.by, null
  %or.cond.i.i = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.ac

.thread.i.i:                                      ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.by) #16
  br label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.bw, label %bb.ai [
    i8 5, label %bb.ad
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %.not50.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not50.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr [8 x i8], ptr %.036.i.i, i64 %.0.i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8     ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = icmp eq i8 %i.cd, 124
  br i1 %i.ce, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %.040.i.i, ptr %i.cb, align 8, !tbaa !20
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cf = add i64 %.0.i.i, 1                      ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.036.i.i, i64 %.0.i.i
  store ptr %.040.i.i, ptr %i.cg, align 8, !tbaa !20
  %i.ch = icmp eq i64 %i.cf, %.034.i.i
  br i1 %i.ch, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ci = add i64 %.034.i.i, 20                   ; 2 uses
  %i.cj = shl i64 %i.ci, 3
  %i.ck = call ptr @cli_realloc2(ptr noundef nonnull %.036.i.i, i64 noundef %i.cj) #16 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.ck, null
  br i1 %.not51.i.i, label %find_regex_start.exit.i, label %bb.al

bb.ai:                                            ; preds = %bb.ac, %.thread.i.i
  %i.cl = icmp eq i8 %i.bw, 3
  %i.cm = sext i1 %i.cl to i64
  %spec.select.i.i = add i64 %.0.i.i, %i.cm
  br label %bb.al

bb.aj:                                            ; preds = %.preheader.i.i
  %.not49.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not49.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cn = load ptr, ptr %.036.i.i, align 8, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.139.i.i = phi ptr [ %.040.i.i, %bb.af ], [ %.040.i.i, %bb.ah ], [ %.040.i.i, %bb.ag ], [ %.038.i.i, %bb.aj ], [ %.040.i.i, %bb.ai ], [ %i.cn, %bb.ak ] ; 2 uses
  %.137.i.i = phi ptr [ %.036.i.i, %bb.af ], [ %i.ck, %bb.ah ], [ %.036.i.i, %bb.ag ], [ %.036.i.i, %bb.aj ], [ %.036.i.i, %bb.ai ], [ %.036.i.i, %bb.ak ] ; 2 uses
  %.135.i.i = phi i64 [ %.034.i.i, %bb.af ], [ %i.ci, %bb.ah ], [ %.034.i.i, %bb.ag ], [ %.034.i.i, %bb.aj ], [ %.034.i.i, %bb.ai ], [ %.034.i.i, %bb.ak ]
  %.1.i.i = phi i64 [ %.0.i.i, %bb.af ], [ %.034.i.i, %bb.ah ], [ %i.cf, %bb.ag ], [ 0, %bb.aj ], [ %spec.select.i.i, %bb.ai ], [ %.0.i.i, %bb.ak ]
  %i.co = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.cp = icmp ne i8 %i.co, 0
  %i.cq = load i8, ptr %i.l, align 8
  %i.cr = icmp ne i8 %i.cq, 6
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %.preheader.i.i, label %bb.am, !llvm.loop !64

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef %.137.i.i) #16
  %i.ct = load i8, ptr %i.bv, align 1, !tbaa !17
  %.not52.i.i = icmp eq i8 %i.ct, 0
  %.idx.i.i = zext i1 %.not52.i.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 %.idx.i.i
  br label %find_regex_start.exit.i

find_regex_start.exit.i:                          ; preds = %bb.ah, %bb.am, %bb.aa
  %.041.i.i = phi ptr [ %i.cu, %bb.am ], [ null, %bb.aa ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %.in.v.i = select i1 %.not166, i64 16, i64 8
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.cv = load ptr, ptr %.in.i, align 8, !tbaa !24 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !53
  store i64 0, ptr %i.p, align 8, !tbaa !53
  %i.cw = load i64, ptr %i.q, align 8, !tbaa !54
  %i.cx = icmp eq i64 %i.cw, 0
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !55 ; 2 uses
  br i1 %i.cx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %find_regex_start.exit.i
  store i64 4096, ptr %i.q, align 8, !tbaa !54
  %i.cy = call ptr @cli_realloc2(ptr noundef %.pre.i.i, i64 noundef 32768) #16 ; 3 uses
  store ptr %i.cy, ptr %i.m, align 8, !tbaa !55
  %.not.i112.i = icmp eq ptr %i.cy, null
  br i1 %.not.i112.i, label %stack_push.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.an
  %.pre11.i.i = load i64, ptr %i.n, align 8, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i, %find_regex_start.exit.i
  %i.cz = phi i64 [ %.pre11.i.i, %._crit_edge.i.i ], [ 0, %find_regex_start.exit.i ] ; 2 uses
  %i.da = phi ptr [ %i.cy, %._crit_edge.i.i ], [ %.pre.i.i, %find_regex_start.exit.i ]
  %i.db = add i64 %i.cz, 1
  store i64 %i.db, ptr %i.n, align 8, !tbaa !53
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr %i.cv, ptr %i.dc, align 8, !tbaa !24
  br label %stack_push.exit.i

stack_push.exit.i:                                ; preds = %bb.ao, %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25
  %.not102196.i = icmp eq i32 %i.de, 4
  br i1 %.not102196.i, label %add_pattern.exit, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %stack_push.exit.i, %tree_node_char_binsearch.exit.i
  %i.df = phi ptr [ %i.pp, %tree_node_char_binsearch.exit.i ], [ %i.dd, %stack_push.exit.i ] ; 5 uses
  %.085198.i = phi ptr [ %i.di, %tree_node_char_binsearch.exit.i ], [ %i.bl, %stack_push.exit.i ] ; 4 uses
  %.088197.i = phi ptr [ %.492.i, %tree_node_char_binsearch.exit.i ], [ %i.cv, %stack_push.exit.i ] ; 26 uses
  %i.dg = icmp ult ptr %.085198.i, %.041.i.i
  br i1 %i.dg, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i109
  %i.dh = load i8, ptr %.085198.i, align 1, !tbaa !17
  %.not103.i = icmp eq i8 %i.dh, 0
  br i1 %.not103.i, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %.085198.i, ptr %5, align 8, !tbaa !17
  br label %.thread.i

bb.ar:                                            ; preds = %.lr.ph.i109
  %i.di = call fastcc ptr @getNextToken(ptr noundef %.085198.i, ptr noundef %5)
  %.pre.i = load i8, ptr %i.r, align 8, !tbaa !62 ; 2 uses
  switch i8 %.pre.i, label %tree_node_char_binsearch.exit.i [
    i8 0, label %bb.as
    i8 2, label %bb.bb
    i8 3, label %bb.bg
    i8 5, label %bb.bt
    i8 4, label %bb.bz
    i8 1, label %bb.cr
    i8 6, label %.thread.i.loopexit
    i8 7, label %.thread.i.loopexit
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dj = load i8, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.dk = load i32, ptr %i.df, align 4, !tbaa !25
  %i.dl = icmp eq i32 %i.dk, 2                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.088197.i, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !17 ; 4 uses
  %spec.select.idx.i.i = select i1 %i.dl, i64 8, i64 0
  %spec.select.i113.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 %spec.select.idx.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.088197.i, i64 16 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !33  ; 5 uses
  %.not2832.not.i.i = icmp sgt i8 %i.dp, 0
  br i1 %.not2832.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.as
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = sext i8 %i.dj to i32                    ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.lr.ph.i.i
  %.0.i110 = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i111, %bb.au ]
  %.02233.i.i = phi i32 [ %i.dr, %.lr.ph.i.i ], [ %.224.i.i, %bb.au ] ; 2 uses
  %i.dt = phi i32 [ 0, %.lr.ph.i.i ], [ %i.eg, %bb.au ] ; 3 uses
  %i.du = sub nsw i32 %.02233.i.i, %i.dt
  %i.dv = lshr i32 %i.du, 1
  %i.dw = add nuw nsw i32 %i.dv, %i.dt            ; 3 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i113.i, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !29
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %.not29.i.i = icmp eq i32 %i.ec, %i.ds
  br i1 %.not29.i.i, label %tree_node_char_binsearch.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = icmp slt i32 %i.ec, %i.ds               ; 3 uses
  %i.ee = add nuw nsw i32 %i.dw, 1                ; 2 uses
  %i.ef = add nsw i32 %i.dw, -1
  %.1.i111 = select i1 %i.ed, i32 %i.ee, i32 %.0.i110 ; 2 uses
  %i.eg = select i1 %i.ed, i32 %i.ee, i32 %i.dt   ; 2 uses
  %.224.i.i = select i1 %i.ed, i32 %.02233.i.i, i32 %i.ef ; 2 uses
  %.not28.i.i = icmp sgt i32 %i.eg, %.224.i.i
  br i1 %.not28.i.i, label %.loopexit.i, label %bb.at

.loopexit.i:                                      ; preds = %bb.au, %bb.as
  %.2177.ph.i = phi i32 [ 0, %bb.as ], [ %.1.i111, %bb.au ] ; 2 uses
  br i1 %i.dl, label %bb.av, label %tree_node_get_children.exit.i.i.i

bb.av:                                            ; preds = %.loopexit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !24
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.eh
  br label %tree_node_get_children.exit.i.i.i

tree_node_get_children.exit.i.i.i:                ; preds = %bb.av, %.loopexit.i
  %i.ej = phi ptr [ %spec.select.i.i.i.i, %bb.av ], [ %i.dn, %.loopexit.i ] ; 3 uses
  %i.ek = icmp eq i8 %i.dp, 0
  %i.el = icmp ne ptr %i.ej, null
  %or.cond.i.i.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %tree_node_get_children.exit.i.i.i
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.em, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %.088197.i, ptr %i.em
  br label %tree_get_next.exit.i.i

bb.ax:                                            ; preds = %tree_node_get_children.exit.i.i.i
  %i.en = icmp slt i8 %i.dp, 2
  br i1 %i.en, label %tree_get_next.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !36
  br label %tree_get_next.exit.i.i

tree_get_next.exit.i.i:                           ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0.i.i.i = phi ptr [ %i.ep, %bb.ay ], [ %spec.select.i.i.i, %bb.aw ], [ %.088197.i, %bb.ax ] ; 2 uses
  %i.eq = add i8 %i.dp, 1                         ; 2 uses
  store i8 %i.eq, ptr %i.do, align 8, !tbaa !33
  %i.er = sext i8 %i.eq to i64
  %i.es = zext i1 %i.dl to i64
  %i.et = add nsw i64 %i.er, %i.es
  %i.eu = shl nsw i64 %i.et, 3
  %i.ev = call ptr @cli_realloc2(ptr noundef %i.dn, i64 noundef %i.eu) #16 ; 3 uses
  store ptr %i.ev, ptr %i.dm, align 8, !tbaa !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  %i.ew = load i32, ptr %i.df, align 4, !tbaa !25
  %i.ex = icmp eq i32 %i.ew, 2
  %.idx.i116.i = select i1 %i.ex, i64 8, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i116.i ; 2 uses
  %i.ez = call ptr @cli_malloc(i64 noundef 32) #16 ; 9 uses
  %.not.i33.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i33.i.i, label %tree_node_alloc.exit.thread.i.i, label %bb.az

bb.az:                                            ; preds = %tree_get_next.exit.i.i
  %i.fa = icmp eq ptr %.088197.i, %.0.i.i.i
  %i.fb = zext i1 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i8 0, ptr %i.fc, align 8, !tbaa !33
  store ptr %.0.i.i.i, ptr %i.ez, align 8, !tbaa !36
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 17
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr null, ptr %i.fe, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i8 %i.dj, ptr %i.fg, align 8, !tbaa !29
  br label %tree_node_alloc.exit.thread.i.i

tree_node_alloc.exit.thread.i.i:                  ; preds = %bb.az, %tree_get_next.exit.i.i
  %i.fh = load i8, ptr %i.do, align 8, !tbaa !33
  %i.fi = sext i8 %i.fh to i32
  %i.fj = xor i32 %.2177.ph.i, -1
  %i.fk = add i32 %i.fi, %i.fj                    ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  %i.fm = zext nneg i32 %.2177.ph.i to i64        ; 2 uses
  br i1 %i.fl, label %bb.ba, label %tree_node_alloc.exit.thread._crit_edge.i.i

bb.ba:                                            ; preds = %tree_node_alloc.exit.thread.i.i
  %i.fn = getelementptr [8 x i8], ptr %i.ey, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = zext nneg i32 %i.fk to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fo, ptr nonnull align 8 %i.fn, i64 %i.fq, i1 false)
  br label %tree_node_alloc.exit.thread._crit_edge.i.i

tree_node_alloc.exit.thread._crit_edge.i.i:       ; preds = %bb.ba, %tree_node_alloc.exit.thread.i.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fm
  store ptr %i.ez, ptr %i.fr, align 8, !tbaa !24
  br label %tree_node_char_binsearch.exit.i

bb.bb:                                            ; preds = %bb.ar
  %i.fs = load i64, ptr %i.p, align 8, !tbaa !53  ; 3 uses
  %i.ft = load i64, ptr %i.s, align 8, !tbaa !54
  %i.fu = icmp eq i64 %i.fs, %i.ft
  %.pre.i118.i = load ptr, ptr %i.o, align 8, !tbaa !55 ; 2 uses
  br i1 %i.fu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fv = add i64 %i.fs, 4096                     ; 2 uses
  store i64 %i.fv, ptr %i.s, align 8, !tbaa !54
  %i.fw = shl i64 %i.fv, 3
  %i.fx = call ptr @cli_realloc2(ptr noundef %.pre.i118.i, i64 noundef %i.fw) #16 ; 3 uses
  store ptr %i.fx, ptr %i.o, align 8, !tbaa !55
  %.not.i120.i = icmp eq ptr %i.fx, null
  br i1 %.not.i120.i, label %stack_push.exit123.i, label %._crit_edge.i121.i

._crit_edge.i121.i:                               ; preds = %bb.bc
  %.pre11.i122.i = load i64, ptr %i.p, align 8, !tbaa !53
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i121.i, %bb.bb
  %i.fy = phi i64 [ %.pre11.i122.i, %._crit_edge.i121.i ], [ %i.fs, %bb.bb ] ; 2 uses
  %i.fz = phi ptr [ %i.fx, %._crit_edge.i121.i ], [ %.pre.i118.i, %bb.bb ]
  %i.ga = add i64 %i.fy, 1
  store i64 %i.ga, ptr %i.p, align 8, !tbaa !53
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  store ptr null, ptr %i.gb, align 8, !tbaa !24
  br label %stack_push.exit123.i

stack_push.exit123.i:                             ; preds = %bb.bd, %bb.bc
  %i.gc = load i64, ptr %i.n, align 8, !tbaa !53  ; 3 uses
  %i.gd = load i64, ptr %i.q, align 8, !tbaa !54
  %i.ge = icmp eq i64 %i.gc, %i.gd
  %.pre.i124.i = load ptr, ptr %i.m, align 8, !tbaa !55 ; 2 uses
  br i1 %i.ge, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %stack_push.exit123.i
  %i.gf = add i64 %i.gc, 4096                     ; 2 uses
  store i64 %i.gf, ptr %i.q, align 8, !tbaa !54
  %i.gg = shl i64 %i.gf, 3
  %i.gh = call ptr @cli_realloc2(ptr noundef %.pre.i124.i, i64 noundef %i.gg) #16 ; 3 uses
  store ptr %i.gh, ptr %i.m, align 8, !tbaa !55
  %.not.i126.i = icmp eq ptr %i.gh, null
  br i1 %.not.i126.i, label %tree_node_char_binsearch.exit.i, label %._crit_edge.i127.i

._crit_edge.i127.i:                               ; preds = %bb.be
  %.pre11.i128.i = load i64, ptr %i.n, align 8, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i127.i, %stack_push.exit123.i
  %i.gi = phi i64 [ %.pre11.i128.i, %._crit_edge.i127.i ], [ %i.gc, %stack_push.exit123.i ] ; 2 uses
  %i.gj = phi ptr [ %i.gh, %._crit_edge.i127.i ], [ %.pre.i124.i, %stack_push.exit123.i ]
  %i.gk = add i64 %i.gi, 1
  store i64 %i.gk, ptr %i.n, align 8, !tbaa !53
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  store ptr %.088197.i, ptr %i.gl, align 8, !tbaa !24
  br label %tree_node_char_binsearch.exit.i

bb.bg:                                            ; preds = %bb.ar
  %i.gm = call ptr @cli_malloc(i64 noundef 32) #16 ; 19 uses
  %.not.i130.i = icmp eq ptr %i.gm, null
  br i1 %.not.i130.i, label %tree_node_alloc.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store i8 0, ptr %i.gn, align 8, !tbaa !33
  store ptr null, ptr %i.gm, align 8, !tbaa !36
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store ptr null, ptr %i.go, align 8, !tbaa !17
  br label %tree_node_alloc.exit.i

tree_node_alloc.exit.i:                           ; preds = %bb.bh, %bb.bg
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 6, ptr %i.gp, align 4, !tbaa !25
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i8 0, ptr %i.gq, align 8, !tbaa !29
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 17 ; 4 uses
  store i8 1, ptr %i.gr, align 1, !tbaa !35
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.088197.i, ptr noundef %i.gm)
  %i.gs = load i64, ptr %i.p, align 8, !tbaa !53  ; 2 uses
  %.not.i131195.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i131195.i, label %stack_pop.exit.thread.i, label %stack_pop.exit.i

stack_pop.exit.i:                                 ; preds = %tree_node_alloc.exit.i, %tree_node_insert_nonbin.exit.i
  %i.gt = phi i64 [ %i.iw, %tree_node_insert_nonbin.exit.i ], [ %i.gs, %tree_node_alloc.exit.i ]
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.gv = add i64 %i.gt, -1                       ; 2 uses
  store i64 %i.gv, ptr %i.p, align 8, !tbaa !53
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !24 ; 6 uses
  %.not109.i = icmp eq ptr %i.gx, null
  br i1 %.not109.i, label %stack_pop.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %stack_pop.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !25
  %i.ha = icmp eq i32 %i.gz, 2                    ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !17 ; 5 uses
  br i1 %i.ha, label %bb.bj, label %tree_node_get_children.exit.i.i

bb.bj:                                            ; preds = %bb.bi
end_hunk_1
