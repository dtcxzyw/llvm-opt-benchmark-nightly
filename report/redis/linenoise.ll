inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@linenoiseEditInsert:bb.a
  br i1 %or.cond, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.b = load i1, ptr @maskmode, align 4
  %i.ac = select i1 %.b, i8 42, i8 %1
  store i8 %i.ac, ptr %i.a, align 1, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.af = call i64 @write(i32 noundef %i.ae, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %.not37 = icmp eq i64 %i.af, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br i1 %.not37, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = sub i64 %i.c, %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 %1, ptr %i.al, align 1, !tbaa !25
  %i.am = load i64, ptr %i.b, align 8, !tbaa !21
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.b, align 8, !tbaa !21
  %i.ao = load i64, ptr %i.g, align 8, !tbaa !30
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !30
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  store i8 0, ptr %i.ar, align 1, !tbaa !25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.f
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ -1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @refreshLine(ptr nofree noundef captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %1 = alloca %struct.abuf, align 8               ; 9 uses
  %2 = alloca %struct.linenoiseHistorySearchResult, align 8 ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 21 uses
  %3 = alloca %struct.abuf, align 8               ; 14 uses
  %i.c = load i32, ptr @mlmode, align 4, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = add i64 %i.l, %i.h                       ; 2 uses
  %i.n = add i64 %i.j, -1
  %i.o = add i64 %i.n, %i.m
  %i.p = udiv i64 %i.o, %i.l                      ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %i.t = add i64 %i.s, %i.m
  %i.u = udiv i64 %i.t, %i.l
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !35
  %i.y = trunc i64 %i.x to i32                    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ab = icmp sgt i32 %i.q, %i.y
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sext67.i = shl i64 %i.p, 32
  %i.ac = ashr exact i64 %sext67.i, 32
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.ae = sub nsw i32 %i.y, %i.v                  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %abAppend.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 64, ptr noundef nonnull @.str.12, i32 noundef %i.ae) #24 ; 0 uses
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %sext83.i = shl i64 %i.ah, 32
  %i.ai = ashr exact i64 %sext83.i, 32            ; 2 uses
  %malloc.i = tail call ptr @malloc(i64 %i.ai)    ; 3 uses
  %i.aj = icmp eq ptr %malloc.i, null
  br i1 %i.aj, label %abAppend.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = trunc i64 %i.ah to i32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %malloc.i, ptr nonnull readonly align 16 %i.b, i64 %i.ai, i1 false)
  br label %abAppend.exit.i

