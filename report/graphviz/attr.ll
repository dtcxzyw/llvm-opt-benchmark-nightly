inline.NumInlined: 91
inline.NumDeleted: 16
begin_hunk_0_@agattr_:bb.a
  %i.bm = call i32 @aghtmlstr(ptr noundef %i.bl) #12
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = call i32 @agstrfree(ptr noundef %.010, ptr noundef %i.bl, i1 noundef zeroext %i.bn) #12 ; 0 uses
  br i1 %4, label %bb.x, label %bb.y

bb.x:                                             ; preds = %unviewsubgraphsattr.exit.i
  %i.bp = call ptr @agstrdup_html(ptr noundef %.010, ptr noundef nonnull %3) #12
  br label %bb.z

bb.y:                                             ; preds = %unviewsubgraphsattr.exit.i
  %i.bq = call ptr @agstrdup(ptr noundef %.010, ptr noundef nonnull %3) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.br = phi ptr [ %i.bp, %bb.x ], [ %i.bq, %bb.y ]
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !16
  br label %.loopexit.i

bb.aa:                                            ; preds = %agdictof.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %2, ptr %i.bs, align 8, !tbaa !15
  %i.bt = load ptr, ptr %.0.i.i, align 8, !tbaa !30
  %i.bu = call ptr %i.bt(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %6, i32 noundef 4) #12, !inline_history !55 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %.not86.i = icmp eq ptr %i.bu, null
  br i1 %.not86.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !48
  %i.bx = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #14 ; 8 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ac, label %gv_alloc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.5, i64 noundef 48) #15 ; 0 uses
  call fastcc void @graphviz_exit() #16
  unreachable

gv_alloc.exit.i.i:                                ; preds = %bb.ab
  %i.cb = trunc i32 %1 to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  store i8 %i.cb, ptr %i.cc, align 4, !tbaa !52
  %i.cd = call ptr @agstrdup(ptr noundef %.010, ptr noundef %2) #12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !15
  br i1 %4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %gv_alloc.exit.i.i
  %i.cf = call ptr @agstrdup_html(ptr noundef %.010, ptr noundef nonnull %3) #12
  br label %agnewsym.exit.i

bb.ae:                                            ; preds = %gv_alloc.exit.i.i
  %i.cg = call ptr @agstrdup(ptr noundef %.010, ptr noundef nonnull %3) #12
  br label %agnewsym.exit.i

agnewsym.exit.i:                                  ; preds = %bb.ae, %bb.ad
  %i.ch = phi ptr [ %i.cf, %bb.ad ], [ %i.cg, %bb.ae ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i32 %i.bw, ptr %i.cj, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store ptr %.010, ptr %i.ck, align 8, !tbaa !8
  %i.cl = load ptr, ptr %.0.i.i, align 8, !tbaa !30
  %i.cm = call ptr %i.cl(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.bx, i32 noundef 1) #12, !inline_history !56 ; 0 uses
  br label %.loopexit.i

bb.af:                                            ; preds = %bb.aa
  %i.cn = call ptr @aggetrec(ptr noundef %i.e, ptr noundef nonnull @DataDictName, i32 noundef 0) #12, !inline_history !36 ; 4 uses
  %.not.i92.i = icmp eq ptr %i.cn, null
  br i1 %.not.i92.i, label %agdictof.exit94.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i32 %1, label %bb.ak [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37
  br label %agdictof.exit94.i

bb.ai:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40
  br label %agdictof.exit94.i

bb.aj:                                            ; preds = %bb.ag, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41
  br label %agdictof.exit94.i

bb.ak:                                            ; preds = %bb.ag
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.6, i32 noundef %1) #12, !inline_history !42
  br label %agdictof.exit94.i

agdictof.exit94.i:                                ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.0.i93.i = phi ptr [ %i.ct, %bb.aj ], [ %i.cp, %bb.ah ], [ %i.cr, %bb.ai ], [ null, %bb.ak ], [ null, %bb.af ] ; 3 uses
  %i.cu = call i32 @dtsize(ptr noundef %.0.i93.i) #12
  %i.cv = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #14 ; 14 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.al, label %gv_alloc.exit.i95.i

bb.al:                                            ; preds = %agdictof.exit94.i
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.cy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.5, i64 noundef 48) #15 ; 0 uses
  call fastcc void @graphviz_exit() #16
  unreachable

