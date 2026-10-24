Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/linenoise?download=true
inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@refreshLine:bb.a
  %i.b = alloca [64 x i8], align 16               ; 21 uses
  %3 = alloca %struct.abuf, align 8               ; 14 uses
  %i.c = load i32, ptr @mlmode, align 4, !tbaa !10
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %sext.i = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 3 uses
  %i.m = add i64 %i.l, %i.h                       ; 2 uses
  %i.n = add i64 %i.j, -1
  %i.o = add i64 %i.n, %i.m
  %i.p = udiv i64 %i.o, %i.l                      ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !50
  %i.t = add i64 %i.s, %i.m
  %i.u = udiv i64 %i.t, %i.l
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  %i.y = trunc i64 %i.x to i32                    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ab = icmp sgt i32 %i.q, %i.y
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %sext67.i = shl i64 %i.p, 32
  %i.ac = ashr exact i64 %sext67.i, 32
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !34
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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !47

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
  store ptr %i.bf, ptr %3, align 8, !tbaa !27
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
  store ptr %i.br, ptr %3, align 8, !tbaa !27
  store i32 %i.bp, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit75.i

abAppend.exit75.i:                                ; preds = %bb.i, %abAppend.exit74.i
  %.promoted100.i = phi i32 [ %i.bk, %abAppend.exit74.i ], [ %i.bp, %bb.i ] ; 6 uses
  %.promoted98.i = phi ptr [ %i.bl, %abAppend.exit74.i ], [ %i.br, %bb.i ] ; 4 uses
  %.b.i = load i1, ptr @maskmode, align 4
  br i1 %.b.i, label %.preheader.i, label %bb.k

.preheader.i:                                     ; preds = %abAppend.exit75.i
  %i.bw = load i64, ptr %i.i, align 8, !tbaa !22
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
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !22
  %i.ck = icmp ugt i64 %i.cj, %i.ci
  br i1 %i.ck, label %.lr.ph103.i, label %abAppend.exit77.i.sink.split, !llvm.loop !48

bb.k:                                             ; preds = %abAppend.exit75.i
  %.b.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b.i.i, label %bb.l, label %refreshSearchResult.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24
  call void @searchInHistory(ptr dead_on_unwind nonnull writable sret(%struct.linenoiseHistorySearchResult) align 8 %2, ptr noundef %i.cm) #29
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = load i32, ptr %2, align 8               ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %.not23.i.i = select i1 %i.cp, i1 true, i1 %i.cr ; 2 uses
  %.b20.i.i = load i1, ptr @cycle_to_next_search, align 4
  %or.cond.not.i.i = select i1 %.b20.i.i, i1 %.not23.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i1 false, ptr @cycle_to_next_search, align 4
  br label %.critedge.i.i

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  store i1 false, ptr @cycle_to_next_search, align 4
  %i.cs = add i32 %i.cq, -4072
  %i.ct = icmp ult i32 %i.cs, -4096
  %or.cond.not25.i.i = select i1 %.not23.i.i, i1 true, i1 %i.ct
  br i1 %or.cond.not25.i.i, label %.critedge.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !38 ; 4 uses
  %i.cx = add nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cy) #30 ; 4 uses
  %i.da = load i32, ptr %i.cu, align 4, !tbaa !39 ; 3 uses
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
  store i32 %i.cw, ptr @search_result_start_offset, align 4, !tbaa !10
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %refreshSearchResult.exit.i

refreshSearchResult.exit.i:                       ; preds = %.critedge.i.i, %bb.k
  %char0.i = load i8, ptr @search_result, align 16
  %.not.i = icmp eq i8 %char0.i, 0
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %refreshSearchResult.exit.i
  %i.dq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @search_result_friendly) #25 ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = add nsw i32 %.promoted100.i, %i.dr      ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = tail call ptr @realloc(ptr noundef %.promoted98.i, i64 noundef %i.dt) #27 ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %abAppend.exit77.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = sext i32 %.promoted100.i to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %sext86.i = shl i64 %i.dq, 32
  %i.dy = ashr exact i64 %sext86.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 16 @search_result_friendly, i64 %i.dy, i1 false)
  br label %abAppend.exit77.i.sink.split