abAppend.exit.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  %.promoted94.i = phi i32 [ %i.ak, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.promoted.i = phi ptr [ %malloc.i, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.al = icmp sgt i32 %i.y, 1
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %abAppend.exit.i
  %i.am = add nsw i32 %i.y, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %abAppend.exit73.i, %.lr.ph.preheader.i
  %.05996.i = phi i32 [ %i.ba, %abAppend.exit73.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.an = phi ptr [ %i.az, %abAppend.exit73.i ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ao = phi i32 [ %i.ay, %abAppend.exit73.i ], [ %.promoted94.i, %.lr.ph.preheader.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.b, ptr noundef nonnull align 1 dereferenceable(10) @.str.13, i64 10, i1 false)
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add nsw i32 %i.ao, %i.aq                ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.as) #27 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %abAppend.exit73.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.av = sext i32 %i.ao to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av
  %sext91.i = shl i64 %i.ap, 32
  %i.ax = ashr exact i64 %sext91.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aw, ptr nonnull readonly align 16 %i.b, i64 %i.ax, i1 false)
  br label %abAppend.exit73.i

abAppend.exit73.i:                                ; preds = %bb.g, %.lr.ph.i
  %i.ay = phi i32 [ %i.ao, %.lr.ph.i ], [ %i.ar, %bb.g ] ; 2 uses
  %i.az = phi ptr [ %i.an, %.lr.ph.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.ba = add nuw nsw i32 %.05996.i, 1
  %exitcond.not.i = icmp eq i32 %.05996.i, %i.am
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %abAppend.exit73.i, %abAppend.exit.i
  %.lcssa95.i = phi i32 [ %.promoted94.i, %abAppend.exit.i ], [ %i.ay, %abAppend.exit73.i ] ; 4 uses
  %.lcssa.i = phi ptr [ %.promoted.i, %abAppend.exit.i ], [ %i.az, %abAppend.exit73.i ] ; 3 uses
  store ptr %.lcssa.i, ptr %3, align 8
  store i32 %.lcssa95.i, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.14, i64 6, i1 false)
  %i.bb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add nsw i32 %.lcssa95.i, %i.bc          ; 3 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = tail call ptr @realloc(ptr noundef %.lcssa.i, i64 noundef %i.be) #27 ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %abAppend.exit74.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bh = sext i32 %.lcssa95.i to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh
  %sext84.i = shl i64 %i.bb, 32
  %i.bj = ashr exact i64 %sext84.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 16 %i.b, i64 %i.bj, i1 false)
  store ptr %i.bf, ptr %3, align 8, !tbaa !26
  store i32 %i.bd, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit74.i

abAppend.exit74.i:                                ; preds = %bb.h, %._crit_edge.i
  %i.bk = phi i32 [ %.lcssa95.i, %._crit_edge.i ], [ %i.bd, %bb.h ] ; 3 uses
  %i.bl = phi ptr [ %.lcssa.i, %._crit_edge.i ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !33  ; 2 uses
  %i.bn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #25 ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = add nsw i32 %i.bk, %i.bo                ; 3 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call ptr @realloc(ptr noundef %i.bl, i64 noundef %i.bq) #27 ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %abAppend.exit75.i, label %bb.i

bb.i:                                             ; preds = %abAppend.exit74.i
  %i.bt = sext i32 %i.bk to i64
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt
  %sext85.i = shl i64 %i.bn, 32
  %i.bv = ashr exact i64 %sext85.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.bm, i64 %i.bv, i1 false)
  store ptr %i.br, ptr %3, align 8, !tbaa !26
  store i32 %i.bp, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit75.i

abAppend.exit75.i:                                ; preds = %bb.i, %abAppend.exit74.i
  %.promoted100.i = phi i32 [ %i.bk, %abAppend.exit74.i ], [ %i.bp, %bb.i ] ; 5 uses
  %.promoted98.i = phi ptr [ %i.bl, %abAppend.exit74.i ], [ %i.br, %bb.i ] ; 4 uses
  %.b.i = load i1, ptr @maskmode, align 4
  br i1 %.b.i, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %abAppend.exit75.i
  %i.bw = load i64, ptr %i.i, align 8, !tbaa !21
  %.not106.i = icmp eq i64 %i.bw, 0
  br i1 %.not106.i, label %abAppend.exit77.i.sink.split, label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %.preheader.i, %abAppend.exit76.i
  %.0102.i = phi i32 [ %i.ch, %abAppend.exit76.i ], [ 0, %.preheader.i ]
  %i.bx = phi ptr [ %i.cg, %abAppend.exit76.i ], [ %.promoted98.i, %.preheader.i ] ; 2 uses
  %i.by = phi i32 [ %i.cf, %abAppend.exit76.i ], [ %.promoted100.i, %.preheader.i ] ; 3 uses
  %i.bz = add nsw i32 %i.by, 1                    ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call ptr @realloc(ptr noundef %i.bx, i64 noundef %i.ca) #27 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %abAppend.exit76.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph103.i
  %i.cd = sext i32 %i.by to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 %i.cd
  store i8 42, ptr %i.ce, align 1
  br label %abAppend.exit76.i

abAppend.exit76.i:                                ; preds = %bb.j, %.lr.ph103.i
  %i.cf = phi i32 [ %i.by, %.lr.ph103.i ], [ %i.bz, %bb.j ] ; 2 uses
  %i.cg = phi ptr [ %i.bx, %.lr.ph103.i ], [ %i.cb, %bb.j ] ; 2 uses
  %i.ch = add i32 %.0102.i, 1                     ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !21
  %i.ck = icmp ugt i64 %i.cj, %i.ci
  br i1 %i.ck, label %.lr.ph103.i, label %abAppend.exit77.i.sink.split, !llvm.loop !38

bb.k:                                             ; preds = %abAppend.exit75.i
  %.b.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b.i.i, label %bb.l, label %refreshSearchResult.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24
  call void @searchInHistory(ptr dead_on_unwind nonnull writable sret(%struct.linenoiseHistorySearchResult) align 8 %2, ptr noundef %i.cm) #29
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !39 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = load i32, ptr %2, align 8               ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %.not23.i.i = select i1 %i.cp, i1 true, i1 %i.cr ; 2 uses
  %.b20.i.i = load i1, ptr @cycle_to_next_search, align 4
  %or.cond.not.i.i = select i1 %.b20.i.i, i1 %.not23.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i1 false, ptr @cycle_to_next_search, align 4
  %i.cs = add i32 %i.cq, -4072
  %i.ct = icmp ult i32 %i.cs, -4096
  %or.cond.not25.i.i = select i1 %.not23.i.i, i1 true, i1 %i.ct
  br i1 %or.cond.not25.i.i, label %.critedge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !41 ; 4 uses
  %i.cx = add nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cy) #30 ; 4 uses
  %i.da = load i32, ptr %i.cu, align 4, !tbaa !42 ; 3 uses
  %i.db = add nsw i32 %i.da, 1
  %i.dc = sext i32 %i.db to i64
  %i.dd = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.dc) #30 ; 4 uses
  %i.de = add i32 %i.cw, %i.da
  %i.df = sub i32 %i.cq, %i.de                    ; 2 uses
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.dh) #30 ; 4 uses
  %i.dj = sext i32 %i.cw to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr nonnull align 1 %i.co, i64 %i.dj, i1 false)
  %i.dk = getelementptr inbounds i8, ptr %i.co, i64 %i.dj ; 2 uses
  %i.dl = sext i32 %i.da to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.dk, i64 %i.dl, i1 false)
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 %i.dl
  %i.dn = sext i32 %i.df to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %i.dm, i64 %i.dn, i1 false)
  %i.do = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @search_result, ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %i.cz, ptr noundef %i.dd, ptr noundef %i.di) #24 ; 0 uses
  %i.dp = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @search_result_friendly, ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull @.str.2, ptr noundef %i.cz, ptr noundef nonnull @.str.19, ptr noundef %i.dd, ptr noundef nonnull @.str.2, ptr noundef %i.di) #24 ; 0 uses
  tail call void @free(ptr noundef %i.cz) #24
  tail call void @free(ptr noundef %i.dd) #24
  tail call void @free(ptr noundef %i.di) #24
  store i32 %i.cw, ptr @search_result_start_offset, align 4, !tbaa !7
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %refreshSearchResult.exit.i