gv_alloc.exit.i95.i:                              ; preds = %agdictof.exit94.i
  %i.cz = trunc i32 %1 to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 36
  store i8 %i.cz, ptr %i.da, align 4, !tbaa !52
  %i.db = call ptr @agstrdup(ptr noundef %i.e, ptr noundef %2) #12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !15
  br i1 %4, label %bb.am, label %bb.an

bb.am:                                            ; preds = %gv_alloc.exit.i95.i
  %i.dd = call ptr @agstrdup_html(ptr noundef %i.e, ptr noundef nonnull %3) #12
  br label %agnewsym.exit96.i

bb.an:                                            ; preds = %gv_alloc.exit.i95.i
  %i.de = call ptr @agstrdup(ptr noundef %i.e, ptr noundef nonnull %3) #12
  br label %agnewsym.exit96.i

agnewsym.exit96.i:                                ; preds = %bb.an, %bb.am
  %i.df = phi ptr [ %i.dd, %bb.am ], [ %i.de, %bb.an ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 3 uses
  store i32 %i.cu, ptr %i.dh, align 8, !tbaa !48
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store ptr %i.e, ptr %i.di, align 8, !tbaa !8
  %i.dj = load ptr, ptr %.0.i93.i, align 8, !tbaa !30
  %i.dk = call ptr %i.dj(ptr noundef nonnull %.0.i93.i, ptr noundef nonnull %i.cv, i32 noundef 1) #12, !inline_history !56 ; 0 uses
  switch i32 %1, label %bb.ay [
    i32 0, label %.thread.i
    i32 1, label %bb.ao
    i32 3, label %bb.ap
    i32 2, label %bb.ap
  ]

.thread.i:                                        ; preds = %agnewsym.exit96.i
  %i.dl = call i32 @agapply(ptr noundef %i.e, ptr noundef %i.e, ptr noundef nonnull @addattr, ptr noundef nonnull %i.cv, i32 noundef 1) #12 ; 0 uses
  br label %bb.az

bb.ao:                                            ; preds = %agnewsym.exit96.i
  %i.dm = call ptr @agfstnode(ptr noundef %i.e) #12 ; 2 uses
  %.not89111.i = icmp eq ptr %i.dm, null
  br i1 %.not89111.i, label %setattr.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %bb.ao, %.lr.ph114.i
  %.082112.i = phi ptr [ %i.dn, %.lr.ph114.i ], [ %i.dm, %bb.ao ] ; 2 uses
  call void @addattr(ptr noundef %.010, ptr noundef nonnull %.082112.i, ptr noundef nonnull %i.cv)
  %i.dn = call ptr @agnxtnode(ptr noundef %i.e, ptr noundef nonnull %.082112.i) #12 ; 2 uses
  %.not89.i = icmp eq ptr %i.dn, null
  br i1 %.not89.i, label %setattr.exit, label %.lr.ph114.i, !llvm.loop !57

bb.ap:                                            ; preds = %agnewsym.exit96.i, %agnewsym.exit96.i
  %i.do = call ptr @agfstnode(ptr noundef %i.e) #12 ; 2 uses
  %.not87107.i = icmp eq ptr %i.do, null
  br i1 %.not87107.i, label %setattr.exit, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.ap, %._crit_edge.i
  %.081108.i = phi ptr [ %i.dq, %._crit_edge.i ], [ %i.do, %bb.ap ] ; 2 uses
  %i.dp = call ptr @agfstout(ptr noundef %i.e, ptr noundef nonnull %.081108.i) #12 ; 2 uses
  %.not88105.i = icmp eq ptr %i.dp, null
  br i1 %.not88105.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %addattr.exit.i, %.lr.ph110.i
  %i.dq = call ptr @agnxtnode(ptr noundef %i.e, ptr noundef nonnull %.081108.i) #12 ; 2 uses
  %.not87.i = icmp eq ptr %i.dq, null
  br i1 %.not87.i, label %.loopexit.i, label %.lr.ph110.i, !llvm.loop !58

.lr.ph.i:                                         ; preds = %.lr.ph110.i, %addattr.exit.i
  %.0106.i = phi ptr [ %i.eq, %addattr.exit.i ], [ %i.dp, %.lr.ph110.i ] ; 2 uses
  %i.dr = call ptr @aggetrec(ptr noundef nonnull %.0106.i, ptr noundef nonnull @AgDataRecName, i32 noundef 0) #12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47 ; 2 uses
  %i.du = load i32, ptr %i.dh, align 8, !tbaa !48
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = add nsw i64 %i.dv, 1                    ; 4 uses
  %i.dx = icmp ugt i64 %i.dw, 2305843009213693951
  br i1 %i.dx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.4, i64 noundef range(i64 -2147483647, 2147483649) %i.dw, i64 noundef 8) #15 ; 0 uses
  call fastcc void @graphviz_exit() #16
  unreachable

