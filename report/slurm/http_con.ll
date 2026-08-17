inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@_on_header:bb.a

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i8 1, ptr %i.v, align 8
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.o, align 8
  %i.x = tail call i32 @xstrcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.15) #7
  %.not46 = icmp eq i32 %i.x, 0
  br i1 %.not46, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 121
  store i8 1, ptr %i.y, align 1
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @conmgr_con_get_name(ptr noundef %i.aa) #7
  %i.ac = load ptr, ptr %i.o, align 8
  tail call void (ptr, ...) @warning(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__._on_header, ptr noundef %i.ab, ptr noundef %i.ac) #7
  br label %bb.ae

bb.j:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = tail call i32 @xstrcasecmp(ptr noundef %i.ad, ptr noundef nonnull @.str.26) #7
  %.not47 = icmp eq i32 %i.ae, 0
  br i1 %.not47, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ag = and i64 %i.af, 1024
  %.not48 = icmp eq i64 %i.ag, 0
  br i1 %.not48, label %bb.ae, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 @get_log_level() #7
  %i.ai = icmp sgt i32 %i.ah, 3
  br i1 %i.ai, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call ptr @conmgr_con_get_name(ptr noundef %i.ak) #7
  %i.am = load ptr, ptr %i.o, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__._on_header, ptr noundef %i.al, ptr noundef %i.am) #7
  br label %bb.ae

bb.n:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %0, align 8
  %i.ao = tail call i32 @xstrcasecmp(ptr noundef %i.an, ptr noundef nonnull @.str.1) #7
  %.not49 = icmp eq i32 %i.ao, 0
  br i1 %.not49, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.ap) #7
  %i.aq = load ptr, ptr %i.o, align 8
  %i.ar = tail call ptr @xstrdup(ptr noundef %i.aq) #7
  store ptr %i.ar, ptr %i.ap, align 8
  br label %bb.ae

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %0, align 8
  %i.at = tail call i32 @xstrcasecmp(ptr noundef %i.as, ptr noundef nonnull @.str.16) #7
  %.not50 = icmp eq i32 %i.at, 0
  br i1 %.not50, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.au = load ptr, ptr %i.o, align 8
  %i.av = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.au, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a) #7
  %i.aw = icmp eq i32 %i.av, 1
  %i.ax = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  %or.cond.not = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.not, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i64 %i.ax, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.ba = call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12007) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.ae

bb.s:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = tail call i32 @xstrcasecmp(ptr noundef %i.bb, ptr noundef nonnull @.str.30) #7
  %.not53 = icmp eq i32 %i.bc, 0
  br i1 %.not53, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.bd) #7
  %i.be = load ptr, ptr %i.o, align 8
  %i.bf = tail call ptr @xstrdup(ptr noundef %i.be) #7
  store ptr %i.bf, ptr %i.bd, align 8
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = tail call i32 @xstrcasecmp(ptr noundef %i.bg, ptr noundef nonnull @.str.31) #7
  %.not54 = icmp eq i32 %i.bh, 0
  br i1 %.not54, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bi = load ptr, ptr %i.o, align 8
  %i.bj = tail call i32 @xstrcasecmp(ptr noundef %i.bi, ptr noundef nonnull @.str.32) #7
  %.not55 = icmp eq i32 %i.bj, 0
  br i1 %.not55, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 100, ptr %i.bk, align 4
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %i.bl = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12014) ; 0 uses
  br label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = tail call i32 @xstrcasecmp(ptr noundef %i.bm, ptr noundef nonnull @.str.33) #7
  %.not56 = icmp eq i32 %i.bn, 0
  br i1 %.not56, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12008) ; 0 uses
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bp = load ptr, ptr %0, align 8
  %i.bq = tail call i32 @xstrcasecmp(ptr noundef %i.bp, ptr noundef nonnull @.str.34) #7
  %.not57 = icmp eq i32 %i.bq, 0
  br i1 %.not57, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.br = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12013) ; 0 uses
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = tail call i32 @xstrcasecmp(ptr noundef %i.bs, ptr noundef nonnull @.str.35) #7
  %.not58 = icmp eq i32 %i.bt, 0
  br i1 %.not58, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12012) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.h, %bb.i, %bb.f, %bb.o, %bb.t, %bb.ac, %bb.w, %bb.k, %bb.m, %bb.l, %.thread, %bb.r, %bb.ad, %bb.ab, %bb.z, %bb.x
  %.1 = phi i32 [ 12007, %bb.r ], [ 12012, %bb.ad ], [ 12013, %bb.ab ], [ 12008, %bb.z ], [ 12014, %bb.x ], [ 0, %.thread ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %bb.w ], [ 0, %bb.ac ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @_on_headers_complete(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8
  switch i16 %i.b, label %.thread40 [
    i16 0, label %bb.b
    i16 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 170 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  %.not31 = icmp eq i16 %i.d, 0
  br i1 %.not31, label %bb.c, label %.thread40

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.f = and i64 %i.e, 1024
  %.not32 = icmp eq i64 %i.f, 0
  br i1 %.not32, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @get_log_level() #7
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @conmgr_con_get_name(ptr noundef %i.j) #7
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._on_headers_complete, ptr noundef %i.k) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  store i16 0, ptr %i.a, align 8
  store i16 9, ptr %i.c, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.l, align 1
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.n = load i16, ptr %i.m, align 2
  switch i16 %i.n, label %.thread40 [
    i16 0, label %bb.h
    i16 1, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.p = and i64 %i.o, 1024
  %.not35 = icmp eq i64 %i.p, 0
  br i1 %.not35, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @get_log_level() #7
  %i.r = icmp sgt i32 %i.q, 3
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call ptr @conmgr_con_get_name(ptr noundef %i.t) #7
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__._on_headers_complete, ptr noundef %i.u) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load i8, ptr %i.v, align 8, !range !8, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.r, label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.z = and i64 %i.y, 1024
  %.not34 = icmp eq i64 %i.z, 0
  br i1 %.not34, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call i32 @get_log_level() #7
  %i.ab = icmp sgt i32 %i.aa, 3
  br i1 %i.ab, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call ptr @conmgr_con_get_name(ptr noundef %i.ad) #7
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__._on_headers_complete, ptr noundef %i.ae) #7
  br label %bb.q

.thread40:                                        ; preds = %bb.g, %bb.a, %bb.b
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ag = and i64 %i.af, 1024
  %.not33 = icmp eq i64 %i.ag, 0
  br i1 %.not33, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.thread40
  %i.ah = tail call i32 @get_log_level() #7
  %i.ai = icmp sgt i32 %i.ah, 3
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call ptr @conmgr_con_get_name(ptr noundef %i.ak) #7
  %i.am = load i16, ptr %i.a, align 8
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__._on_headers_complete, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %i.aq) #7
  br label %bb.q