refreshSearchResult.exit.i:                       ; preds = %.critedge.i.i, %bb.k
  %char0.i = load i8, ptr @search_result, align 16
  %.not.i = icmp eq i8 %char0.i, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %refreshSearchResult.exit.i
  %i.dq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @search_result_friendly) #25 ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = add nsw i32 %.promoted100.i, %i.dr      ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = tail call ptr @realloc(ptr noundef %.promoted98.i, i64 noundef %i.dt) #27 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %abAppend.exit77.i, label %bb.r

bb.q:                                             ; preds = %refreshSearchResult.exit.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !24
  %i.dy = load i64, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add nsw i32 %.promoted100.i, %i.dz      ; 2 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = tail call ptr @realloc(ptr noundef %.promoted98.i, i64 noundef %i.eb) #27 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %abAppend.exit77.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink56 = phi ptr [ %i.du, %bb.p ], [ %i.ec, %bb.q ] ; 2 uses
  %.sink55 = phi i64 [ %i.dq, %bb.p ], [ %i.dy, %bb.q ]
  %.sink53 = phi ptr [ @search_result_friendly, %bb.p ], [ %i.dx, %bb.q ]
  %.lcssa101.sink.i.ph = phi i32 [ %i.ds, %bb.p ], [ %i.ea, %bb.q ]
  %i.ee = sext i32 %.promoted100.i to i64
  %i.ef = getelementptr inbounds i8, ptr %.sink56, i64 %i.ee
  %sext87.i = shl i64 %.sink55, 32
  %i.eg = ashr exact i64 %sext87.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr align 1 %.sink53, i64 %i.eg, i1 false)
  br label %abAppend.exit77.i.sink.split