bb.ar:                                            ; preds = %.lr.ph.i
  %i.ea = shl nsw i64 %i.dv, 3
  %i.eb = icmp eq i64 %i.dw, 0
  br i1 %i.eb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef %i.dt) #12
  br label %gv_recalloc.exit.i.i

bb.at:                                            ; preds = %bb.ar
  %10 = shl nuw nsw i64 %i.dw, 3                  ; 2 uses
  %i.ec = call ptr @realloc(ptr noundef %i.dt, i64 noundef range(i64 0, 17179869185) %10) #17 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.ef = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.5, i64 noundef range(i64 0, 17179869185) %10) #15 ; 0 uses
  call fastcc void @graphviz_exit() #16
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i64 0, ptr %i.eg, align 1
  br label %gv_recalloc.exit.i.i

gv_recalloc.exit.i.i:                             ; preds = %bb.av, %bb.as
  %.0.i.i.i97.i = phi ptr [ null, %bb.as ], [ %i.ec, %bb.av ]
  store ptr %.0.i.i.i97.i, ptr %i.ds, align 8, !tbaa !47
  %i.eh = load ptr, ptr %i.dg, align 8, !tbaa !16
  %i.ei = call i32 @aghtmlstr(ptr noundef %i.eh) #12
  %.not.i98.i = icmp eq i32 %i.ei, 0
  %i.ej = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 2 uses
  br i1 %.not.i98.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %gv_recalloc.exit.i.i
  %i.ek = call ptr @agstrdup_html(ptr noundef %.010, ptr noundef %i.ej) #12
  br label %addattr.exit.i

bb.ax:                                            ; preds = %gv_recalloc.exit.i.i
  %i.el = call ptr @agstrdup(ptr noundef %.010, ptr noundef %i.ej) #12
  br label %addattr.exit.i

addattr.exit.i:                                   ; preds = %bb.ax, %bb.aw
  %.sink.i.i = phi ptr [ %i.el, %bb.ax ], [ %i.ek, %bb.aw ]
  %i.em = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.en = load i32, ptr %i.dh, align 8, !tbaa !48
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.eo
  store ptr %.sink.i.i, ptr %i.ep, align 8, !tbaa !49
  %i.eq = call ptr @agnxtout(ptr noundef %i.e, ptr noundef nonnull %.0106.i) #12 ; 2 uses
  %.not88.i = icmp eq ptr %i.eq, null
  br i1 %.not88.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

bb.ay:                                            ; preds = %agnewsym.exit96.i
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 300) #15 ; 0 uses
  call void @abort() #18
  unreachable

.loopexit.i:                                      ; preds = %._crit_edge.i, %agnewsym.exit.i, %bb.z
  %.1.i = phi ptr [ %i.q, %bb.z ], [ %i.bx, %agnewsym.exit.i ], [ %i.cv, %._crit_edge.i ] ; 2 uses
  %i.et = icmp eq i32 %1, 0
  br i1 %i.et, label %bb.az, label %setattr.exit

bb.az:                                            ; preds = %.loopexit.i, %.thread.i
  %.1101.i = phi ptr [ %i.cv, %.thread.i ], [ %.1.i, %.loopexit.i ] ; 2 uses
  call fastcc void @agxset_(ptr noundef %.010, ptr noundef nonnull %.1101.i, ptr noundef nonnull %3, i1 noundef zeroext %4)
  br label %setattr.exit

setattr.exit:                                     ; preds = %.lr.ph114.i, %bb.ao, %bb.ap, %.loopexit.i, %bb.az
  %.1100.i = phi ptr [ %.1101.i, %bb.az ], [ %.1.i, %.loopexit.i ], [ %i.cv, %bb.ao ], [ %i.cv, %bb.ap ], [ %i.cv, %.lr.ph114.i ] ; 2 uses
  call void @agmethod_upd(ptr noundef %.010, ptr noundef %.010, ptr noundef %.1100.i) #12
  br label %getattr.exit

