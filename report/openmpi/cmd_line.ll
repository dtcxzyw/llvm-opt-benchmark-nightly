Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/cmd_line?download=true
inline.NumInlined: 63
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@set_dest:bb.a
  %i.av = sext i8 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !81
  %i.ay = and i16 %i.ax, 2048
  %.not48 = icmp ne i16 %i.ay, 0
  %.not49 = icmp eq i8 %i.au, 45
  %or.cond69 = or i1 %.not49, %.not48
  br i1 %or.cond69, label %bb.o, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.16, i64 77, i64 1, ptr %i.az) #25 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite50 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 63, i64 1, ptr %i.ba) #25 ; 0 uses
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 44, i64 1, ptr %i.bb) #25 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %.not52 = icmp eq ptr %i.bd, null
  br i1 %.not52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #23 ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !22  ; 2 uses
  %.not53 = icmp eq i8 %i.bh, 0
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = sext i8 %i.bh to i32
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.20, i32 noundef %i.bi) #23 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 20, i64 1, ptr %i.bl) #25 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !77
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.22, ptr noundef nonnull %1) #23 ; 0 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite55 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 63, i64 1, ptr %i.bo) #25 ; 0 uses
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite56 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 77, i64 1, ptr %i.bp) #25 ; 0 uses
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !77
  %fwrite57 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 77, i64 1, ptr %i.bq) #25 ; 0 uses
  br label %bb.x

._crit_edge:                                      ; preds = %bb.o, %.preheader70
  store i64 %i.c, ptr %i.j, align 8, !tbaa !98
  br label %bb.x

bb.w:                                             ; preds = %bb.e
  store i8 1, ptr %i.j, align 1, !tbaa !54
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %bb.e, %bb.w, %._crit_edge, %._crit_edge74, %bb.f, %bb.v, %bb.n
  %.040 = phi i32 [ -43, %bb.v ], [ -43, %bb.n ], [ 0, %bb.f ], [ 0, %._crit_edge74 ], [ 0, %._crit_edge ], [ 0, %bb.w ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define noalias ptr @opal_cmd_line_get_usage_msg(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca [153 x i8], align 16              ; 38 uses
  %i.d = alloca [152 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #20 ; 0 uses
  store i32 0, ptr %i.a, align 4, !tbaa !34
  store ptr null, ptr %i.b, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.h = load volatile i64, ptr %i.g, align 8, !tbaa !50
  %i.i = shl i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #22 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load volatile ptr, ptr %i.n, align 8, !tbaa !63 ; 2 uses
  %.not141 = icmp eq ptr %i.o, %i.m
  br i1 %.not141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.094143 = phi ptr [ %i.s, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %.0101142 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.p = add i64 %.0101142, 1                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0101142
  store ptr %.094143, ptr %i.q, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %.094143, i64 16
  %i.s = load volatile ptr, ptr %i.r, align 8, !tbaa !53 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0101.lcssa = phi i64 [ 0, %bb.c ], [ %i.p, %.lr.ph ]
  tail call void @qsort(ptr noundef nonnull %i.j, i64 noundef %.0101.lcssa, i64 noundef 8, ptr noundef nonnull @qsort_callback) #20
  %i.t = tail call ptr @opal_cmd_line_get_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.v = tail call ptr @opal_cmd_line_get_param(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0.i = phi ptr [ %i.v, %bb.d ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.w = icmp eq ptr %.0.i, null
  %spec.store.select.i = select i1 %i.w, ptr @.str.27, ptr %.0.i ; 12 uses
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(6) @.str.28) #21
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %get_help_otype.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(7) @.str.29) #21
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %get_help_otype.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(6) @.str.30) #21
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %get_help_otype.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(8) @.str.31) #21
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %get_help_otype.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(8) @.str.32) #21
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %get_help_otype.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(8) @.str.33) #21
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %get_help_otype.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(6) @.str.34) #21
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %get_help_otype.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(14) @.str.35) #21
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %get_help_otype.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(7) @.str.36) #21
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %get_help_otype.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(4) @.str.37) #21
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %get_help_otype.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(8) @.str.27) #21
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %get_help_otype.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i, ptr noundef nonnull dereferenceable(9) @.str.38) #21
  %i.au = icmp eq i32 %i.at, 0
  %spec.select = select i1 %i.au, i32 12, i32 13
  br label %get_help_otype.exit