abAppend.exit77.i.sink.split:                     ; preds = %abAppend.exit76.i, %bb.r, %.preheader.i
  %.lcssa99.sink.i = phi ptr [ %.promoted98.i, %.preheader.i ], [ %.sink56, %bb.r ], [ %i.cg, %abAppend.exit76.i ]
  %.lcssa101.sink.i = phi i32 [ %.promoted100.i, %.preheader.i ], [ %.lcssa101.sink.i.ph, %bb.r ], [ %i.cf, %abAppend.exit76.i ]
  store ptr %.lcssa99.sink.i, ptr %3, align 8
  store i32 %.lcssa101.sink.i, ptr %i.ad, align 8
  br label %abAppend.exit77.i

abAppend.exit77.i:                                ; preds = %abAppend.exit77.i.sink.split, %bb.q, %bb.p
  call void @refreshShowHints(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef %i.g) #29
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !30 ; 3 uses
  %.not68.i = icmp eq i64 %i.ei, 0
  br i1 %.not68.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %abAppend.exit77.i
  %i.ej = load i64, ptr %i.i, align 8, !tbaa !21
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.el = add i64 %i.ei, %i.h
  %i.em = load i64, ptr %i.k, align 8, !tbaa !23
  %i.en = urem i64 %i.el, %i.em
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ep = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.eq = load i32, ptr %i.ad, align 8, !tbaa !28 ; 3 uses
  %i.er = add nsw i32 %i.eq, 1                    ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = tail call ptr @realloc(ptr noundef %i.ep, i64 noundef %i.es) #27 ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %abAppend.exit79.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = sext i32 %i.eq to i64
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 %i.ev
  store i8 10, ptr %i.ew, align 1
  store ptr %i.et, ptr %3, align 8, !tbaa !26
  store i32 %i.er, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit79.i

abAppend.exit79.i:                                ; preds = %bb.v, %bb.u
  %i.ex = phi i32 [ %i.eq, %bb.u ], [ %i.er, %bb.v ] ; 2 uses
  %i.ey = phi ptr [ %i.ep, %bb.u ], [ %i.et, %bb.v ]
  store i16 13, ptr %i.b, align 16
  %i.ez = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add nsw i32 %i.ex, %i.fa                ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = tail call ptr @realloc(ptr noundef %i.ey, i64 noundef %i.fc) #27 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %abAppend.exit80.i, label %bb.w

bb.w:                                             ; preds = %abAppend.exit79.i
  %i.ff = sext i32 %i.ex to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 %i.ff
  %sext88.i = shl i64 %i.ez, 32
  %i.fh = ashr exact i64 %sext88.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull readonly align 16 %i.b, i64 %i.fh, i1 false)
  store ptr %i.fd, ptr %3, align 8, !tbaa !26
  store i32 %i.fb, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit80.i