bb.ba:                                            ; preds = %bb.d
  %i.eu = tail call ptr @aggetrec(ptr noundef %.010, ptr noundef nonnull @DataDictName, i32 noundef 0) #12, !inline_history !36 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i13, label %getattr.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ev = icmp ult i32 %1, 4
  br i1 %i.ev, label %switch.lookup, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.6, i32 noundef %1) #12, !inline_history !42
  br label %getattr.exit

switch.lookup:                                    ; preds = %bb.bb
  %i.ew = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.agcopyattr.4, i64 %i.ew
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %switch.ext
  %.0.i.i15 = load ptr, ptr %i.ex, align 8, !tbaa !44 ; 3 uses
  %.not.i16 = icmp eq ptr %.0.i.i15, null
  br i1 %.not.i16, label %getattr.exit, label %bb.bd

bb.bd:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.ey, align 8, !tbaa !15
  %i.ez = load ptr, ptr %.0.i.i15, align 8, !tbaa !30
  %i.fa = call ptr %i.ez(ptr noundef nonnull %.0.i.i15, ptr noundef nonnull %5, i32 noundef 4) #12, !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %getattr.exit

getattr.exit:                                     ; preds = %bb.bd, %switch.lookup, %bb.bc, %bb.ba, %setattr.exit
  %.0 = phi ptr [ %.1100.i, %setattr.exit ], [ %i.fa, %bb.bd ], [ null, %switch.lookup ], [ null, %bb.bc ], [ null, %bb.ba ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @agattr_html(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @agattr_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @agattr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Agsym_s, align 8            ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @ProtoGraph, align 8, !tbaa !35 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @agopen(ptr noundef null, i32 21, ptr noundef null) #12 ; 2 uses
  store ptr %i.d, ptr @ProtoGraph, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.017 = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.split, label %bb.k

.split:                                           ; preds = %bb.d
  %i.e = icmp eq ptr %.017, null
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.split
  %i.f = load ptr, ptr @ProtoGraph, align 8, !tbaa !35 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @agopen(ptr noundef null, i32 21, ptr noundef null) #12 ; 2 uses
  store ptr %i.h, ptr @ProtoGraph, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.split
  %.010.i = phi ptr [ %.017, %.split ], [ %i.h, %bb.f ], [ %i.f, %bb.e ]
  %i.i = tail call ptr @aggetrec(ptr noundef %.010.i, ptr noundef nonnull @DataDictName, i32 noundef 0) #12, !inline_history !36 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i13.i, label %agattr_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = icmp ult i32 %1, 4
  br i1 %i.j, label %switch.lookup, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.6, i32 noundef %1) #12, !inline_history !42
  br label %agattr_.exit

switch.lookup:                                    ; preds = %bb.h
  %i.k = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.agcopyattr.4, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %switch.ext
  %.0.i.i15.i = load ptr, ptr %i.l, align 8, !tbaa !44 ; 3 uses
  %.not.i16.i = icmp eq ptr %.0.i.i15.i, null
  br i1 %.not.i16.i, label %agattr_.exit, label %bb.j

bb.j:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.m, align 8, !tbaa !15
  %i.n = load ptr, ptr %.0.i.i15.i, align 8, !tbaa !30
  %i.o = call ptr %i.n(ptr noundef nonnull %.0.i.i15.i, ptr noundef nonnull %4, i32 noundef 4) #12, !inline_history !61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %agattr_.exit

bb.k:                                             ; preds = %bb.d
  %i.p = tail call ptr @agstrbind_html(ptr noundef %.017, ptr noundef nonnull %3) #12 ; 2 uses
  %i.q = icmp eq ptr %i.p, %3
  br i1 %i.q, label %bb.l, label %.split18

bb.l:                                             ; preds = %bb.k
  %i.r = tail call i32 @aghtmlstr(ptr noundef %i.p) #12
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %.split18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = tail call fastcc ptr @agattr_(ptr noundef %.017, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, i1 noundef zeroext true)
  br label %agattr_.exit

.split18:                                         ; preds = %bb.l, %bb.k
  %i.t = tail call fastcc ptr @agattr_(ptr noundef %.017, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %3, i1 noundef zeroext false)
  br label %agattr_.exit

agattr_.exit:                                     ; preds = %bb.m, %bb.j, %switch.lookup, %bb.i, %bb.g, %.split18
  %.1 = phi ptr [ %i.s, %bb.m ], [ %i.t, %.split18 ], [ null, %bb.g ], [ %i.o, %bb.j ], [ null, %switch.lookup ], [ null, %bb.i ]
  ret ptr %.1
}

