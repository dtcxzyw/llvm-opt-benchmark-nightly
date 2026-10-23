Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_resource_info?download=true
inline.NumInlined: 21
inline.NumDeleted: 3
begin_hunk_0_@slurm_sprint_cpu_bind_type:bb.a
  %endptr82 = getelementptr inbounds i8, ptr %0, i64 %strlen81
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr82, ptr noundef nonnull align 1 dereferenceable(5) @.str.15, i64 5, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.q = load i8, ptr %0, align 1
  %.not83 = icmp eq i8 %i.q, 0
  %strlen84 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %endptr85 = getelementptr i8, ptr %0, i64 %strlen84 ; 2 uses
  br i1 %.not83, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.r = getelementptr i8, ptr %endptr85, i64 -1
  store i8 0, ptr %i.r, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %endptr85, ptr noundef nonnull align 1 dereferenceable(12) @.str.16, i64 12, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj, %bb.ai
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_xstr_mem_bind_type(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  %i.b = and i32 %0, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i32 %0, 128
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = and i32 %0, 2
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.e = and i32 %0, 4
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.f = and i32 %0, 32
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.g = and i32 %0, 8
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.20) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.h = and i32 %0, 16
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #14
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  store i8 0, ptr %i.l, align 1
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.m = phi ptr [ %.pre, %bb.p ], [ null, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_xstrcat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local void @slurm_print_cpu_bind_help() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1512), align 8
  %i.b = tail call i32 @xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.73) #13
  %.not.i.not = icmp eq i32 %i.b, 0
  %str.str.1 = select i1 %.not.i.not, ptr @str, ptr @str.1
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.str.1) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @slurm_verify_cpu_bind(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 37 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1512), align 8
  %i.f = tail call i32 @xstrcmp(ptr noundef %i.e, ptr noundef nonnull @.str.73) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4
  %i.g = tail call ptr @xstrdup(ptr noundef %0) #13 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_isvalue.exit.thread, %bb.a
  %storemerge = phi ptr [ %i.g, %bb.a ], [ %i.x, %_isvalue.exit.thread ] ; 8 uses
  store ptr %storemerge, ptr %i.b, align 8
  %i.h = load i8, ptr %storemerge, align 1
  switch i8 %i.h, label %_isvalue.exit.thread [
    i8 0, label %.lr.ph.preheader
    i8 44, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %storemerge, i64 1 ; 2 uses
  %i.j = tail call ptr @__ctype_b_loc() #15
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i8, ptr %i.i, align 1
  %i.m = sext i8 %i.l to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, 2048
  %.not.i70 = icmp eq i16 %i.p, 0
  br i1 %.not.i70, label %.preheader.i, label %_isvalue.exit.thread

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.0.i = phi ptr [ %i.v, %.preheader.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.q = load i8, ptr %.0.i, align 1              ; 2 uses
  %i.r = sext i8 %i.q to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2
  %i.u = and i16 %i.t, 4096
  %.not7.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not7.i, label %_isvalue.exit, label %.preheader.i, !llvm.loop !0

_isvalue.exit:                                    ; preds = %.preheader.i
  switch i8 %i.q, label %bb.d [
    i8 44, label %_isvalue.exit.thread
    i8 0, label %_isvalue.exit.thread
  ]

bb.d:                                             ; preds = %_isvalue.exit
  store i8 59, ptr %storemerge, align 1
  %.pre = load ptr, ptr %i.b, align 8
  br label %_isvalue.exit.thread

_isvalue.exit.thread:                             ; preds = %_isvalue.exit, %_isvalue.exit, %bb.c, %bb.b, %bb.d
  %i.w = phi ptr [ %storemerge, %_isvalue.exit ], [ %storemerge, %_isvalue.exit ], [ %storemerge, %bb.c ], [ %storemerge, %bb.b ], [ %.pre, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  br label %bb.b, !llvm.loop !11

.lr.ph.preheader:                                 ; preds = %bb.b
  %.not.i.not = icmp eq i32 %i.f, 0
  %i.y = load ptr, ptr %i.a, align 8
  store ptr %i.y, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bl
  %.073 = phi i1 [ %.1, %bb.bl ], [ true, %.lr.ph.preheader ] ; 2 uses
  %i.z = call ptr @strsep(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.24) #13 ; 3 uses
  store ptr %i.z, ptr %i.c, align 8
  %.not59 = icmp eq ptr %i.z, null
  br i1 %.not59, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.aa = call i32 @xstrcasecmp(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.25) #13
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1512), align 8
  %i.ad = call i32 @xstrcmp(ptr noundef %i.ac, ptr noundef nonnull @.str.73) #13
  %.not.i.not.i = icmp eq i32 %i.ad, 0
  %str.str.1.i = select i1 %.not.i.not.i, ptr @str, ptr @str.1
  %puts1.i = call i32 @puts(ptr nonnull dereferenceable(1) %str.str.1.i) ; 0 uses
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.e
  %or.cond = select i1 %.not.i.not, i1 %.073, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @get_log_level() #13
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.26) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.1 = phi i1 [ %.073, %bb.g ], [ false, %bb.i ], [ false, %bb.h ]
  %i.ag = load ptr, ptr %i.c, align 8
  %i.ah = call i32 @xstrcasecmp(ptr noundef %i.ag, ptr noundef nonnull @.str.27) #13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = call i32 @xstrcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.28) #13
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = load i32, ptr %2, align 4
  %i.an = and i32 %i.am, -2
  store i32 %i.an, ptr %2, align 4
  br label %bb.bl

bb.m:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = call i32 @xstrcasecmp(ptr noundef %i.ao, ptr noundef nonnull @.str.29) #13
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.c, align 8
  %i.as = call i32 @xstrcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.30) #13
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = load i32, ptr %2, align 4
  %i.av = or i32 %i.au, 1
  store i32 %i.av, ptr %2, align 4
  br label %bb.bl