abAppend.exit80.i:                                ; preds = %bb.w, %abAppend.exit79.i
  %i.fi = add nsw i32 %i.q, 1                     ; 3 uses
  %i.fj = load i64, ptr %i.w, align 8, !tbaa !35
  %i.fk = trunc i64 %i.fj to i32
  %.not69.i = icmp slt i32 %i.q, %i.fk
  br i1 %.not69.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %abAppend.exit80.i
  %i.fl = sext i32 %i.fi to i64
  store i64 %i.fl, ptr %i.w, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %abAppend.exit80.i, %bb.t, %bb.s, %abAppend.exit77.i
  %.060.i = phi i32 [ %i.fi, %bb.x ], [ %i.fi, %abAppend.exit80.i ], [ %i.q, %bb.t ], [ %i.q, %bb.s ], [ %i.q, %abAppend.exit77.i ]
  %i.fm = load i64, ptr %i.eh, align 8, !tbaa !30
  %i.fn = add i64 %i.fm, %i.h
  %i.fo = load i64, ptr %i.k, align 8, !tbaa !23  ; 2 uses
  %i.fp = add i64 %i.fn, %i.fo
  %i.fq = udiv i64 %i.fp, %i.fo
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = sub nsw i32 %.060.i, %i.fr              ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %bb.z, label %abAppend.exit81.i

bb.z:                                             ; preds = %bb.y
  %i.fu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 64, ptr noundef nonnull @.str.17, i32 noundef %i.fs) #24 ; 0 uses
  %i.fv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = load ptr, ptr %3, align 8, !tbaa !26
  %i.fy = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %i.fz = add nsw i32 %i.fy, %i.fw                ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %i.gb = tail call ptr @realloc(ptr noundef %i.fx, i64 noundef %i.ga) #27 ; 3 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %abAppend.exit81.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = sext i32 %i.fy to i64
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 %i.gd
  %sext89.i = shl i64 %i.fv, 32
  %i.gf = ashr exact i64 %sext89.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ge, ptr nonnull readonly align 16 %i.b, i64 %i.gf, i1 false)
  store ptr %i.gb, ptr %3, align 8, !tbaa !26
  store i32 %i.fz, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit81.i

abAppend.exit81.i:                                ; preds = %bb.aa, %bb.z, %bb.y
  %i.gg = load i64, ptr %i.eh, align 8, !tbaa !30
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, %i.g
  %i.gj = load i64, ptr %i.k, align 8, !tbaa !23
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = srem i32 %i.gi, %i.gk
  %char070.i = load i8, ptr @search_result, align 16
  %.not71.i = icmp eq i8 %char070.i, 0
  %i.gm = load i32, ptr @search_result_start_offset, align 4
  %i.gn = select i1 %.not71.i, i32 0, i32 %i.gm
  %.061.i = add nsw i32 %i.gn, %i.gl              ; 2 uses
  %.not72.i = icmp eq i32 %.061.i, 0
  br i1 %.not72.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %abAppend.exit81.i
  %i.go = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 64, ptr noundef nonnull @.str.18, i32 noundef %.061.i) #24 ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %abAppend.exit81.i
  store i16 13, ptr %i.b, align 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.gs = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %i.gt = add nsw i32 %i.gs, %i.gq
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = tail call ptr @realloc(ptr noundef %i.gr, i64 noundef %i.gu) #27 ; 3 uses
  %i.gw = icmp eq ptr %i.gv, null
  %.pre.i = sext i32 %i.gs to i64                 ; 2 uses
  br i1 %i.gw, label %refreshMultiLine.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 %.pre.i
  %sext90.i = shl i64 %i.gp, 32
  %i.gy = ashr exact i64 %sext90.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull readonly align 16 %i.b, i64 %i.gy, i1 false)
  br label %refreshMultiLine.exit

refreshMultiLine.exit:                            ; preds = %bb.ad, %bb.ae
  %.pre-phi.i = phi i64 [ %i.gu, %bb.ae ], [ %.pre.i, %bb.ad ]
  %i.gz = phi ptr [ %i.gv, %bb.ae ], [ %i.gr, %bb.ad ] ; 2 uses
  %i.ha = load i64, ptr %i.eh, align 8, !tbaa !30
  store i64 %i.ha, ptr %i.r, align 8, !tbaa !34
  %i.hb = tail call i64 @write(i32 noundef %i.aa, ptr noundef %i.gz, i64 noundef %.pre-phi.i) #24 ; 0 uses
  tail call void @free(ptr noundef %i.gz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.an

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !33  ; 3 uses
  %i.hd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hc) #25 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !32
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !21 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !23 ; 3 uses
  %i.ho = add i64 %i.hl, %i.hd                    ; 5 uses
  %.not38.i = icmp ult i64 %i.ho, %i.hn
  br i1 %.not38.i, label %.preheader36.i, label %.lr.ph.preheader.i2