declare ptr @agopen(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare ptr @agstrbind_html(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @aghtmlstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @agnxtattr(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @aggetrec(ptr noundef %0, ptr noundef nonnull @DataDictName, i32 noundef 0) #12, !inline_history !36 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %agdictof.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 4
end_hunk_0
begin_hunk_1_@agcopyattr:bb.a
  %i.o = tail call ptr @aggetrec(ptr noundef nonnull %1, ptr noundef nonnull @AgDataRecName, i32 noundef 0) #12 ; 2 uses
  %.not.i26.peel = icmp eq ptr %i.o, null
  br i1 %.not.i26.peel, label %agnxtattr.exit.thread, label %agattrsym.exit.peel

agattrsym.exit.peel:                              ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  store ptr %i.n, ptr %i.g, align 8, !tbaa !15
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = call ptr %i.r(ptr noundef nonnull %i.q, ptr noundef nonnull %2, i32 noundef 4) #12, !inline_history !74 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not24.peel = icmp eq ptr %i.s, null
  br i1 %.not24.peel, label %agnxtattr.exit.thread, label %bb.c

bb.c:                                             ; preds = %agattrsym.exit.peel
  %i.t = call ptr @aggetrec(ptr noundef nonnull %0, ptr noundef nonnull @AgDataRecName, i32 noundef 0) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !48
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 7 uses
  %i.ab = call i32 @aghtmlstr(ptr noundef %i.aa) #12
  %.not25.peel = icmp eq i32 %i.ab, 0
  br i1 %.not25.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.s, ptr noundef %i.aa, i1 noundef zeroext true)
  br label %agxset.exit.peel

bb.e:                                             ; preds = %bb.c
  %.not.i28.peel = icmp eq ptr %i.aa, null
  br i1 %.not.i28.peel, label %.split.i.peel, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call ptr @agraphof(ptr noundef nonnull %1) #12
  %i.ad = call ptr @agstrbind_html(ptr noundef %i.ac, ptr noundef nonnull %i.aa) #12 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.aa
  br i1 %i.ae, label %bb.g, label %.split14.i.peel

bb.g:                                             ; preds = %bb.f
  %i.af = call i32 @aghtmlstr(ptr noundef %i.ad) #12
  %.not17.i.peel = icmp eq i32 %i.af, 0
  br i1 %.not17.i.peel, label %.split14.i.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.s, ptr noundef nonnull %i.aa, i1 noundef zeroext true)
  br label %agxset.exit.peel

.split14.i.peel:                                  ; preds = %bb.g, %bb.f
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.s, ptr noundef nonnull %i.aa, i1 noundef zeroext false)
  br label %agxset.exit.peel

.split.i.peel:                                    ; preds = %bb.e
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.s, ptr noundef null, i1 noundef zeroext false)
  br label %agxset.exit.peel

agxset.exit.peel:                                 ; preds = %.split.i.peel, %.split14.i.peel, %bb.h, %bb.d
  %i.ag = load i32, ptr %0, align 8
  %i.ah = call ptr @aggetrec(ptr noundef %i.a, ptr noundef nonnull @DataDictName, i32 noundef 0) #12, !inline_history !36 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.peel, label %agnxtattr.exit.thread, label %.peel.next

.peel.next:                                       ; preds = %agxset.exit.peel, %agxset.exit
  %i.ai = phi ptr [ %i.bk, %agxset.exit ], [ %i.ah, %agxset.exit.peel ]
  %i.aj = phi i32 [ %i.bj, %agxset.exit ], [ %i.ag, %agxset.exit.peel ]
  %.02034 = phi ptr [ %i.ao, %agxset.exit ], [ %i.l, %agxset.exit.peel ]
  %i.ak = and i32 %i.aj, 3
  %i.al = zext nneg i32 %i.ak to i64
  %switch.gep53 = getelementptr inbounds nuw i8, ptr @switch.table.agcopyattr.4, i64 %i.al
  %switch.load54 = load i8, ptr %switch.gep53, align 1
  %switch.ext55 = zext i8 %switch.load54 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %switch.ext55
  %.0.i.i = load ptr, ptr %i.am, align 8, !tbaa !44 ; 3 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %agnxtattr.exit.thread, label %agnxtattr.exit