get_help_otype.exit:                              ; preds = %bb.p, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.016.i = phi i32 [ %spec.select, %bb.p ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ], [ 9, %bb.m ], [ 10, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %i.av = load volatile i64, ptr %i.g, align 8, !tbaa !50
  %.not160 = icmp eq i64 %i.av, 0
  br i1 %.not160, label %._crit_edge159.thread, label %.lr.ph158

.lr.ph158:                                        ; preds = %get_help_otype.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 25 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph158, %bb.aq
  %.0100157 = phi i64 [ 0, %.lr.ph158 ], [ %i.gb, %bb.aq ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0100157
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82 ; 11 uses
  switch i32 %.016.i, label %bb.u [
    i32 12, label %bb.r
    i32 13, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !22
  %i.bd = sext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 72 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bh, i32 noundef %i.bj, ptr noundef %i.bl) #20
  %i.bn = sext i32 %i.bm to i64                   ; 3 uses
  %i.bo = call noalias ptr @malloc(i64 noundef %i.bn) #22 ; 6 uses
  %i.bp = load i8, ptr %i.bb, align 8, !tbaa !22  ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bt = load i32, ptr %i.bi, align 8, !tbaa !66
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bo, i64 noundef %i.bn, ptr noundef nonnull @.str.40, ptr noundef %i.br, ptr noundef %i.bs, i32 noundef %i.bt, ptr noundef %i.bu) #20 ; 0 uses
  br label %.sink.split.sink.split

bb.t:                                             ; preds = %bb.r
  %i.bw = sext i8 %i.bp to i32
  %i.bx = load ptr, ptr %i.be, align 8, !tbaa !26
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !27
  %i.bz = load i32, ptr %i.bi, align 8, !tbaa !66
  %i.ca = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.cb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.bo, i64 noundef %i.bn, ptr noundef nonnull @.str.39, i32 noundef %i.bw, ptr noundef %i.bx, ptr noundef %i.by, i32 noundef %i.bz, ptr noundef %i.ca) #20 ; 0 uses
  br label %.sink.split.sink.split

bb.u:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !25
  %i.ce = icmp eq i32 %i.cd, %.016.i
  br i1 %i.ce, label %bb.v, label %bb.aq

bb.v:                                             ; preds = %bb.q, %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 72 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !23
  %.not117 = icmp eq ptr %i.cg, null
  br i1 %.not117, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(153) %i.c, i8 0, i64 153, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !22  ; 2 uses
  %.not118 = icmp ne i8 %i.ci, 0                  ; 4 uses
  %storemerge188 = select i1 %.not118, i8 45, i8 32
  %storemerge = select i1 %.not118, i8 %i.ci, i8 32
  store i8 %storemerge188, ptr %i.c, align 16, !tbaa !64
  store i8 %storemerge, ptr %i.aw, align 1, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !26
  %.not119 = icmp eq ptr %i.ck, null
  br i1 %.not119, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = select i1 %.not118, i8 124, i8 32
  store i8 %i.cl, ptr %i.ax, align 2, !tbaa !64
  %i.cm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.cn = sub i64 152, %i.cm
  %i.co = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull @.str.10, i64 noundef %i.cn) #20 ; 0 uses
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !26
  %i.cq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.cr = sub i64 152, %i.cq
  %i.cs = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef %i.cp, i64 noundef %i.cr) #20 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi i1 [ true, %bb.x ], [ %.not118, %bb.w ]
  %1 = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %2 = load ptr, ptr %1, align 8, !tbaa !27
  %.not120 = icmp eq ptr %2, null
  br i1 %.not120, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.cu = sub i64 152, %i.ct
  %.str.11..str.12 = select i1 %.1, ptr @.str.11, ptr @.str.12
  %i.cv = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull %.str.11..str.12, i64 noundef %i.cu) #20 ; 0 uses
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.cx = sub i64 152, %i.cw
  %i.cy = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull @.str.4, i64 noundef %i.cx) #20 ; 0 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !27
  %i.da = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.db = sub i64 152, %i.da
  %i.dc = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef %i.cz, i64 noundef %i.db) #20 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.de = sub i64 152, %i.dd
  %i.df = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull @.str.12, i64 noundef %i.de) #20 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !66
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %bb.aa, %.lr.ph146
  %.1102144 = phi i32 [ %i.dn, %.lr.ph146 ], [ 0, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.dj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 152, ptr noundef nonnull @.str.13, i32 noundef %.1102144) #20 ; 0 uses
  %i.dk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.dl = sub i64 152, %i.dk
  %i.dm = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull %i.d, i64 noundef %i.dl) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.dn = add nuw nsw i32 %.1102144, 1            ; 2 uses
  %i.do = load i32, ptr %i.dg, align 8, !tbaa !66 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, %i.dn
  br i1 %i.dp, label %.lr.ph146, label %._crit_edge147, !llvm.loop !100