.lr.ph.preheader.i2:                              ; preds = %bb.af
  %i.hp = add i64 %i.ho, -1
  %i.hq = add i64 %i.hn, -1
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.hp, i64 %i.hq) ; 3 uses
  %i.hr = sub i64 %i.ho, %umin.i
  %scevgep.i = getelementptr i8, ptr %i.hh, i64 %i.hr
  %i.hs = sub i64 %i.hj, %i.ho
  %i.ht = add i64 %i.hs, %umin.i
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.lr.ph.preheader.i2, %bb.af
  %.025.lcssa.i = phi ptr [ %i.hh, %bb.af ], [ %scevgep.i, %.lr.ph.preheader.i2 ]
  %.024.lcssa.i = phi i64 [ %i.hj, %bb.af ], [ %i.ht, %.lr.ph.preheader.i2 ]
  %.lcssa37.i = phi i64 [ %i.ho, %bb.af ], [ %umin.i, %.lr.ph.preheader.i2 ]
  %i.hu = add i64 %.024.lcssa.i, %i.hd
  %umin57.i = tail call i64 @llvm.umin.i64(i64 %i.hn, i64 %i.hu)
  %i.hv = sub i64 %umin57.i, %i.hd                ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !26
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.hw, align 8, !tbaa !28
  store i16 13, ptr %i.a, align 16
  %i.hx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %sext.i3 = shl i64 %i.hx, 32
  %i.hy = ashr exact i64 %sext.i3, 32             ; 2 uses
  %malloc.i4 = tail call ptr @malloc(i64 %i.hy)   ; 5 uses
  %i.hz = icmp eq ptr %malloc.i4, null
  br i1 %i.hz, label %abAppend.exit.i5, label %bb.ag

bb.ag:                                            ; preds = %.preheader36.i
  %i.ia = trunc i64 %i.hx to i32                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %malloc.i4, ptr nonnull readonly align 16 %i.a, i64 %i.hy, i1 false)
  store ptr %malloc.i4, ptr %1, align 8, !tbaa !26
  store i32 %i.ia, ptr %i.hw, align 8, !tbaa !28
  br label %abAppend.exit.i5

abAppend.exit.i5:                                 ; preds = %bb.ag, %.preheader36.i
  %i.ib = phi i32 [ 0, %.preheader36.i ], [ %i.ia, %bb.ag ] ; 3 uses
  %i.ic = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hc) #25 ; 2 uses
  %i.id = trunc i64 %i.ic to i32
  %i.ie = add nsw i32 %i.ib, %i.id                ; 3 uses
  %i.if = sext i32 %i.ie to i64
  %i.ig = tail call ptr @realloc(ptr noundef %malloc.i4, i64 noundef %i.if) #27 ; 4 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %abAppend.exit27.i, label %bb.ah

bb.ah:                                            ; preds = %abAppend.exit.i5
  %i.ii = sext i32 %i.ib to i64
  %i.ij = getelementptr inbounds i8, ptr %i.ig, i64 %i.ii
  %sext32.i = shl i64 %i.ic, 32
  %i.ik = ashr exact i64 %sext32.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 1 %i.hc, i64 %i.ik, i1 false)
  store ptr %i.ig, ptr %1, align 8, !tbaa !26
  store i32 %i.ie, ptr %i.hw, align 8, !tbaa !28
  br label %abAppend.exit27.i