agnxtattr.exit:                                   ; preds = %.peel.next
  %i.an = load ptr, ptr %.0.i.i, align 8, !tbaa !30
  %i.ao = call ptr %i.an(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %.02034, i32 noundef 8) #12, !inline_history !79 ; 4 uses
  %.not23 = icmp eq ptr %i.ao, null
  br i1 %.not23, label %agnxtattr.exit.thread, label %bb.i

bb.i:                                             ; preds = %agnxtattr.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = call ptr @aggetrec(ptr noundef nonnull %1, ptr noundef nonnull @AgDataRecName, i32 noundef 0) #12 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ar, null
  br i1 %.not.i26, label %agnxtattr.exit.thread, label %agattrsym.exit

agattrsym.exit:                                   ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false)
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !15
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30
  %i.av = call ptr %i.au(ptr noundef nonnull %i.at, ptr noundef nonnull %2, i32 noundef 4) #12, !inline_history !74 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not24 = icmp eq ptr %i.av, null
  br i1 %.not24, label %agnxtattr.exit.thread, label %bb.j

bb.j:                                             ; preds = %agattrsym.exit
  %i.aw = call ptr @aggetrec(ptr noundef nonnull %0, ptr noundef nonnull @AgDataRecName, i32 noundef 0) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !48
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49 ; 7 uses
  %i.be = call i32 @aghtmlstr(ptr noundef %i.bd) #12
  %.not25 = icmp eq i32 %i.be, 0
  br i1 %.not25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.av, ptr noundef %i.bd, i1 noundef zeroext true)
  br label %agxset.exit

bb.l:                                             ; preds = %bb.j
  %.not.i28 = icmp eq ptr %i.bd, null
  br i1 %.not.i28, label %.split.i, label %bb.m

.split.i:                                         ; preds = %bb.l
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.av, ptr noundef null, i1 noundef zeroext false)
  br label %agxset.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = call ptr @agraphof(ptr noundef nonnull %1) #12
  %i.bg = call ptr @agstrbind_html(ptr noundef %i.bf, ptr noundef nonnull %i.bd) #12 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.bd
  br i1 %i.bh, label %bb.n, label %.split14.i

bb.n:                                             ; preds = %bb.m
  %i.bi = call i32 @aghtmlstr(ptr noundef %i.bg) #12
  %.not17.i = icmp eq i32 %i.bi, 0
  br i1 %.not17.i, label %.split14.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.av, ptr noundef nonnull %i.bd, i1 noundef zeroext true)
  br label %agxset.exit

.split14.i:                                       ; preds = %bb.n, %bb.m
  call fastcc void @agxset_(ptr noundef nonnull %1, ptr noundef nonnull %i.av, ptr noundef nonnull %i.bd, i1 noundef zeroext false)
  br label %agxset.exit

agxset.exit:                                      ; preds = %.split14.i, %bb.o, %.split.i, %bb.k
  %i.bj = load i32, ptr %0, align 8
  %i.bk = call ptr @aggetrec(ptr noundef %i.a, ptr noundef nonnull @DataDictName, i32 noundef 0) #12, !inline_history !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %agnxtattr.exit.thread, label %.peel.next, !llvm.loop !80