bb.r:                                             ; preds = %refreshSearchResult.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !24
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add nsw i32 %.promoted100.i, %i.ec      ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = tail call ptr @realloc(ptr noundef %.promoted98.i, i64 noundef %i.ee) #27 ; 3 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %abAppend.exit77.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = sext i32 %.promoted100.i to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 %i.eh
  %sext87.i = shl i64 %i.eb, 32
  %i.ej = ashr exact i64 %sext87.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr readonly align 1 %i.ea, i64 %i.ej, i1 false)
  br label %abAppend.exit77.i.sink.split

abAppend.exit77.i.sink.split:                     ; preds = %abAppend.exit76.i, %.preheader.i, %bb.q, %bb.s
  %.lcssa99.i.sink = phi ptr [ %i.du, %bb.q ], [ %i.ef, %bb.s ], [ %.promoted98.i, %.preheader.i ], [ %i.cg, %abAppend.exit76.i ]
  %.lcssa101.i.sink = phi i32 [ %i.ds, %bb.q ], [ %i.ed, %bb.s ], [ %.promoted100.i, %.preheader.i ], [ %i.cf, %abAppend.exit76.i ]
  store ptr %.lcssa99.i.sink, ptr %3, align 8
  store i32 %.lcssa101.i.sink, ptr %i.ad, align 8
  br label %abAppend.exit77.i

abAppend.exit77.i:                                ; preds = %abAppend.exit77.i.sink.split, %bb.r, %bb.p
  call void @refreshShowHints(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef %i.g) #29
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !30 ; 3 uses
  %.not68.i = icmp eq i64 %i.el, 0
  br i1 %.not68.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %abAppend.exit77.i
  %i.em = load i64, ptr %i.i, align 8, !tbaa !22
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.eo = add i64 %i.el, %i.h
  %i.ep = load i64, ptr %i.k, align 8, !tbaa !23
  %i.eq = urem i64 %i.eo, %i.ep
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.es = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !28 ; 3 uses
  %i.eu = add nsw i32 %i.et, 1                    ; 3 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = tail call ptr @realloc(ptr noundef %i.es, i64 noundef %i.ev) #27 ; 4 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %abAppend.exit79.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = sext i32 %i.et to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey
  store i8 10, ptr %i.ez, align 1
  store ptr %i.ew, ptr %3, align 8, !tbaa !27
  store i32 %i.eu, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit79.i

abAppend.exit79.i:                                ; preds = %bb.w, %bb.v
  %i.fa = phi i32 [ %i.et, %bb.v ], [ %i.eu, %bb.w ] ; 2 uses
  %i.fb = phi ptr [ %i.es, %bb.v ], [ %i.ew, %bb.w ]
  store i16 13, ptr %i.b, align 16
  %i.fc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = add nsw i32 %i.fa, %i.fd                ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = tail call ptr @realloc(ptr noundef %i.fb, i64 noundef %i.ff) #27 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %abAppend.exit80.i, label %bb.x

bb.x:                                             ; preds = %abAppend.exit79.i
  %i.fi = sext i32 %i.fa to i64
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 %i.fi
  %sext88.i = shl i64 %i.fc, 32
  %i.fk = ashr exact i64 %sext88.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull readonly align 16 %i.b, i64 %i.fk, i1 false)
  store ptr %i.fg, ptr %3, align 8, !tbaa !27
  store i32 %i.fe, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit80.i