._crit_edge147:                                   ; preds = %.lr.ph146
  %i.dq = icmp sgt i32 %i.do, 0
  br i1 %i.dq, label %bb.ab, label %._crit_edge147.thread

bb.ab:                                            ; preds = %._crit_edge147
  %i.dr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.ds = sub i64 152, %i.dr
  %i.dt = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull @.str.12, i64 noundef %i.ds) #20 ; 0 uses
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %bb.aa, %bb.ab, %._crit_edge147
  %i.du = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21 ; 4 uses
  %i.dv = icmp ugt i64 %i.du, 25
  br i1 %i.dv, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %._crit_edge147.thread
  %.not161 = icmp eq i64 %i.du, 25
  br i1 %.not161, label %._crit_edge151, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.du
  %i.dw = sub nuw nsw i64 25, %i.du
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 32, i64 %i.dw, i1 false), !tbaa !64
  br label %._crit_edge151

bb.ac:                                            ; preds = %._crit_edge147.thread
  %i.dx = call i32 @opal_argv_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #20 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.c, i8 32, i64 25, i1 false)
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %.preheader, %.lr.ph150.preheader, %bb.ac
  store i8 0, ptr %i.ay, align 1, !tbaa !64
  %i.dy = load ptr, ptr %i.cf, align 8, !tbaa !23
  %i.dz = call noalias ptr @strdup(ptr noundef %i.dy) #20 ; 7 uses
  %.not125 = icmp eq ptr %i.dz, null
  br i1 %.not125, label %.thread127, label %bb.ad

.thread127:                                       ; preds = %._crit_edge151
  call void @free(ptr noundef nonnull %i.j) #20
  %i.ea = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.e) #20 ; 0 uses
  %i.eb = call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.14) #20
  br label %bb.at

bb.ad:                                            ; preds = %._crit_edge151
  %i.ec = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dz) #21 ; 4 uses
  %i.ed = tail call ptr @__ctype_b_loc() #24      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec ; 2 uses
  %i.ef = icmp samesign ugt i64 %i.ec, 51
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ap, %bb.ad
  %.097 = phi ptr [ %i.dz, %bb.ad ], [ %.4, %bb.ap ]
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !79 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.198 = phi ptr [ %.097, %bb.ae ], [ %i.ep, %bb.af ] ; 15 uses
  %i.eh = load i8, ptr %.198, align 1, !tbaa !64
  %i.ei = sext i8 %i.eh to i64
  %i.ej = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !81
  %i.el = and i16 %i.ek, 8192
  %i.em = icmp ne i16 %i.el, 0
  %i.en = icmp ult ptr %.198, %i.ee               ; 2 uses
  %i.eo = select i1 %i.em, i1 %i.en, i1 false
  %i.ep = getelementptr inbounds nuw i8, ptr %.198, i64 1
  br i1 %i.eo, label %bb.af, label %bb.ag, !llvm.loop !101

bb.ag:                                            ; preds = %bb.af
  br i1 %i.en, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.eq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.198) #21
  %i.er = icmp ult i64 %i.eq, 51
  br i1 %i.er, label %.loopexit130.sink.split, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %.198, i64 51
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ak
  %.095152 = phi ptr [ %i.es, %bb.ai ], [ %i.fd, %bb.ak ] ; 4 uses
  %i.et = load i8, ptr %.095152, align 1, !tbaa !64
  %i.eu = sext i8 %i.et to i64
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !81
  %i.ex = and i16 %i.ew, 8192
  %.not122 = icmp eq i16 %i.ex, 0
  br i1 %.not122, label %bb.ak, label %.loopexit129.thread