agnxtattr.exit.thread:                            ; preds = %agattrsym.exit, %agnxtattr.exit, %.peel.next, %agxset.exit, %bb.i, %.lr.ph, %agnxtattr.exit.peel, %bb.b, %agattrsym.exit.peel, %agxset.exit.peel, %.preheader, %bb.a
  %.019 = phi i32 [ 1, %bb.a ], [ 1, %.preheader ], [ 1, %.lr.ph ], [ 1, %agnxtattr.exit.peel ], [ 1, %bb.b ], [ 1, %agattrsym.exit.peel ], [ 0, %agxset.exit.peel ], [ 1, %bb.i ], [ 1, %agattrsym.exit ], [ 0, %.peel.next ], [ 0, %agnxtattr.exit ], [ 0, %agxset.exit ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @agstrfree(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @agroot(ptr noundef) local_unnamed_addr #2

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @agstrdup_html(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agstrdup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dtsize(ptr noundef) local_unnamed_addr #2

declare i32 @agapply(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @addattr(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call ptr @aggetrec(ptr noundef %1, ptr noundef nonnull @AgDataRecName, i32 noundef 0) #12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = add nsw i64 %i.f, 1                      ; 4 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.4, i64 noundef range(i64 -2147483647, 2147483649) %i.g, i64 noundef 8) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = shl nsw i64 %i.f, 3
  %i.l = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.c) #12
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call ptr @realloc(ptr noundef %i.c, i64 noundef range(i64 0, 17179869185) %i.l) #17 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.5, i64 noundef range(i64 0, 17179869185) %i.l) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i64 0, ptr %i.r, align 1
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.n, %bb.g ]
  store ptr %.0.i.i, ptr %i.b, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = tail call i32 @aghtmlstr(ptr noundef %i.t) #12
  %.not = icmp eq i32 %i.u, 0
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %gv_recalloc.exit
  %i.w = tail call ptr @agstrdup_html(ptr noundef %0, ptr noundef %i.v) #12
  br label %bb.j

bb.i:                                             ; preds = %gv_recalloc.exit
  %i.x = tail call ptr @agstrdup(ptr noundef %0, ptr noundef %i.v) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.x, %bb.i ], [ %i.w, %bb.h ]
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.z = load i32, ptr %i.d, align 8, !tbaa !48
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  store ptr %.sink, ptr %i.ab, align 8, !tbaa !49
  ret void
}

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agfstout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @agmethod_upd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dtview(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #8 {
bb.a:
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @agbindrec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agdtopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @agcopydict(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = tail call ptr %i.a(ptr noundef nonnull %0, ptr noundef null, i32 noundef 128) #12 ; 2 uses
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %3 to i8
  br label %bb.b

._crit_edge:                                      ; preds = %agnewsym.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %agnewsym.exit
  %.021 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %agnewsym.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.021, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call i32 @aghtmlstr(ptr noundef %i.e) #12
  %i.g = getelementptr inbounds nuw i8, ptr %.021, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %i.l = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #14 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %gv_alloc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !50
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.5, i64 noundef 48) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.b
  %.not19 = icmp eq i32 %i.f, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i8 %i.c, ptr %i.p, align 4, !tbaa !52
  %i.q = tail call ptr @agstrdup(ptr noundef %2, ptr noundef %i.h) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !15
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %gv_alloc.exit.i
  %i.s = tail call ptr @agstrdup_html(ptr noundef %2, ptr noundef %i.i) #12
  br label %agnewsym.exit

bb.e:                                             ; preds = %gv_alloc.exit.i
  %i.t = tail call ptr @agstrdup(ptr noundef %2, ptr noundef %i.i) #12
  br label %agnewsym.exit

agnewsym.exit:                                    ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.k, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %2, ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.021, i64 38
  %i.z = load i8, ptr %i.y, align 2, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 38
  store i8 %i.z, ptr %i.aa, align 2, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %.021, i64 37
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 37
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !83
  %i.ae = load ptr, ptr %1, align 8, !tbaa !30
  %i.af = tail call ptr %i.ae(ptr noundef nonnull %1, ptr noundef nonnull %i.l, i32 noundef 1) #12 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !30
  %i.ah = tail call ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %.021, i32 noundef 8) #12 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !84
}

; Function Attrs: nounwind uwtable
define internal void @agraphattr_init_wrapper(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call void @agraphattr_init(ptr noundef %0)
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !14, i64 40}
!9 = !{!"Agsym_s", !10, i64 0, !13, i64 16, !13, i64 24, !5, i64 32, !6, i64 36, !6, i64 37, !6, i64 38, !14, i64 40}
!10 = !{!"dtlink_s_", !11, i64 0, !6, i64 8}
!11 = !{!"p1 _ZTS9dtlink_s_", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS8Agraph_s", !12, i64 0}
!15 = !{!9, !13, i64 16}
!16 = !{!9, !13, i64 24}
!17 = distinct !{null}
!18 = distinct !{ptr @agnodeattr_init, null}
end_hunk_1