abAppend.exit27.i:                                ; preds = %bb.ah, %abAppend.exit.i5
  %.promoted46.i = phi i32 [ %i.ib, %abAppend.exit.i5 ], [ %i.ie, %bb.ah ] ; 4 uses
  %.promoted.i6 = phi ptr [ %malloc.i4, %abAppend.exit.i5 ], [ %i.ig, %bb.ah ] ; 3 uses
  %.b.i7 = load i1, ptr @maskmode, align 4
  br i1 %.b.i7, label %.preheader.i10, label %bb.aj

.preheader.i10:                                   ; preds = %abAppend.exit27.i
  %.not2648.i = icmp eq i64 %i.hv, 0
  br i1 %.not2648.i, label %abAppend.exit29.i.sink.split, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.preheader.i10, %abAppend.exit28.i
  %.249.i = phi i64 [ %i.in, %abAppend.exit28.i ], [ %i.hv, %.preheader.i10 ]
  %i.il = phi ptr [ %i.iv, %abAppend.exit28.i ], [ %.promoted.i6, %.preheader.i10 ] ; 2 uses
  %i.im = phi i32 [ %i.iu, %abAppend.exit28.i ], [ %.promoted46.i, %.preheader.i10 ] ; 3 uses
  %i.in = add i64 %.249.i, -1                     ; 2 uses
  %i.io = add nsw i32 %i.im, 1                    ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = tail call ptr @realloc(ptr noundef %i.il, i64 noundef %i.ip) #27 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %abAppend.exit28.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph50.i
  %i.is = sext i32 %i.im to i64
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 %i.is
  store i8 42, ptr %i.it, align 1
  br label %abAppend.exit28.i

abAppend.exit28.i:                                ; preds = %bb.ai, %.lr.ph50.i
  %i.iu = phi i32 [ %i.im, %.lr.ph50.i ], [ %i.io, %bb.ai ] ; 2 uses
  %i.iv = phi ptr [ %i.il, %.lr.ph50.i ], [ %i.iq, %bb.ai ] ; 2 uses
  %.not26.i = icmp eq i64 %i.in, 0
  br i1 %.not26.i, label %abAppend.exit29.i.sink.split, label %.lr.ph50.i, !llvm.loop !43

bb.aj:                                            ; preds = %abAppend.exit27.i
  %i.iw = trunc i64 %i.hv to i32
  %i.ix = add nsw i32 %.promoted46.i, %i.iw       ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = tail call ptr @realloc(ptr noundef %.promoted.i6, i64 noundef %i.iy) #27 ; 3 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %abAppend.exit29.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jb = sext i32 %.promoted46.i to i64
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 %i.jb
  %sext33.i = shl i64 %i.hv, 32
  %i.jd = ashr exact i64 %sext33.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr readonly align 1 %.025.lcssa.i, i64 %i.jd, i1 false)
  br label %abAppend.exit29.i.sink.split

abAppend.exit29.i.sink.split:                     ; preds = %abAppend.exit28.i, %bb.ak, %.preheader.i10
  %.lcssa45.i.sink = phi ptr [ %i.iz, %bb.ak ], [ %.promoted.i6, %.preheader.i10 ], [ %i.iv, %abAppend.exit28.i ]
  %.lcssa47.i.sink = phi i32 [ %i.ix, %bb.ak ], [ %.promoted46.i, %.preheader.i10 ], [ %i.iu, %abAppend.exit28.i ]
  store ptr %.lcssa45.i.sink, ptr %1, align 8
  store i32 %.lcssa47.i.sink, ptr %i.hw, align 8
  br label %abAppend.exit29.i

abAppend.exit29.i:                                ; preds = %abAppend.exit29.i.sink.split, %bb.aj
  %i.je = trunc i64 %i.hd to i32
  call void @refreshShowHints(ptr noundef nonnull %1, ptr noundef readonly %0, i32 noundef %i.je) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %i.jf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.ji = load i32, ptr %i.hw, align 8, !tbaa !28 ; 3 uses
  %i.jj = add nsw i32 %i.ji, %i.jg                ; 2 uses
  %i.jk = sext i32 %i.jj to i64                   ; 2 uses
  %i.jl = tail call ptr @realloc(ptr noundef %i.jh, i64 noundef %i.jk) #27 ; 3 uses
  %i.jm = icmp eq ptr %i.jl, null
  %.pre = sext i32 %i.ji to i64                   ; 2 uses
  br i1 %i.jm, label %abAppend.exit30.i, label %bb.al