bb.q:                                             ; preds = %.thread40, %bb.p, %bb.o, %bb.l, %bb.n, %bb.m, %bb.k, %bb.f
  %.sink44 = phi i64 [ 120, %bb.f ], [ 120, %bb.l ], [ 121, %bb.k ], [ 120, %bb.m ], [ 120, %bb.n ], [ 120, %bb.o ], [ 120, %bb.p ], [ 120, %.thread40 ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %.thread40 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sink44
  store i8 %.sink, ptr %i.ar, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %i.as = load i16, ptr %i.a, align 8
  %.not36 = icmp eq i16 %i.as, 0
  br i1 %.not36, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.au = load i16, ptr %i.at, align 2
  %.not37 = icmp eq i16 %i.au, 0
  br i1 %.not37, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = icmp eq i32 %i.aw, 2
  br i1 %i.ax, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = icmp slt i64 %i.az, 1
  br i1 %i.ba, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bb = tail call fastcc i32 @_send_reject(ptr noundef nonnull %0, i32 noundef 12017) ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %.not38 = icmp eq i32 %i.bd, 0
  br i1 %.not38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = tail call i32 @http_con_send_response(ptr noundef nonnull %0, i32 noundef %i.bd, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.s, %bb.x, %bb.v
  %.0 = phi i32 [ 12017, %bb.v ], [ %i.be, %bb.x ], [ 0, %bb.s ], [ 0, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_on_content(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 5 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 16
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @conmgr_con_get_name(ptr noundef %i.j) #7
  tail call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.c, i64 noundef %i.f, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._on_content, ptr noundef %i.k) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %.not46 = icmp eq ptr %i.m, null
  br i1 %.not46, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call ptr @conmgr_con_get_name(ptr noundef %i.o) #7
  %i.q = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__._on_content, ptr noundef %i.p) #7 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, %i.f                       ; 2 uses
  %i.x = icmp ugt i64 %i.w, 52428800
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12016) ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  %i.ac = icmp ugt i64 %i.w, %i.aa
  %or.cond = and i1 %i.ab, %i.ac
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12018) ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not48 = icmp eq ptr %i.af, null
  br i1 %.not48, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @try_init_buf(i32 noundef 16384) #7 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8
  %.not49 = icmp eq ptr %i.ag, null
  br i1 %.not49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef 12) ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ai = phi ptr [ %i.ag, %bb.k ], [ %i.af, %bb.j ]
  %i.aj = add i32 %i.e, 1
  %i.ak = tail call i32 @try_grow_buf_remaining(ptr noundef nonnull %i.ai, i32 noundef %i.aj) #7 ; 3 uses
  %.not50 = icmp eq i32 %i.ak, 0
  br i1 %.not50, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call fastcc i32 @_send_reject(ptr noundef nonnull %1, i32 noundef %i.ak) ; 0 uses
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.c, i64 %i.f, i1 false)
  %i.at = load ptr, ptr %i.ae, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add i32 %i.av, %i.e
  store i32 %i.aw, ptr %i.au, align 4
  %i.ax = load i64, ptr %i.u, align 8
  %i.ay = add i64 %i.ax, %i.f
  store i64 %i.ay, ptr %i.u, align 8
  %i.az = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bi = and i64 %i.bh, 1024
  %.not51 = icmp eq i64 %i.bi, 0
  br i1 %.not51, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call i32 @get_log_level() #7
  %i.bk = icmp sgt i32 %i.bj, 3
  br i1 %i.bk, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call ptr @conmgr_con_get_name(ptr noundef %i.bm) #7
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = load i64, ptr %i.bq, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__._on_content, ptr noundef %i.bn, i64 noundef %i.f, i64 noundef %i.bp, i64 noundef %i.br) #7
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.n, %bb.i, %bb.g, %bb.p, %bb.r, %bb.q, %bb.d
  %.1 = phi i32 [ 12010, %bb.d ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 12, %bb.l ], [ %i.ak, %bb.n ], [ 12018, %bb.i ], [ 12016, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @_on_content_complete(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.c, %i.f
end_hunk_0