bb.p:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.c, align 8
  %i.ax = call i32 @xstrcasecmp(ptr noundef %i.aw, ptr noundef nonnull @.str.31) #13
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = load i32, ptr %2, align 4
  %i.ba = or i32 %i.az, 8192
  store i32 %i.ba, ptr %2, align 4
  br label %bb.bl

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = call i32 @xstrcasecmp(ptr noundef %i.bb, ptr noundef nonnull @.str.32) #13
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = call i32 @xstrcasecmp(ptr noundef %i.be, ptr noundef nonnull @.str.33) #13
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bh = load i32, ptr %2, align 4
  %i.bi = and i32 %i.bh, -4001
  %i.bj = or disjoint i32 %i.bi, 32
  store i32 %i.bj, ptr %2, align 4
  call void @slurm_xfree(ptr noundef %1) #13
  br label %bb.bl

bb.u:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.c, align 8
  %i.bl = call i32 @xstrcasecmp(ptr noundef %i.bk, ptr noundef nonnull @.str.34) #13
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bn = call i32 @get_log_level() #13
  %i.bo = icmp sgt i32 %i.bn, 2
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.35) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @slurm_xfree(ptr noundef %1) #13
  br label %bb.bl

bb.y:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %i.c, align 8
  %i.bq = call i32 @xstrncasecmp(ptr noundef %i.bp, ptr noundef nonnull @.str.36, i64 noundef 7) #13
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = load ptr, ptr %i.c, align 8
  %i.bt = call i32 @xstrncasecmp(ptr noundef %i.bs, ptr noundef nonnull @.str.37, i64 noundef 6) #13
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bv = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.38) #13 ; 0 uses
  %i.bw = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.38) #13 ; 3 uses
  %i.bx = load i32, ptr %2, align 4
  %i.by = and i32 %i.bx, -4001
  %i.bz = or disjoint i32 %i.by, 128
  store i32 %i.bz, ptr %2, align 4
  call void @slurm_xfree(ptr noundef %1) #13
  %.not67 = icmp eq ptr %i.bw, null
  br i1 %.not67, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load i8, ptr %i.bw, align 1
  %.not68 = icmp eq i8 %i.ca, 0
  br i1 %.not68, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = call fastcc ptr @_expand_mult(ptr noundef %i.bw, ptr noundef nonnull @.str.36, ptr noundef %i.d)
  store ptr %i.cb, ptr %1, align 8
  br label %bb.bl

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.cc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.39) #13 ; 0 uses
  br label %._crit_edge

bb.ae:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %i.c, align 8
  %i.ce = call i32 @xstrncasecmp(ptr noundef %i.cd, ptr noundef nonnull @.str.40, i64 noundef 8) #13
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = load ptr, ptr %i.c, align 8
  %i.ch = call i32 @xstrncasecmp(ptr noundef %i.cg, ptr noundef nonnull @.str.41, i64 noundef 7) #13
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cj = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.38) #13 ; 0 uses
  %i.ck = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.38) #13 ; 3 uses
  %i.cl = load i32, ptr %2, align 4
  %i.cm = and i32 %i.cl, -4001
  %i.cn = or disjoint i32 %i.cm, 256
  store i32 %i.cn, ptr %2, align 4
  call void @slurm_xfree(ptr noundef %1) #13
  %.not65 = icmp eq ptr %i.ck, null
  br i1 %.not65, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = load i8, ptr %i.ck, align 1
  %.not66 = icmp eq i8 %i.co, 0
  br i1 %.not66, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = call fastcc ptr @_expand_mult(ptr noundef %i.ck, ptr noundef nonnull @.str.40, ptr noundef %i.d)
  store ptr %i.cp, ptr %1, align 8
  br label %bb.bl

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.cq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.42) #13 ; 0 uses
  br label %._crit_edge

bb.ak:                                            ; preds = %bb.af
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = call i32 @xstrcasecmp(ptr noundef %i.cr, ptr noundef nonnull @.str.43) #13
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cu = load i32, ptr %2, align 4
  %i.cv = and i32 %i.cu, -4001
  %i.cw = or disjoint i32 %i.cv, 512
  store i32 %i.cw, ptr %2, align 4
  call void @slurm_xfree(ptr noundef %1) #13
  br label %bb.bl

bb.am:                                            ; preds = %bb.ak
  %i.cx = load ptr, ptr %i.c, align 8
  %i.cy = call i32 @xstrncasecmp(ptr noundef %i.cx, ptr noundef nonnull @.str.44, i64 noundef 8) #13
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.da = load ptr, ptr %i.c, align 8
  %i.db = call i32 @xstrncasecmp(ptr noundef %i.da, ptr noundef nonnull @.str.45, i64 noundef 7) #13
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dd = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.38) #13 ; 0 uses
  %i.de = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.38) #13 ; 3 uses
  %i.df = load i32, ptr %2, align 4
  %i.dg = and i32 %i.df, -4001
  %i.dh = or disjoint i32 %i.dg, 1024
  store i32 %i.dh, ptr %2, align 4
  call void @slurm_xfree(ptr noundef %1) #13
  %.not63 = icmp eq ptr %i.de, null
  br i1 %.not63, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.di = load i8, ptr %i.de, align 1
  %.not64 = icmp eq i8 %i.di, 0
end_hunk_0