bb.al:                                            ; preds = %abAppend.exit29.i
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %.pre
  %sext34.i = shl i64 %i.jf, 32
  %i.jo = ashr exact i64 %sext34.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr nonnull readonly align 16 %i.a, i64 %i.jo, i1 false)
  br label %abAppend.exit30.i

abAppend.exit30.i:                                ; preds = %abAppend.exit29.i, %bb.al
  %.pre.i8.pre-phi = phi i64 [ %i.jk, %bb.al ], [ %.pre, %abAppend.exit29.i ] ; 2 uses
  %i.jp = phi i32 [ %i.jj, %bb.al ], [ %i.ji, %abAppend.exit29.i ]
  %i.jq = phi ptr [ %i.jl, %bb.al ], [ %i.jh, %abAppend.exit29.i ] ; 2 uses
  %i.jr = trunc i64 %.lcssa37.i to i32
  %i.js = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.18, i32 noundef %i.jr) #24 ; 0 uses
  %i.jt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 2 uses
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = add nsw i32 %i.jp, %i.ju
  %i.jw = sext i32 %i.jv to i64                   ; 2 uses
  %i.jx = tail call ptr @realloc(ptr noundef %i.jq, i64 noundef %i.jw) #27 ; 3 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %refreshSingleLine.exit, label %bb.am

bb.am:                                            ; preds = %abAppend.exit30.i
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 %.pre.i8.pre-phi
  %sext35.i = shl i64 %i.jt, 32
  %i.ka = ashr exact i64 %sext35.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jz, ptr nonnull readonly align 16 %i.a, i64 %i.ka, i1 false)
  br label %refreshSingleLine.exit

refreshSingleLine.exit:                           ; preds = %abAppend.exit30.i, %bb.am
  %.pre-phi.i9 = phi i64 [ %i.jw, %bb.am ], [ %.pre.i8.pre-phi, %abAppend.exit30.i ]
  %i.kb = phi ptr [ %i.jx, %bb.am ], [ %i.jq, %abAppend.exit30.i ] ; 2 uses
  %i.kc = tail call i64 @write(i32 noundef %i.hf, ptr noundef %i.kb, i64 noundef %.pre-phi.i9) #24 ; 0 uses
  tail call void @free(ptr noundef %i.kb) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.an

bb.an:                                            ; preds = %refreshSingleLine.exit, %refreshMultiLine.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveLeft(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveRight(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.b, 1
  store i64 %i.e, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveHome(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditMoveEnd(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  tail call fastcc void @refreshLine(ptr noundef nonnull %0) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local void @linenoiseEditHistoryNext(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @history_len, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @history, align 8, !tbaa !44 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.a, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.j) #24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = tail call noalias ptr @strdup(ptr noundef %i.l) #24
  %i.n = load i32, ptr @history_len, align 4, !tbaa !7 ; 4 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.p = xor i32 %i.o, -1
  %i.q = add i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.r
  store ptr %i.m, ptr %i.s, align 8, !tbaa !19
  %i.t = icmp eq i32 %1, 1
  %i.u = select i1 %i.t, i32 1, i32 -1
  %i.v = add nsw i32 %i.o, %i.u                   ; 4 uses
  store i32 %i.v, ptr %i.d, align 8, !tbaa !45
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !45
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not = icmp slt i32 %i.v, %i.n
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.n, -1
  store i32 %i.x, ptr %i.d, align 8, !tbaa !45
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.z = xor i32 %i.v, -1
  %i.aa = add nsw i32 %i.n, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.ag = tail call ptr @strncpy(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af) #24 ; 0 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !29
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
end_hunk_0