.loopexit129.thread:                              ; preds = %bb.aj
  store i8 0, ptr %.095152, align 1, !tbaa !64
  %i.ey = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.ez = sub i64 152, %i.ey
  %i.fa = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull %.198, i64 noundef %i.ez) #20 ; 0 uses
  %i.fb = call i32 @opal_argv_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #20 ; 0 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.095152, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.c, i8 32, i64 25, i1 false)
  store i8 0, ptr %i.ay, align 1, !tbaa !64
  br label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.fd = getelementptr inbounds i8, ptr %.095152, i64 -1 ; 3 uses
  %i.fe = icmp ugt ptr %i.fd, %.198
  br i1 %i.fe, label %bb.aj, label %.loopexit129, !llvm.loop !102

.loopexit129:                                     ; preds = %bb.ak
  %i.ff = icmp eq ptr %i.fd, %.198
  br i1 %i.ff, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.loopexit129
  %i.fg = getelementptr inbounds nuw i8, ptr %.198, i64 51 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.198, i64 %i.ec
  br i1 %i.ef, label %.lr.ph155, label %.loopexit

.lr.ph155:                                        ; preds = %bb.al
  %i.fi = load ptr, ptr %i.ed, align 8, !tbaa !79
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph155, %bb.ao
  %.196153 = phi ptr [ %i.fg, %.lr.ph155 ], [ %i.ft, %bb.ao ] ; 5 uses
  %i.fj = load i8, ptr %.196153, align 1, !tbaa !64
  %i.fk = sext i8 %i.fj to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.fi, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !81
  %i.fn = and i16 %i.fm, 8192
  %.not123 = icmp eq i16 %i.fn, 0
  br i1 %.not123, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 0, ptr %.196153, align 1, !tbaa !64
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.fp = sub i64 152, %i.fo
  %i.fq = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull %.198, i64 noundef %i.fp) #20 ; 0 uses
  %i.fr = call i32 @opal_argv_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #20 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.196153, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %i.c, i8 32, i64 25, i1 false)
  store i8 0, ptr %i.ay, align 1, !tbaa !64
  br label %.loopexit

bb.ao:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %.196153, i64 1 ; 3 uses
  %i.fu = icmp ult ptr %i.ft, %i.fh
  br i1 %i.fu, label %bb.am, label %.loopexit, !llvm.loop !103

.loopexit:                                        ; preds = %bb.ao, %bb.al, %bb.an
  %.196140 = phi ptr [ %.196153, %bb.an ], [ %i.fg, %bb.al ], [ %i.ft, %bb.ao ]
  %.3 = phi ptr [ %i.fs, %bb.an ], [ %.198, %bb.al ], [ %.198, %bb.ao ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.3, i64 %i.ec
  %.not124 = icmp ult ptr %.196140, %i.fv
  br i1 %.not124, label %bb.ap, label %.loopexit130.sink.split

bb.ap:                                            ; preds = %.loopexit129.thread, %.loopexit129, %.loopexit
  %.4 = phi ptr [ %.198, %.loopexit129 ], [ %.3, %.loopexit ], [ %i.fc, %.loopexit129.thread ] ; 2 uses
  %i.fw = icmp ult ptr %.4, %i.ee
  br i1 %i.fw, label %bb.ae, label %.sink.split, !llvm.loop !104

.loopexit130.sink.split:                          ; preds = %.loopexit, %bb.ah
  %.198.lcssa.lcssa194.sink = phi ptr [ %.198, %bb.ah ], [ %.3, %.loopexit ]
  %i.fx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.fy = sub i64 152, %i.fx
  %i.fz = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef %.198.lcssa.lcssa194.sink, i64 noundef %i.fy) #20 ; 0 uses
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.t, %bb.s, %.loopexit130.sink.split
  %.sink202 = phi ptr [ %i.c, %.loopexit130.sink.split ], [ %i.bo, %bb.s ], [ %i.bo, %bb.t ]
  %.sink.ph = phi ptr [ %i.dz, %.loopexit130.sink.split ], [ %i.bo, %bb.s ], [ %i.bo, %bb.t ]
  %i.ga = call i32 @opal_argv_append(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %.sink202) #20 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.ap, %.sink.split.sink.split
  %.sink = phi ptr [ %.sink.ph, %.sink.split.sink.split ], [ %i.dz, %bb.ap ], [ %i.dz, %bb.ag ]
  call void @free(ptr noundef %.sink) #20
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.v, %bb.u
  %i.gb = add nuw i64 %.0100157, 1                ; 2 uses
  %i.gc = load volatile i64, ptr %i.g, align 8, !tbaa !50
  %i.gd = icmp ult i64 %i.gb, %i.gc
end_hunk_0