abAppend.exit80.i:                                ; preds = %bb.x, %abAppend.exit79.i
  %i.fl = add nsw i32 %i.q, 1                     ; 3 uses
  %i.fm = load i64, ptr %i.w, align 8, !tbaa !34
  %i.fn = trunc i64 %i.fm to i32
  %.not69.i = icmp slt i32 %i.q, %i.fn
  br i1 %.not69.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %abAppend.exit80.i
  %i.fo = sext i32 %i.fl to i64
  store i64 %i.fo, ptr %i.w, align 8, !tbaa !34
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %abAppend.exit80.i, %bb.u, %bb.t, %abAppend.exit77.i
  %.061.i = phi i32 [ %i.fl, %bb.y ], [ %i.fl, %abAppend.exit80.i ], [ %i.q, %bb.u ], [ %i.q, %bb.t ], [ %i.q, %abAppend.exit77.i ]
  %i.fp = load i64, ptr %i.ek, align 8, !tbaa !30
  %i.fq = add i64 %i.fp, %i.h
  %i.fr = load i64, ptr %i.k, align 8, !tbaa !23  ; 2 uses
  %i.fs = add i64 %i.fq, %i.fr
  %i.ft = udiv i64 %i.fs, %i.fr
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = sub nsw i32 %.061.i, %i.fu              ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %bb.aa, label %abAppend.exit81.i

bb.aa:                                            ; preds = %bb.z
  %i.fx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 64, ptr noundef nonnull @.str.17, i32 noundef %i.fv) #24 ; 0 uses
  %i.fy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = load ptr, ptr %3, align 8, !tbaa !27
  %i.gb = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %i.gc = add nsw i32 %i.gb, %i.fz                ; 2 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = tail call ptr @realloc(ptr noundef %i.ga, i64 noundef %i.gd) #27 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %abAppend.exit81.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = sext i32 %i.gb to i64
  %i.gh = getelementptr inbounds i8, ptr %i.ge, i64 %i.gg
  %sext89.i = shl i64 %i.fy, 32
  %i.gi = ashr exact i64 %sext89.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gh, ptr nonnull readonly align 16 %i.b, i64 %i.gi, i1 false)
  store ptr %i.ge, ptr %3, align 8, !tbaa !27
  store i32 %i.gc, ptr %i.ad, align 8, !tbaa !28
  br label %abAppend.exit81.i

abAppend.exit81.i:                                ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gj = load i64, ptr %i.ek, align 8, !tbaa !30
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = add nsw i32 %i.gk, %i.g
  %i.gm = load i64, ptr %i.k, align 8, !tbaa !23
  %i.gn = trunc i64 %i.gm to i32
  %i.go = srem i32 %i.gl, %i.gn
  %char070.i = load i8, ptr @search_result, align 16
  %.not71.i = icmp eq i8 %char070.i, 0
  %i.gp = load i32, ptr @search_result_start_offset, align 4
  %i.gq = select i1 %.not71.i, i32 0, i32 %i.gp
  %.060.i = add nsw i32 %i.gq, %i.go              ; 2 uses
  %.not72.i = icmp eq i32 %.060.i, 0
  br i1 %.not72.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %abAppend.exit81.i
  %i.gr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 64, ptr noundef nonnull @.str.18, i32 noundef %.060.i) #24 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %abAppend.exit81.i
  store i16 13, ptr %i.b, align 16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.gs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 2 uses
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.gv = load i32, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %i.gw = add nsw i32 %i.gv, %i.gt
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = tail call ptr @realloc(ptr noundef %i.gu, i64 noundef %i.gx) #27 ; 3 uses
  %i.gz = icmp eq ptr %i.gy, null
  %.pre.i = sext i32 %i.gv to i64                 ; 2 uses
  br i1 %i.gz, label %refreshMultiLine.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %.pre.i
  %sext90.i = shl i64 %i.gs, 32
  %i.hb = ashr exact i64 %sext90.i, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull readonly align 16 %i.b, i64 %i.hb, i1 false)
  br label %refreshMultiLine.exit

refreshMultiLine.exit:                            ; preds = %bb.ae, %bb.af
  %.pre-phi.i = phi i64 [ %i.gx, %bb.af ], [ %.pre.i, %bb.ae ]
  %i.hc = phi ptr [ %i.gy, %bb.af ], [ %i.gu, %bb.ae ] ; 2 uses
end_hunk_0
